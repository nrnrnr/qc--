type instream = char Stream.t
and outstream = out_channel

let die () = raise (Failure "Sexp Pickler Error")
let out_tok t s = output_string s (SexpLex.string_of_tok t)
let wr_lp = out_tok SexpLex.LP
let wr_rp = out_tok SexpLex.RP
let wr_sym str s = out_tok (SexpLex.SYM str) s 
let wr_list f l s = 
  let rec loop x = 
    match x with
      [] -> () 
    | (x::xs) -> begin 
	f x s; loop xs 
    end 
  in begin
    wr_lp s; wr_sym "list" s;loop l;wr_rp s
  end
    
let wr_option f x s =
  match x with
    None -> wr_list f [] s
  | (Some v) -> wr_list f [v] s

let wr_share f x s = die ()
let expect_tok t s  = 
  let strm = SexpLex.toInstream s in
  (match (SexpLex.scan SexpLex.input1 strm) with
    Some (t',strm') -> 
      begin
	ignore (SexpLex.fromInstream strm');
	if t = t' then ()
	else raise (Failure ("expected:"^(SexpLex.string_of_tok t)^
			     "read:"^(SexpLex.string_of_tok t')))
      end
  | None -> raise (Failure "bad token"))

let rd_lp = expect_tok SexpLex.LP
let rd_rp = expect_tok SexpLex.RP

let peekStream scanFn s = 
  let strm = SexpLex.toInstream s in
  (match (scanFn SexpLex.input1 strm) with
    Some (t,strm') -> Some t
  | None -> None)

let get_sym s =
  let strm = SexpLex.toInstream s in
  (match (SexpLex.scan SexpLex.input1 strm) with
    Some (SexpLex.SYM str,strm') -> 
      (ignore (SexpLex.fromInstream strm'); str)
  | _ -> raise (Failure "error reading symbol"))

let rd_sym str s =
  if (get_sym s) = str then ()
  else raise (Failure ("expected:"^str))

let rd_list f s =
  let peek_rp () =
    (match (peekStream SexpLex.scan s) with
      Some SexpLex.RP -> true
    | _ -> false) in
  let rec loop x =
    if x then (rd_rp s; [])
    else let x = f s 
    in x::(loop (peek_rp()))
  in begin
    rd_lp s;rd_sym "list" s;loop (peek_rp())
  end

let rd_option f s =
  match (rd_list f s) with
    [] -> None
  | x::[] -> Some x
  | _ -> die()

let rd_share f s = die()



