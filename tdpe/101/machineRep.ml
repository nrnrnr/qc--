
module M = Machine

module MkRep : MachineInstance.S with type t =Machine.instruction = struct 

  type amode = Machine.amode
  type amode' = Tdpe.dynamic

  type t = Machine.instruction
  type nativeint = Base.std_nativeint

  let amode_reflect = MachineNbe.reflect_amode
  let amode_reify = MachineNbe.reify_amode

    let short () = 
      M.Short

    let hword () = 
      M.Hword

    let word () = 
      M.Word

    let dword () = 
      M.Dword

    let add addr rop amode = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left addr 6) 
              6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left rop 30) 30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else 
        M.Add (addr, rop, amode)

    let ld rop addr = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left rop 30) 
              30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left addr 6) 6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else 
        M.Ld (rop, addr)

    let st addr rop = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left addr 6) 
              6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left rop 30) 30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else 
        M.St (addr, rop)
    
    let nop () = 
      M.Nop
   
  end

module MkRepNoCheck : MachineInstance.S with type t =Machine.instruction = struct 

  type amode = Machine.amode
  type amode' = Tdpe.dynamic

  type t = Machine.instruction
  type nativeint = Base.std_nativeint

  let amode_reflect = MachineNbe.reflect_amode
  let amode_reify = MachineNbe.reify_amode

    let short () = 
      M.Short

    let hword () = 
      M.Hword

    let word () = 
      M.Word

    let dword () = 
      M.Dword

    let add addr rop amode = 
      M.Add (addr, rop, amode)

    let ld rop addr = 
      M.Ld (rop, addr)

    let st addr rop = 
      M.St (addr, rop)
    
    let nop () = 
      M.Nop
   
  end
