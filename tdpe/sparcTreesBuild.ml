module Build : SparcConstructors.S with
type t = SparcTrees.M.t =
    struct
      type nativeint = Tdpe.dynamic
      type reg_or_imm = SparcTrees.M.reg_or_imm
      type address = SparcTrees.M.address
      type regaddr = SparcTrees.M.regaddr
      type t = SparcTrees.M.t

      open SparcTrees.M
    let imode simm13 = 
      if not (Nativeint.shift_right (Nativeint.shift_left simm13 19) 
              19 = simm13) then 
        Sledlib.fail ["field simm13 does not fit in 13 signed bits"] 
      else 
        Imode (simm13)
    
    let rmode rs2 = 
      Rmode (rs2)
    
    let generala rs1 reg_or_imm = 
      Generala (rs1, reg_or_imm)
    
    let dispa rs1 simm13 = 
      if not (Nativeint.shift_right (Nativeint.shift_left simm13 19) 
              19 = simm13) then 
        Sledlib.fail ["field simm13 does not fit in 13 signed bits"] 
      else 
        Dispa (rs1, simm13)
    
    let absolutea simm13 = 
      if not (Nativeint.shift_right (Nativeint.shift_left simm13 19) 
              19 = simm13) then 
        Sledlib.fail ["field simm13 does not fit in 13 signed bits"] 
      else 
        Absolutea (simm13)
    
    let indexa rs1 rs2 = 
      Indexa (rs1, rs2)
    
    let indirecta rs1 = 
      Indirecta (rs1)
    
    let ldsb address rd = 
      Ldsb (address, rd)
    
    let ldsh address rd = 
      Ldsh (address, rd)
    
    let ldub address rd = 
      Ldub (address, rd)
    
    let lduh address rd = 
      Lduh (address, rd)
    
    let ld address rd = 
      Ld (address, rd)
    
    let ldstub address rd = 
      Ldstub (address, rd)
    
    let swap_ address rd = 
      Swap_ (address, rd)
    
    let ldd address rd = 
      Ldd (address, rd)
    
    let ldf address fd = 
      Ldf (address, fd)
    
    let lddf address fd = 
      Lddf (address, fd)
    
    let ldc address cd = 
      Ldc (address, cd)
    
    let lddc address cd = 
      Lddc (address, cd)
    
    let stb rd address = 
      Stb (rd, address)
    
    let sth rd address = 
      Sth (rd, address)
    
    let st rd address = 
      St (rd, address)
    
    let std rd address = 
      Std (rd, address)
    
    let stf fd address = 
      Stf (fd, address)
    
    let stdf fd address = 
      Stdf (fd, address)
    
    let stc cd address = 
      Stc (cd, address)
    
    let stdc cd address = 
      Stdc (cd, address)
    
    let indexr rs1 rs2 = 
      Indexr (rs1, rs2)
    
    let indirectr rs1 = 
      Indirectr (rs1)
    
    let ldsba regaddr asi rd = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Ldsba (regaddr, asi, rd)
    
    let ldsha regaddr asi rd = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Ldsha (regaddr, asi, rd)
    
    let lduba regaddr asi rd = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Lduba (regaddr, asi, rd)
    
    let lduha regaddr asi rd = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Lduha (regaddr, asi, rd)
    
    let lda regaddr asi rd = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Lda (regaddr, asi, rd)
    
    let ldstuba regaddr asi rd = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Ldstuba (regaddr, asi, rd)
    
    let swapa regaddr asi rd = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Swapa (regaddr, asi, rd)
    
    let ldda regaddr asi rd = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Ldda (regaddr, asi, rd)
    
    let stba rd regaddr asi = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Stba (rd, regaddr, asi)
    
    let stha rd regaddr asi = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Stha (rd, regaddr, asi)
    
    let sta rd regaddr asi = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Sta (rd, regaddr, asi)
    
    let stda rd regaddr asi = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left asi 24) 
              24 = asi) then 
        Sledlib.fail ["field asi does not fit in 8 unsigned bits"] 
      else 
        Stda (rd, regaddr, asi)
    
    let ldfsr address = 
      Ldfsr (address)
    
    let ldcsr address = 
      Ldcsr (address)
    
    let stfsr address = 
      Stfsr (address)
    
    let stcsr address = 
      Stcsr (address)
    
    let stdfq address = 
      Stdfq (address)
    
    let stdcq address = 
      Stdcq (address)
    
    let rdy rd = 
      Rdy (rd)
    
    let rdpsr rd = 
      Rdpsr (rd)
    
    let rdwim rd = 
      Rdwim (rd)
    
    let rdtbr rd = 
      Rdtbr (rd)
    
    let wry rs1 reg_or_imm = 
      Wry (rs1, reg_or_imm)
    
    let wrpsr rs1 reg_or_imm = 
      Wrpsr (rs1, reg_or_imm)
    
    let wrwim rs1 reg_or_imm = 
      Wrwim (rs1, reg_or_imm)
    
    let wrtbr rs1 reg_or_imm = 
      Wrtbr (rs1, reg_or_imm)
    
    let rdasr rs1i rd = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left rs1i 27) 
              27 = rs1i) then 
        Sledlib.fail ["field rs1i does not fit in 5 unsigned bits"] 
      else 
        Rdasr (rs1i, rd)
    
    let wrasr rs1 reg_or_imm rdi = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left rdi 27) 
              27 = rdi) then 
        Sledlib.fail ["field rdi does not fit in 5 unsigned bits"] 
      else 
        Wrasr (rs1, reg_or_imm, rdi)
    
    let stbar () = 
      Stbar ()
    
    let and_ rs1 reg_or_imm rd = 
      And (rs1, reg_or_imm, rd)
    
    let andcc rs1 reg_or_imm rd = 
      Andcc (rs1, reg_or_imm, rd)
    
    let andn rs1 reg_or_imm rd = 
      Andn (rs1, reg_or_imm, rd)
    
    let andncc rs1 reg_or_imm rd = 
      Andncc (rs1, reg_or_imm, rd)
    
    let or_ rs1 reg_or_imm rd = 
      Or (rs1, reg_or_imm, rd)
    
    let orcc rs1 reg_or_imm rd = 
      Orcc (rs1, reg_or_imm, rd)
    
    let orn rs1 reg_or_imm rd = 
      Orn (rs1, reg_or_imm, rd)
    
    let orncc rs1 reg_or_imm rd = 
      Orncc (rs1, reg_or_imm, rd)
    
    let xor rs1 reg_or_imm rd = 
      Xor (rs1, reg_or_imm, rd)
    
    let xorcc rs1 reg_or_imm rd = 
      Xorcc (rs1, reg_or_imm, rd)
    
    let xnor rs1 reg_or_imm rd = 
      Xnor (rs1, reg_or_imm, rd)
    
    let xnorcc rs1 reg_or_imm rd = 
      Xnorcc (rs1, reg_or_imm, rd)
    
    let sll rs1 reg_or_imm rd = 
      Sll (rs1, reg_or_imm, rd)
    
    let srl rs1 reg_or_imm rd = 
      Srl (rs1, reg_or_imm, rd)
    
    let sra rs1 reg_or_imm rd = 
      Sra (rs1, reg_or_imm, rd)
    
    let add rs1 reg_or_imm rd = 
      Add (rs1, reg_or_imm, rd)
    
    let addcc rs1 reg_or_imm rd = 
      Addcc (rs1, reg_or_imm, rd)
    
    let addx rs1 reg_or_imm rd = 
      Addx (rs1, reg_or_imm, rd)
    
    let addxcc rs1 reg_or_imm rd = 
      Addxcc (rs1, reg_or_imm, rd)
    
    let taddcc rs1 reg_or_imm rd = 
      Taddcc (rs1, reg_or_imm, rd)
    
    let taddcctv rs1 reg_or_imm rd = 
      Taddcctv (rs1, reg_or_imm, rd)
    
    let sub rs1 reg_or_imm rd = 
      Sub (rs1, reg_or_imm, rd)
    
    let subcc rs1 reg_or_imm rd = 
      Subcc (rs1, reg_or_imm, rd)
    
    let subx rs1 reg_or_imm rd = 
      Subx (rs1, reg_or_imm, rd)
    
    let subxcc rs1 reg_or_imm rd = 
      Subxcc (rs1, reg_or_imm, rd)
    
    let tsubcc rs1 reg_or_imm rd = 
      Tsubcc (rs1, reg_or_imm, rd)
    
    let tsubcctv rs1 reg_or_imm rd = 
      Tsubcctv (rs1, reg_or_imm, rd)
    
    let mulscc rs1 reg_or_imm rd = 
      Mulscc (rs1, reg_or_imm, rd)
    
    let umul rs1 reg_or_imm rd = 
      Umul (rs1, reg_or_imm, rd)
    
    let smul rs1 reg_or_imm rd = 
      Smul (rs1, reg_or_imm, rd)
    
    let umulcc rs1 reg_or_imm rd = 
      Umulcc (rs1, reg_or_imm, rd)
    
    let smulcc rs1 reg_or_imm rd = 
      Smulcc (rs1, reg_or_imm, rd)
    
    let udiv rs1 reg_or_imm rd = 
      Udiv (rs1, reg_or_imm, rd)
    
    let sdiv rs1 reg_or_imm rd = 
      Sdiv (rs1, reg_or_imm, rd)
    
    let udivcc rs1 reg_or_imm rd = 
      Udivcc (rs1, reg_or_imm, rd)
    
    let sdivcc rs1 reg_or_imm rd = 
      Sdivcc (rs1, reg_or_imm, rd)
    
    let save rs1 reg_or_imm rd = 
      Save (rs1, reg_or_imm, rd)
    
    let restore rs1 reg_or_imm rd = 
      Restore (rs1, reg_or_imm, rd)
    
    let bn target = 
      Bn (target)
    
    let bn_a target = 
      Bn_a (target)
    
    let be target = 
      Be (target)
    
    let be_a target = 
      Be_a (target)
    
    let ble target = 
      Ble (target)
    
    let ble_a target = 
      Ble_a (target)
    
    let bl target = 
      Bl (target)
    
    let bl_a target = 
      Bl_a (target)
    
    let bleu target = 
      Bleu (target)
    
    let bleu_a target = 
      Bleu_a (target)
    
    let bcs target = 
      Bcs (target)
    
    let bcs_a target = 
      Bcs_a (target)
    
    let bneg target = 
      Bneg (target)
    
    let bneg_a target = 
      Bneg_a (target)
    
    let bvs target = 
      Bvs (target)
    
    let bvs_a target = 
      Bvs_a (target)
    
    let ba target = 
      Ba (target)
    
    let ba_a target = 
      Ba_a (target)
    
    let bne target = 
      Bne (target)
    
    let bne_a target = 
      Bne_a (target)
    
    let bg target = 
      Bg (target)
    
    let bg_a target = 
      Bg_a (target)
    
    let bge target = 
      Bge (target)
    
    let bge_a target = 
      Bge_a (target)
    
    let bgu target = 
      Bgu (target)
    
    let bgu_a target = 
      Bgu_a (target)
    
    let bcc target = 
      Bcc (target)
    
    let bcc_a target = 
      Bcc_a (target)
    
    let bpos target = 
      Bpos (target)
    
    let bpos_a target = 
      Bpos_a (target)
    
    let bvc target = 
      Bvc (target)
    
    let bvc_a target = 
      Bvc_a (target)
    
    let fbn target = 
      Fbn (target)
    
    let fbn_a target = 
      Fbn_a (target)
    
    let fbne target = 
      Fbne (target)
    
    let fbne_a target = 
      Fbne_a (target)
    
    let fblg target = 
      Fblg (target)
    
    let fblg_a target = 
      Fblg_a (target)
    
    let fbul target = 
      Fbul (target)
    
    let fbul_a target = 
      Fbul_a (target)
    
    let fbl target = 
      Fbl (target)
    
    let fbl_a target = 
      Fbl_a (target)
    
    let fbug target = 
      Fbug (target)
    
    let fbug_a target = 
      Fbug_a (target)
    
    let fbg target = 
      Fbg (target)
    
    let fbg_a target = 
      Fbg_a (target)
    
    let fbu target = 
      Fbu (target)
    
    let fbu_a target = 
      Fbu_a (target)
    
    let fba target = 
      Fba (target)
    
    let fba_a target = 
      Fba_a (target)
    
    let fbe target = 
      Fbe (target)
    
    let fbe_a target = 
      Fbe_a (target)
    
    let fbue target = 
      Fbue (target)
    
    let fbue_a target = 
      Fbue_a (target)
    
    let fbge target = 
      Fbge (target)
    
    let fbge_a target = 
      Fbge_a (target)
    
    let fbuge target = 
      Fbuge (target)
    
    let fbuge_a target = 
      Fbuge_a (target)
    
    let fble target = 
      Fble (target)
    
    let fble_a target = 
      Fble_a (target)
    
    let fbule target = 
      Fbule (target)
    
    let fbule_a target = 
      Fbule_a (target)
    
    let fbo target = 
      Fbo (target)
    
    let fbo_a target = 
      Fbo_a (target)
    
    let cbn target = 
      Cbn (target)
    
    let cbn_a target = 
      Cbn_a (target)
    
    let cb123 target = 
      Cb123 (target)
    
    let cb123_a target = 
      Cb123_a (target)
    
    let cb12 target = 
      Cb12 (target)
    
    let cb12_a target = 
      Cb12_a (target)
    
    let cb13 target = 
      Cb13 (target)
    
    let cb13_a target = 
      Cb13_a (target)
    
    let cb1 target = 
      Cb1 (target)
    
    let cb1_a target = 
      Cb1_a (target)
    
    let cb23 target = 
      Cb23 (target)
    
    let cb23_a target = 
      Cb23_a (target)
    
    let cb2 target = 
      Cb2 (target)
    
    let cb2_a target = 
      Cb2_a (target)
    
    let cb3 target = 
      Cb3 (target)
    
    let cb3_a target = 
      Cb3_a (target)
    
    let cba target = 
      Cba (target)
    
    let cba_a target = 
      Cba_a (target)
    
    let cb0 target = 
      Cb0 (target)
    
    let cb0_a target = 
      Cb0_a (target)
    
    let cb03 target = 
      Cb03 (target)
    
    let cb03_a target = 
      Cb03_a (target)
    
    let cb02 target = 
      Cb02 (target)
    
    let cb02_a target = 
      Cb02_a (target)
    
    let cb023 target = 
      Cb023 (target)
    
    let cb023_a target = 
      Cb023_a (target)
    
    let cb01 target = 
      Cb01 (target)
    
    let cb01_a target = 
      Cb01_a (target)
    
    let cb013 target = 
      Cb013 (target)
    
    let cb013_a target = 
      Cb013_a (target)
    
    let cb012 target = 
      Cb012 (target)
    
    let cb012_a target = 
      Cb012_a (target)
    
    let call target = 
      Call (target)
    
    let fmovs fs2 fd = 
      Fmovs (fs2, fd)
    
    let fnegs fs2 fd = 
      Fnegs (fs2, fd)
    
    let fabss fs2 fd = 
      Fabss (fs2, fd)
    
    let fsqrts fs2 fd = 
      Fsqrts (fs2, fd)
    
    let fsqrtd fs2 fd = 
      Fsqrtd (fs2, fd)
    
    let fsqrtq fs2 fd = 
      Fsqrtq (fs2, fd)
    
    let fitos fs2 fd = 
      Fitos (fs2, fd)
    
    let fstoi fs2 fd = 
      Fstoi (fs2, fd)
    
    let fitod fs2 fd = 
      Fitod (fs2, fd)
    
    let fstod fs2 fd = 
      Fstod (fs2, fd)
    
    let fitoq fs2 fd = 
      Fitoq (fs2, fd)
    
    let fstoq fs2 fd = 
      Fstoq (fs2, fd)
    
    let fdtoi fs2 fd = 
      Fdtoi (fs2, fd)
    
    let fdtos fs2 fd = 
      Fdtos (fs2, fd)
    
    let fqtos fs2 fd = 
      Fqtos (fs2, fd)
    
    let fqtoi fs2 fd = 
      Fqtoi (fs2, fd)
    
    let fqtod fs2 fd = 
      Fqtod (fs2, fd)
    
    let fdtoq fs2 fd = 
      Fdtoq (fs2, fd)
    
    let fadds fs1 fs2 fd = 
      Fadds (fs1, fs2, fd)
    
    let fsubs fs1 fs2 fd = 
      Fsubs (fs1, fs2, fd)
    
    let fmuls fs1 fs2 fd = 
      Fmuls (fs1, fs2, fd)
    
    let fdivs fs1 fs2 fd = 
      Fdivs (fs1, fs2, fd)
    
    let faddd fs1 fs2 fd = 
      Faddd (fs1, fs2, fd)
    
    let fsubd fs1 fs2 fd = 
      Fsubd (fs1, fs2, fd)
    
    let fmuld fs1 fs2 fd = 
      Fmuld (fs1, fs2, fd)
    
    let fdivd fs1 fs2 fd = 
      Fdivd (fs1, fs2, fd)
    
    let faddq fs1 fs2 fd = 
      Faddq (fs1, fs2, fd)
    
    let fsubq fs1 fs2 fd = 
      Fsubq (fs1, fs2, fd)
    
    let fmulq fs1 fs2 fd = 
      Fmulq (fs1, fs2, fd)
    
    let fdivq fs1 fs2 fd = 
      Fdivq (fs1, fs2, fd)
    
    let fsmuld fs1 fs2 fd = 
      Fsmuld (fs1, fs2, fd)
    
    let fdmulq fs1 fs2 fd = 
      Fdmulq (fs1, fs2, fd)
    
    let fcmps fs1 fs2 = 
      Fcmps (fs1, fs2)
    
    let fcmpes fs1 fs2 = 
      Fcmpes (fs1, fs2)
    
    let fcmpd fs1 fs2 = 
      Fcmpd (fs1, fs2)
    
    let fcmped fs1 fs2 = 
      Fcmped (fs1, fs2)
    
    let fcmpq fs1 fs2 = 
      Fcmpq (fs1, fs2)
    
    let fcmpeq fs1 fs2 = 
      Fcmpeq (fs1, fs2)
    
    let nop () = 
      Nop ()
    
    let flush address = 
      Flush (address)
    
    let jmpl address rd = 
      Jmpl (address, rd)
    
    let rett address = 
      Rett (address)
    
    let tn address = 
      Tn (address)
    
    let te address = 
      Te (address)
    
    let tle address = 
      Tle (address)
    
    let tl address = 
      Tl (address)
    
    let tleu address = 
      Tleu (address)
    
    let tcs address = 
      Tcs (address)
    
    let tneg address = 
      Tneg (address)
    
    let tvs address = 
      Tvs (address)
    
    let ta address = 
      Ta (address)
    
    let tne address = 
      Tne (address)
    
    let tg address = 
      Tg (address)
    
    let tge address = 
      Tge (address)
    
    let tgu address = 
      Tgu (address)
    
    let tcc address = 
      Tcc (address)
    
    let tpos address = 
      Tpos (address)
    
    let tvc address = 
      Tvc (address)
    
    let unimp imm22 = 
      if not (Nativeint.shift_right_logical (Nativeint.shift_left imm22 10) 
              10 = imm22) then 
        Sledlib.fail ["field imm22 does not fit in 22 unsigned bits"] 
      else 
        Unimp (imm22)
    
    let sethi n rd = 
      Sethi (n, rd)
    
    let decode_sethi n rd = 
      Decode_sethi (n, rd)
    
    let set val_ rd = 
      Set (val_, rd) 
  end
