module type S =
  sig
    type nativeint = Tdpe.dynamic
    type amode
      = Short of unit
      | Hword of unit
      | Word of unit
      | Dword of unit
    
    type t
      = Add of nativeint (*[0..67108863]*) * nativeint (*[0..3]*) * amode
      | Ld of nativeint (*[0..3]*) * nativeint (*[0..67108863]*)
      | St of nativeint (*[0..67108863]*) * nativeint (*[0..3]*)
      | Nop of unit 
  end

module M : S =
  struct
    type nativeint = Tdpe.dynamic
    type amode
      = Short of unit
      | Hword of unit
      | Word of unit
      | Dword of unit
    
    type t
      = Add of nativeint (*[0..67108863]*) * nativeint (*[0..3]*) * amode
      | Ld of nativeint (*[0..3]*) * nativeint (*[0..67108863]*)
      | St of nativeint (*[0..67108863]*) * nativeint (*[0..3]*)
      | Nop of unit 
  end
  
module Rec(I : One02Constructors.S) =
  struct
    let rec_amode = 
    fun xXx  ->
      (match xXx with
      | M.Short () -> I.short()
      | M.Hword () -> I.hword()
      | M.Word () -> I.word()
      | M.Dword () -> I.dword())

    let rec_t =
      fun xXx  ->
        (match xXx with
        | M.Add (x1, x2, x3) -> I.add x1 x2 (rec_amode x3)
        | M.Ld (x1, x2) -> I.ld x1 x2
        | M.St (x1, x2) -> I.st x1 x2
        | M.Nop () -> I.nop())
      
  end
