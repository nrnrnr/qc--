
module C = Constructors

module MkRep : MachineInstance.S with type t =Machine.instruction = struct 

  type amode = Machine.amode
  type amode' = Tdpe.tExp

    type t = Machine.instruction
  type nativeint = Base.nativeint

  let amode_reflect = MachineNbe.reflect_amode
  let amode_reify = MachineNbe.reify_amode

    let short () = 
      C.Short

    let hword () = 
      C.Hword

    let word () = 
      C.Word

    let dword () = 
      C.Dword

    let add addr rop amode = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left addr 6) 
              6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left rop 30) 30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else 
        C.Add (addr, rop, amode)

    let ld rop addr = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left rop 30) 
              30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left addr 6) 6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else 
        C.Ld (rop, addr)

    let st addr rop = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left addr 6) 
              6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left rop 30) 30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else 
        C.St (addr, rop)
    
    let nop () = 
      C.Nop
   
  end
