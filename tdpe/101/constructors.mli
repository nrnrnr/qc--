
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
   


val case_amode_C :  amode_C -> ((unit) -> 'z) -> ((unit) -> 'z) ->
((unit) -> 'z) -> ((unit) -> 'z) -> 'z
val case_instruction_C : ('a1, 'a2, 'a3, 'a4, 'a5, 'a6, 'a7)
instruction_C -> (('a1 * 'a2 * 'a3) -> 'z) -> (('a4 * 'a5) -> 'z) ->
(('a6 * 'a7) -> 'z) -> ((unit) -> 'z) ->
'z

