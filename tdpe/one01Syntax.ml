open Pprint

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


let pallTypes printtExp = 
fun x1  ->
  (match x1 with
    T__amode x2 ->
      (match x2 with
      | Short  -> (print_open 1 "(";ps "Short";ps " ";print_open 1
                     "(";print_close ")";print_close ")";())
      | Hword  -> (print_open 1 "(";ps "Hword";ps " ";print_open 1
                     "(";print_close ")";print_close ")";())
      | Word  -> (print_open 1 "(";ps "Word";ps " ";print_open 1 "(";
                  print_close ")";print_close ")";())
      | Dword  -> (print_open 1 "(";ps "Dword";ps " ";print_open 1
                     "(";print_close ")";print_close ")";()))
  | T__instruction x3 ->
      (match x3 with
      | Add (x4, x5, x6) -> (print_open 1 "(";ps "Add";ps " ";
                             print_open 1 "(";printtExp x4;ps ",";pbk ();printtExp x5;ps
                               ",";pbk ();printtExp x6;print_close ")";print_close ")";())
      | Ld (x7, x8) -> (print_open 1 "(";ps "Ld";ps " ";print_open 1
                          "(";printtExp x7;ps ",";pbk ();printtExp x8;print_close ")";
                        print_close ")";())
      | St (x9, x10) -> (print_open 1 "(";ps "St";ps " ";print_open 1
                           "(";printtExp x9;ps ",";pbk ();printtExp x10;print_close ")";
                         print_close ")";())
      | Nop  -> (print_open 1 "(";ps "Nop";ps " ";print_open 1 "(";
                 print_close ")";print_close ")";())))
(*let pprint = 
let rec pc = fun x  -> Syntax.pprint (pallTypes pc) x in pc*)
let rec pprint = fun x -> Syntax.pprint (pallTypes pprint) x

