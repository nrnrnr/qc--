
type  amode_C = 
      Short
    | Hword
    | Word
    | Dword
   

type ('a1, 'a2, 'a3, 'a4, 'a5, 'a6, 'a7) instruction_C =

      Add of 'a1 * 'a2 * 'a3
    | Ld of 'a4 * 'a5
    | St of 'a6 * 'a7
    | Nop
   


let case_amode_C = 
fun t f1 f2 f3 f4  ->
  (match t with
    | Short  -> f1 ()
    | Hword  -> f2 ()
    | Word  -> f3 ()
    | Dword  -> f4 ())
let case_instruction_C = 
fun t f1 f2 f3 f4  ->
  (match t with
    | Add (addr, rop, amode) -> f1 (addr, rop, amode)
    | Ld (rop, addr) -> f2 (rop, addr)
    | St (addr, rop) -> f3 (addr, rop)
    | Nop  -> f4 ())

