type instream = (int * char array ref * char Stream.t)
type ('a,'b) reader = 'b -> ('a * 'b) option 
(* 
  Hack to get "functional streams" in the style of the SML Basis Library
  with a relatively efficient buffering  scheme.
*)
let input1 strm =
  let fill (idx,buf,s) = 
    (buf := Array.of_list (Stream.npeek (idx+3) s)) in
  let next (idx,buf,s) = 
    Some (Array.get (!buf) idx, (idx+1,buf,s)) in
  try next strm with
    Invalid_argument "Array.get" -> 
      begin
	fill strm;
	try (next strm) with
	  Invalid_argument "Array.get" -> None
	| e -> raise e
      end
  | e -> raise e
let toInstream s = (0,ref (Array.of_list []),s) 
let fromInstream (n,_,s) = 
  let rec loop x =
    match x with
      0 -> ()
    | n -> (Stream.junk s;loop (x-1))
  in (loop n;s)
  
type tok = 
    LP | RP | INT of int
(*   | BIGINT of Big_int.big_int TODO *)
  | SYM of string
  | STR of string

let string_of_tok x =
  match x with 
    LP -> "("
  | RP -> ")"
  | INT i -> string_of_int i
(*  | BIGINT i -> Big_int.string_of_big_int i *)
  | SYM s -> (s^" ")
(* fix to use proper escapes *)
  | STR str -> ("\""^(String.escaped str)^"\"")

let isNum c = ('0' <= c) && (c <= '9' ) 
let isAlpha c = (('A' <= c) && (c <= 'Z'))
             || (('a' <= c) && (c <= 'z' ))
let isAlphaNum c = (isAlpha c) || (isNum c) 
let isSpace c = String.contains " \n\t\r" c
let isOct c = ('0' <= c) && (c <= '7' )
let isHex c = (isNum c) 
           || (('A' <= c) && (c <= 'F')) 
           || (('a' <= c) && (c <= 'f'))

let get_chars f getc s =
  let buf = Buffer.create 16 in
  let rec loop s =
    match (getc s) with
      Some (c,s') ->
	if f c then (Buffer.add_char buf c;loop(s'))
	else (Buffer.contents buf,s)
    | None -> (Buffer.contents buf,s) 
  in loop s

let doSign getc s = 
  match (getc s) with
    Some ('+',s) -> ((fun x -> x),s)
  | Some ('-',s) -> ((fun x -> - x),s)
  | _ -> ((fun x -> x),s)

let scanDec getc s =
  try 
    let (sgn,s) = (doSign getc s) in
    let (str,s) = (get_chars isNum getc s) 
    in Some (sgn (int_of_string str),s)
  with
    Failure ("int_of_string") -> None
  | e -> raise e

let scanHex getc s =
  try 
    let (sgn,s) = (doSign getc s) in
    let (str,s) = (get_chars isHex getc s) 
    in Some (sgn (int_of_string ("0x"^str)),s)
  with
    Failure ("int_of_string") -> None
  | e -> raise e
	
let scanOct getc s =
  try 
    let (sgn,s) = (doSign getc s) in
    let (str,s) = (get_chars isOct getc s) 
    in Some (sgn (int_of_string ("0o"^str)),s)
  with
    Failure ("int_of_string") -> None
  | e -> raise e
	
let scan (getc:'a -> (char * 'a) option) =
  let rec eatws s =
    (match (getc s) with
      Some (c,s') -> if (isSpace c) then eatws s'
      else s
    | None -> s) in
  let scan_sym s = 
  let buf = Buffer.create 16 in
  let rec loop s =
    match (getc s) with
      Some (c,s') ->
	if ((isAlphaNum c) || c = '_') then (Buffer.add_char buf c;loop(s'))
        else (Buffer.contents buf,s)
  | None -> (Buffer.contents buf,s) 
  in (match (getc s) with
      Some (c,s) ->
	if (isAlpha c) then (Buffer.add_char buf c;Some (loop s))
	else None
    | _ -> None) in
  let scan_str s =
    let do_escape s =
      match (getc s) with
	Some ('a',s) -> (Char.chr 0x07,s)
      | Some ('b',s) -> (Char.chr 0x08,s)
      | Some ('t',s) -> (Char.chr 0x09,s)
      | Some ('n',s) -> (Char.chr 0x0A,s)
      | Some ('v',s) -> (Char.chr 0x0B,s)
      | Some ('f',s) -> (Char.chr 0x0C,s)
      | Some ('r',s) -> (Char.chr 0x0D,s)
      | Some ('?',s) -> ('?',s)
      | Some ('\\',s) -> ('\\',s)
      | Some ('"',s) -> ('"',s)
      | Some ('\'',s) -> ('\'',s)
      | Some ('^',s) ->
	  (match (getc s) with
	    Some (c,s') ->
	      let c = (Char.code c) in
	      (if (c > 63) && (c < 96) then
		(Char.chr (c - 64),s')
	      else ('^',s))
	  | None -> ('^',s))
      | Some ('u',s) -> 
	  (match (scanHex getc s) with
	    Some (i,s) -> (Char.chr i,s)
	  | None -> ('u',s))
      | Some (c,s) -> 
	  (match (scanOct getc s) with
	    Some (i,s) -> (Char.chr i,s)
	  | None -> (c,s))
      | None -> raise (Failure "Unfinished Escape") in
    let buf = Buffer.create 16 in
    let rec loop (s) =
      match (getc s) with
	Some ('\\',s) ->
	  let (c,s) = do_escape s 
	  in (Buffer.add_char buf c;loop(s))
      | Some ('"',s) -> Some(Buffer.contents buf,s)
      | Some (c,s) -> (Buffer.add_char buf c;loop(s))
      | None -> raise (Failure "Unclosed String") 
    in loop(s) in
  let scan_int s = scanDec getc s  in
(*  let scan_bigint s = raise (Failure "bigint") in  *)
  let scan_tok s =
    let s = eatws s
    in match (getc s) with
      Some ('(',s) -> Some(LP,s)
    | Some (')',s) -> Some(RP,s)
    | Some ('"',s) ->
	      (match (scan_str s) with
		Some(str,s) -> Some(STR str,s)
	      | None -> None)
    | Some (_,_) ->
	((match scan_int s with
	  Some(i,s) -> Some(INT i,s)
	| None -> (match (scan_sym s) with
	    Some(str,s) -> (Some(SYM str,s))
	  | None -> None)))
    | None -> None 
(* debug
  in let scan_tok s =
    match (scan_tok s) with
      Some (t,s) -> begin
	output_string stderr ((string_of_tok t)^"\n");
	Some (t,s)
      end
    | None -> None 
 *)
  in scan_tok

let tok_of_string str =
  let strm = toInstream (Stream.of_string str)
  in match (scan input1 strm) with
    Some (t,_) -> Some t
  | None -> None
    
