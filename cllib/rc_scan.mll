(*
    $Id$

    Scanner for generic RC files
*)

{
    
    open Rc_parse       (* tokens are defined here *)

    exception ScanError of string

    let error msg = raise (ScanError msg)

    let keywords = Hashtbl.create 127
    let keyword s = Hashtbl.find keywords s
    let _ = Array.iter (fun (x,y) -> Hashtbl.add keywords x y)
        [|
             ("true"        ,TRUE);
             ("false"       ,FALSE);
        |]

    let get = Lexing.lexeme

    (* buffer for string literals *)
    let strBuffer = Buffer.create 80

    (* debug *)

    let debug msg = print_endline msg

    (* init *)

    let init () =
        Buffer.clear strBuffer
}

(* regexp declarations *)

let digit       = ['0'-'9']
let letter      = ['a'-'z' 'A'-'Z' '_']
let ident       = letter (letter|digit)*
let integer     = digit+
let float       = integer '.' integer ('E' ('+'|'-')? integer)? 
let ws          = [' ' '\r' '\011' '\012' ]
let nl          = '\n'
let tab         = '\t'

(* main scanner rule *)

rule scan = parse
    | eof               { EOF }
    | ws                { scan lexbuf }
    | nl                { scan lexbuf }
    | tab               { scan lexbuf }
    | '#' [^'\n']* nl   { scan lexbuf } 

    | ident             { let s = get lexbuf in
                          try  keyword s 
                          with Not_found -> debug "id"; ID(s) 
                        }
    | integer           { try 
                            INT   (int_of_string (get lexbuf)) 
                          with Failure _ -> 
                            let msg = "illegal integer `" ^ (get lexbuf) ^ "'"
                            in  error msg 
                        }
    | float             { try
                            FLOAT (float_of_string (get lexbuf)) 
                          with Failure _ -> 
                            let msg = "illegal float `" ^ (get lexbuf) ^ "'"
                            in  error msg 
                        }
    | '"'               { Buffer.clear strBuffer
                        ; string lexbuf 
                        ; STR(Buffer.contents strBuffer)
                        }
                        
    | '='               { EQUAL }
    | ','               { COMMA }
    
    |  _                { let c = get lexbuf in
                            error ("illegal character `" ^ c ^ "'")
                        }    

(* strings *)

and string = parse
    | eof               { error "unterminated string" }
    | '"'               { (* return *) }

    | '\\' _            { let c = String.get (get lexbuf) 1 in
                            Buffer.add_char strBuffer c;
                            string lexbuf
                        }
    | _                 { Buffer.add_string strBuffer (get lexbuf)
                        ; string lexbuf
                        }  

