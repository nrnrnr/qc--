(*
    $Id$
*)

{
    open Error
    open Parse      (* tokens are defined here *)

    (* init - prepare scanner for next job *)

    type position = { mutable file:      string
                    ; mutable start:     int
                    ; mutable line:      int
                    ; mutable tab:       int
                    }

    let position = { file  = "undefined"
                   ; start = 0
                   ; line  = 1
                   ; tab   = 0
                   }

    let init file =
        ( position.file  <- file
        ; position.start <- 0
        ; position.line  <- 1
        ; position.tab   <- 0
        )

    (* nl is called when a newline is read - updates 
       position for line/column tracking *)

    let nl lexbuf =
        ( position.start <- (Lexing.lexeme_start lexbuf) + 1 
        ; position.tab   <- 0
        ; position.line  <- position.line + 1
        )

    let column lexbuf =
        Lexing.lexeme_start lexbuf + position.tab - position.start 

    (* The tab character is one byte long, but moves the cursor
       additional x positions to the right. The number x of virtual
       spaces depends on the column c of the tab:

            x = 7 - (c mod 8). 
    *)
       
    let tab lexbuf =
        let c  = column lexbuf      in
        ( position.tab <- position.tab + 7 - (c mod 8)
        )
        
    let pos lexbuf =
        ( position.file
        , position.line
        , 1 + column lexbuf  
        )
     
    (* lexerror *)

    let lexerror lexbuf msg = 
        let (file, line, col) = pos lexbuf      in
        let m = Printf.sprintf "File %s, line %d, column %d: %s"
                file line col msg
        in 
            error m

    (* little helpers *)

    let get         = Lexing.lexeme
    let getchar     = Lexing.lexeme_char
    let strlen      = String.length
    let pos_start   = Lexing.lexeme_start
    let pos_end     = Lexing.lexeme_end

    (* substr *)
    
    let substr start stop str = 
        let start = if start <  0 then String.length str + start else start in
        let stop  = if stop  <= 0 then String.length str + stop  else stop  in
            String.sub str start (stop - start)

    (* escape - decodes backslash escapes as used in strings *)

    let escape = function
        | 't'   -> '\t'
        | 'n'   -> '\n'
        | 'b'   -> '\b'
        | 'r'   -> '\r'
        |  x    ->  x  (* default *)

    (* keywords *)

    let keywords    = Hashtbl.create 127
    let keyword s   = Hashtbl.find keywords s

    let _ = Array.iter (fun (str,tok) -> Hashtbl.add keywords str tok)
        [|("aborts"         , ABORTS)
        ; ("align"          , ALIGN)
        ; ("aligned"        , ALIGNED)
        ; ("also"           , ALSO)
        ; ("const"          , CONST)
        ; ("continuation"   , CONTINUATION)
        ; ("cut"            , CUT)
        ; ("cuts"           , CUTS)
        ; ("else"           , ELSE)
        ; ("equal"          , EQUAL)
        ; ("export"         , EXPORT)
        ; ("foreign"        , FOREIGN)
        ; ("global"         , GLOBAL)
        ; ("goto"           , GOTO)
        ; ("if"             , IF)
        ; ("import"         , IMPORT)
        ; ("invariant"      , INVARIANT)
        ; ("jump"           , JUMP)
        ; ("pragma"         , PRAGMA)
        ; ("return"         , RETURN)
        ; ("returns"        , RETURNS)
        ; ("section"        , SECTION)
        ; ("semi"           , SEMI)
        ; ("span"           , SPAN)
        ; ("stackdata"      , STACKDATA)
        ; ("targets"        , TARGETS)
        ; ("to"             , TO)
        ; ("unicode"        , UNICODE)
        ; ("unwinds"        , UNWINDS)

        (* pragmas *)

        ; ("line"           , LINE)
        |]
}


(* declarations *)

let digit       = ['0'-'9']
let octal       = ['0'-'7']
let decchar     = digit digit digit

let printable   = [' '-'~']     (* add 8bit chars *)
let alpha       = ['a'-'z' 'A'-'Z' '_']

let escape      = ['\\' '\'' '"' 'n' 't' 'b' 'r']

let sign        = ['+' '-']
let nat         = digit+
let frac        = nat? '.' nat
let exp         = ['e''E'] sign? nat
let float       = frac exp? 
                | nat exp


let id          = alpha (alpha | digit | '.')*
let ws          = [' ' '\b']
let nl          = '\n'
let tab         = '\t'
let flag        = '{' alpha+ '}' 

(* lexer entry point *)

rule token = parse
    eof         { EOF          }
  | ws+         { token lexbuf }
  | tab         { tab lexbuf; token lexbuf }
  | nl          { nl lexbuf; token lexbuf }

  | ";"         { SEMI         }
  | ":"         { COLON        }
  | ","         { COMMA        }

  | "("         { LPAREN       }
  | ")"         { RPAREN       }
  | "{"         { LBRACE       }
  | "}"         { RBRACE       }
  | "["         { LBRACKET     }
  | "]"         { RBRACKET     }

  | "="         { EQUAL        }
  

  (* infix/prefix operators *)
  
  | "+"         { PLUS(get lexbuf)      }
  | "-"         { MINUS(get lexbuf)     }
  | "*"         { STAR(get lexbuf)      }
  | "/"         { SLASH(get lexbuf)     }
  | "%"         { PERCENT(get lexbuf)   }
  | ">>"        { GGREATER(get lexbuf)  }
  | "<<"        { LLESS(get lexbuf)     }
  | "&"         { AMPERSAND(get lexbuf) }
  | "|"         { BAR(get lexbuf)       }
  | "^"         { CARET(get lexbuf)     }
  | "~"         { TILDE(get lexbuf)     }
  | "=="        { EEQ(get lexbuf)       }
  | "!="        { NEQ(get lexbuf)       }
  | "<"         { LT(get lexbuf)        }
  | "<="        { LEQ(get lexbuf)       }
  | ">"         { GT(get lexbuf)        }
  | ">="        { GEQ(get lexbuf)       }

              
  | "bits" nat  { let s = substr 4 0 (get lexbuf) in
                  BITSn (int_of_string s)
                }
  | "float" nat { let s = substr 5 0 (get lexbuf) in
                  FLOATn (int_of_string s)
                }
  | id          { let s  = get lexbuf in 
                  let k  = try keyword s with Not_found -> ID s in
                    if k = PRAGMA then pragma1 lexbuf else k  
                } 
  (*
  | float       { FLT (float_of_string (get lexbuf)) }
  *)
  
  | float       { FLT (get lexbuf) }
  | nat         { INT (int_of_string (get lexbuf))     }


  
  | "/*"        { comment lexbuf 0 }
  | "\""        { string lexbuf (Buffer.create 80) }
 
  | "'" printable      "'"      { CHAR (get lexbuf) }
  | "'" '\\' escape    "'"      { let c = (getchar lexbuf 2) in
                                  CHAR (String.make 1 (escape c))
                                }
  | "'" '\\' decchar   "'"      { let s = substr 2 (-1) (get lexbuf) in
                                  let c = Char.chr (int_of_string s) in
                                  CHAR  (String.make 1 c)
                                }
  | "'" '\\' _                  { lexerror lexbuf "illegal character escape" }
  | "'" _                       { lexerror lexbuf "illegal character constant" }
 
  | _                           { lexerror lexbuf "illegal character" }


(* level holds the comment nesting level *)

and comment = parse
    eof                         { fun level ->
                                  lexerror lexbuf "unterminated comment" 
                                }
  | [^ '*' '\n' '\t' '/']+      { fun level ->
                                  comment lexbuf level
                                }
  | nl                          { fun level ->
                                  nl lexbuf; comment lexbuf level 
                                }
  | tab                         { fun level -> 
                                  tab lexbuf; comment lexbuf level
                                }
  | "/*"                        { fun level -> 
                                  comment lexbuf (level+1)
                                }
  | "*"+                        { fun level ->
                                  comment lexbuf level
                                }
  | "*/"                        { fun level ->
                                  if   level = 0 
                                  then token lexbuf
                                  else comment lexbuf (level-1)
                                }
  | _                           { fun level ->
                                  comment lexbuf level 
                                }

(* string gets passed a buffer where the scanned string is accumulated *)

and string = parse
    eof                         { fun buf -> 
                                  lexerror lexbuf "unterminated string" 
                                }
  | "\""                        { fun buf -> STR (Buffer.contents buf) }
  | [^ '\000'-'\031'
       '\128'-'\255'
       '"' '\\' ]+              { fun buf ->
                                  let s    = get lexbuf              in
                                  ( Buffer.add_string buf s
                                  ; string lexbuf buf
                                  )
                                }
  | '\\' escape                 { fun buf ->
                                  let c    = getchar lexbuf 1       in
                                  let c'   = escape c               in
                                  ( Buffer.add_char buf c'
                                  ; string lexbuf buf
                                  )
                                }
  
  | '\\' decchar                { fun buf ->
                                  let s    = substr 1 0 (get lexbuf    ) in
                                  let c    = Char.chr (int_of_string s ) in
                                  ( Buffer.add_char buf c
                                  ; string lexbuf buf
                                  )
                                }
  | '\\' _                      { fun buf ->
                                  lexerror lexbuf "illegal character escape"
                                }
  | _                           { fun buf ->
                                  lexerror lexbuf "illegal character in string"
                                }

(* handle pragmas *)

(* find the identifier (target) of the pragma and return the
   corresponding keyword in case it is known *)

and pragma1 = parse
    eof                 { EOF }
  | ws+                 { pragma1 lexbuf }
  | tab                 { tab lexbuf; pragma1 lexbuf }
  | nl                  { nl lexbuf; pragma1 lexbuf } 
  | id                  { let s  = get lexbuf in 
                          try keyword s with Not_found -> pragma2 lexbuf
                        }
  | _                   { lexerror lexbuf "id for pragma expected" }

(* look for the body of the pragma and call pragma3 to skip over it *)

and pragma2 = parse
    eof                 { lexerror lexbuf "pragma body expected" }
  | ws+                 { pragma2 lexbuf }
  | tab                 { tab lexbuf; pragma2 lexbuf }
  | nl                  { nl lexbuf; pragma2 lexbuf }
  | '{'                 { pragma3 lexbuf 0 }
  | _                   { lexerror lexbuf "pragma body expected" }

(* skip an unknown pragma.  We must recognize strings, comments, and
   character literals because they might contain the terminating
   character (to be done). *)

and pragma3 = parse
    eof                         { fun level ->
                                  lexerror lexbuf "unterminated pragma" 
                                }
  | [^ '{' '}' '\n' '\t']+      { fun level ->
                                  pragma3 lexbuf level
                                }
  | nl                          { fun level ->
                                  nl lexbuf; pragma3 lexbuf level 
                                }
  | tab                         { fun level -> 
                                  tab lexbuf; pragma3 lexbuf level
                                }
  | '{'                         { fun level -> 
                                  pragma3 lexbuf (level+1)
                                }
  | '}'                         { fun level ->
                                  if   level = 0 
                                  then token lexbuf
                                  else pragma3 lexbuf (level-1)
                                }
  | _                           { fun level ->
                                  pragma3 lexbuf level 
                                }

{

    let tok2str = function

    | ABORTS            -> "ABORTS"
    | ALIGN             -> "ALIGN"
    | ALIGNED           -> "ALIGNED"
    | ALSO              -> "ALSO"
    | COLON             -> "COLON"
    | COMMA             -> "COMMA"
    | CONST             -> "CONST"
    | CONTINUATION      -> "CONTINUATION"
    | CUT               -> "CUT"
    | CUTS              -> "CUTS"
    | ELSE              -> "ELSE"
    | EOF               -> "EOF"
    | EQUAL             -> "EQUAL"
    | EXPORT            -> "EXPORT"
    | FOREIGN           -> "FOREIGN"
    | GLOBAL            -> "GLOBAL"
    | GOTO              -> "GOTO"
    | IF                -> "IF"
    | IMPORT            -> "IMPORT"
    | INVARIANT         -> "INVARIANT"
    | JUMP              -> "JUMP"
    | LBRACE            -> "LBRACE"
    | LBRACKET          -> "LBRACKET"
    | LPAREN            -> "LPAREN"
    | PPERCENT          -> "PPERCENT"
    | PRAGMA            -> "PRAGMA"
    | RBRACE            -> "RBRACE"
    | RBRACKET          -> "RBRACKET"
    | RETURN            -> "RETURN"
    | RETURNS           -> "RETURNS"
    | RPAREN            -> "RPAREN"
    | SECTION           -> "SECTION"
    | SEMI              -> "SEMI"
    | SPAN              -> "SPAN"
    | STACKDATA         -> "STACKDATA"
    | TARGETS           -> "TARGETS"
    | TO                -> "TO"
    | UNICODE           -> "UNICODE"
    | UNWINDS           -> "UNWINDS"

    (* pragmas *)

    | LINE              -> "LINE"

    | AMPERSAND(s)      -> "AMPERSAND(" ^ s ^ ")"
    | BAR(s)            -> "BAR(" ^ s ^ ")"
    | CARET(s)          -> "CARET(" ^ s ^ ")"
    | EEQ(s)            -> "EEQ(" ^ s ^ ")"
    | GEQ(s)            -> "GEQ(" ^ s ^ ")"
    | GGREATER(s)       -> "GGREATER(" ^ s ^ ")"
    | GT(s)             -> "GT(" ^ s ^ ")"
    | LEQ(s)            -> "LEQ(" ^ s ^ ")"
    | LLESS(s)          -> "LLESS(" ^ s ^ ")"
    | LT(s)             -> "LT(" ^ s ^ ")"
    | MINUS(s)          -> "MINUS(" ^ s ^ ")"
    | NEQ(s)            -> "NEQ(" ^ s ^ ")"
    | PERCENT(s)        -> "PERCENT(" ^ s ^ ")"
    | PLUS(s)           -> "PLUS(" ^ s ^ ")"
    | SLASH(s)          -> "SLASH(" ^ s ^ ")"
    | STAR(s)           -> "STAR(" ^ s ^ ")"
    | TILDE(s)          -> "TILDE(" ^ s ^ ")"
    
    | ID(s)             -> "ID(" ^ s ^ ")"
    | STR(s)            -> "STR(" ^ s ^ ")"
    | INT(i)            -> "INT(" ^ string_of_int i ^ ")"
    | FLT(f)            -> "FLT(" ^ f ^ ")"
    | BITSn(i)          -> "BITSn(" ^ string_of_int i ^ ")"
    | FLOATn(i)         -> "FLOATSn(" ^ string_of_int i ^ ")"
    | CHAR(c)           -> "CHAR(" ^ c ^ ")"
    
}

    
