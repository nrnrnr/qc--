
module P = Pprint
module S = Syntax


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



let ppAll =
fun ppExp ->
  fun x ->
    (match x with 
       | T__amode x ->
      (match x with 
         | Short () ->
        P.ps "Short";P.psp ();P.open_ 1;P.ps "(";P.ps ")";P.close ();()
         | Hword () ->
        P.ps "Hword";P.psp ();P.open_ 1;P.ps "(";P.ps ")";P.close ();()
         | Word () ->
        P.ps "Word";P.psp ();P.open_ 1;P.ps "(";P.ps ")";P.close ();()
         | Dword () ->
        P.ps "Dword";P.psp ();P.open_ 1;P.ps "(";P.ps ")";P.close ();())
       | T__t x ->
      (match x with 
         | Add (x1,x2,x3) ->
        P.ps "Add";P.psp ();P.open_ 1;P.ps "(";P.ps "x1";P.ps ",";P.psp
          ();P.ps "x2";P.ps ",";P.psp ();P.ps "x3";P.ps ")";P.close
          ();()
         | Ld (x4,x5) ->
        P.ps "Ld";P.psp ();P.open_ 1;P.ps "(";P.ps "x4";P.ps ",";P.psp
          ();P.ps "x5";P.ps ")";P.close ();()
         | St (x6,x7) ->
        P.ps "St";P.psp ();P.open_ 1;P.ps "(";P.ps "x6";P.ps ",";P.psp
          ();P.ps "x7";P.ps ")";P.close ();()
         | Nop () ->
        P.ps "Nop";P.psp ();P.open_ 1;P.ps "(";P.ps ")";P.close ();()))

let  rec pprint =
fun x -> S.pprint (ppAll pprint) x

