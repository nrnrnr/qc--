type  exp = (allTypes) Syntax.bExp
and amode_S =
    Short
  | Hword
  | Word
  | Dword
and instruction_S = 
    Add of exp * exp * exp
  | Ld of exp * exp
  | St of exp * exp
  | Nop
and allTypes =
    T__amode of  amode_S
  | T__instruction of instruction_S


val pprint : exp ->
unit

