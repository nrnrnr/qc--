module Build : One02Constructors.S with
type t = One02Trees.M.t
      =
  struct 
    
    type nativeint = Base.std_nativeint
          
    type amode = One02Trees.M.amode

    type t = One02Trees.M.t
          
    let short () = 
      One02Trees.M.Short()

    let hword () = 
      One02Trees.M.Hword()

    let word () = 
      One02Trees.M.Word()

    let dword () = 
      One02Trees.M.Dword()

    let add addr rop amode = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left addr 6) 
              6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left rop 30) 30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else 
        One02Trees.M.Add (addr, rop, amode)

    let ld rop addr = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left rop 30) 
              30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left addr 6) 6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else 
        One02Trees.M.Ld (rop, addr)

    let st addr rop = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left addr 6) 
              6 = addr) then 
        Sledlib.fail ["field addr does not fit in 26 unsigned bits"] 
      else if not (Nativeint.shift_right_logical 
              (Nativeint.shift_left rop 30) 30 = rop) then 
        Sledlib.fail ["field rop does not fit in 2 unsigned bits"] 
      else 
        One02Trees.M.St (addr, rop)
    
    let nop () = 
      One02Trees.M.Nop()
   
  end
