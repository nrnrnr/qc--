type exp = Tdpe.dynamic
  
type amode = 
      Short
    | Hword
    | Word
    | Dword

type instruction =
      Add of exp * exp * exp
    | Ld of exp * exp
    | St of exp * exp
    | Nop
