module Build : One01Constructors.S with
type t = One01Trees.M.t
      =
  struct 
    
    type nativeint = Base.std_nativeint
          
    type amode = One01Trees.M.amode
    type amode' = Tdpe.dynamic

    type t = One01Trees.M.t
    type t' = Tdpe.dynamic
          
    let t_reflect = One01Nbe.reflect_t
    let t_reify = One01Nbe.reify_t

    let amode_reflect = One01Nbe.reflect_amode
    let amode_reify = One01Nbe.reify_amode

    let short () = 
      One01Trees.M.Short

    let hword () = 
      One01Trees.M.Hword

    let word () = 
      One01Trees.M.Word

    let dword () = 
      One01Trees.M.Dword

    let add addr rop amode = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left addr 6) 
              6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left rop 30) 30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else 
        One01Trees.M.Add (addr, rop, amode)

    let ld rop addr = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left rop 30) 
              30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left addr 6) 6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else 
        One01Trees.M.Ld (rop, addr)

    let st addr rop = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left addr 6) 
              6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left rop 30) 30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else 
        One01Trees.M.St (addr, rop)
    
    let nop () = 
      One01Trees.M.Nop
   
  end
