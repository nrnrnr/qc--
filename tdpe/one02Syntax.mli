
type exp = (allTypes) Syntax.bExp
and allTypes =   T__amode of t__amode
               | T__t of t__t
               
and t__amode =
  Short of unit
| Hword of unit
| Word of unit
| Dword of unit

and t__t =
  Add of (exp * exp * exp)
| Ld of (exp * exp)
| St of (exp * exp)
| Nop of unit



val pprint : exp ->
unit

