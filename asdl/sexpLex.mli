type instream 
type ('a,'b) reader = 'b -> ('a * 'b) option 
type tok = 
    LP | RP  
    | INT of int
(*    | BIGINT of Big_int.big_int TODO *) 
    | SYM of string
    | STR of string


val input1       : (char,instream) reader
val toInstream   : char Stream.t -> instream
val fromInstream : instream -> char Stream.t  

val string_of_tok : tok -> string 
val tok_of_string : string -> tok option
val scan : (char,'a) reader -> (tok,'a) reader






















