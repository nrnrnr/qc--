type token =
    STR of (string)
  | ID of (string)
  | BOOL of (bool)
  | FLOAT of (float)
  | INT of (int)
  | COMMA
  | EQUAL
  | TRUE
  | FALSE
  | EOF

val rcfile :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Rc_ast.rcdict
