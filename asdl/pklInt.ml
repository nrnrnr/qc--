(* overflow??? *)
let write_int x s =
  let sign = if x < 0 then -1 else 1 in
  let set_continue x =  x lor 0x80 in
  let set_neg x =  x lor 0x40 in
  let nibble x =  x land 0x7f  in
  let rest x =  x lsr 7  in
  let finish sign x =  
    if sign = -1 then (set_neg x)	
    else x in
  let rec loop x =
    if x > 63 then begin
      output_byte s  (set_continue (nibble x));
      loop(rest x)
    end else output_byte s (finish sign x) 
  in loop (abs x)
    
let read_int s =
  let is_continue_bit_set x = (x land 0x80) != 0 in
  let is_neg_bit_set x = (x land 0x40) != 0 in
  let mask_neg x = x land 0x3f in
  let nibble x = x land 0x7f  in
  let rec loop(x,acc,coef) =
    if(is_continue_bit_set x) then
      let x = input_byte s in
      loop(x, acc + (nibble x) * coef, coef * 128)
    else
      let v = mask_neg x in
      let last = v*coef in
(* take care of 2's complement asymentry *)
      if (is_neg_bit_set x) then
	(~- acc) - last 
      else acc + last   in 
  let x = input_byte s 
  in loop(x,0,1)
