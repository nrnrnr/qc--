module type S =
  sig
    type nativeint = Base.std_nativeint
    type reg_or_imm
      = Imode of nativeint (*[~4096..4095]*)
      | Rmode of nativeint (*[0..31]*)
    
    type address
      = Generala of nativeint (*[0..31]*) * reg_or_imm
      | Dispa of nativeint (*[0..31]*) * nativeint (*[~4096..4095]*)
      | Absolutea of nativeint (*[~4096..4095]*)
      | Indexa of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Indirecta of nativeint (*[0..31]*)
    
    type regaddr
      = Indexr of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Indirectr of nativeint (*[0..31]*)
    
    type t
      = Ldsb of address * nativeint (*[0..31]*)
      | Ldsh of address * nativeint (*[0..31]*)
      | Ldub of address * nativeint (*[0..31]*)
      | Lduh of address * nativeint (*[0..31]*)
      | Ld of address * nativeint (*[0..31]*)
      | Ldstub of address * nativeint (*[0..31]*)
      | Swap_ of address * nativeint (*[0..31]*)
      | Ldd of address * nativeint (*[0..31]*)
      | Ldf of address * nativeint (*[0..31]*)
      | Lddf of address * nativeint (*[0..31]*)
      | Ldc of address * nativeint (*[0..31]*)
      | Lddc of address * nativeint (*[0..31]*)
      | Stb of nativeint (*[0..31]*) * address
      | Sth of nativeint (*[0..31]*) * address
      | St of nativeint (*[0..31]*) * address
      | Std of nativeint (*[0..31]*) * address
      | Stf of nativeint (*[0..31]*) * address
      | Stdf of nativeint (*[0..31]*) * address
      | Stc of nativeint (*[0..31]*) * address
      | Stdc of nativeint (*[0..31]*) * address
      | Ldsba of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Ldsha of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Lduba of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Lduha of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Lda of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Ldstuba of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Swapa of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Ldda of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Stba of nativeint (*[0..31]*) * regaddr * nativeint (*[0..255]*)
      | Stha of nativeint (*[0..31]*) * regaddr * nativeint (*[0..255]*)
      | Sta of nativeint (*[0..31]*) * regaddr * nativeint (*[0..255]*)
      | Stda of nativeint (*[0..31]*) * regaddr * nativeint (*[0..255]*)
      | Ldfsr of address
      | Ldcsr of address
      | Stfsr of address
      | Stcsr of address
      | Stdfq of address
      | Stdcq of address
      | Rdy of nativeint (*[0..31]*)
      | Rdpsr of nativeint (*[0..31]*)
      | Rdwim of nativeint (*[0..31]*)
      | Rdtbr of nativeint (*[0..31]*)
      | Wry of nativeint (*[0..31]*) * reg_or_imm
      | Wrpsr of nativeint (*[0..31]*) * reg_or_imm
      | Wrwim of nativeint (*[0..31]*) * reg_or_imm
      | Wrtbr of nativeint (*[0..31]*) * reg_or_imm
      | Rdasr of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Wrasr of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Stbar of unit
      | And of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Andcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Andn of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Andncc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Or of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Orcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Orn of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Orncc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Xor of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Xorcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Xnor of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Xnorcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sll of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Srl of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sra of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Add of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Addcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Addx of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Addxcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Taddcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Taddcctv of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sub of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Subcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Subx of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Subxcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Tsubcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Tsubcctv of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Mulscc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Umul of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Smul of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Umulcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Smulcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Udiv of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sdiv of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Udivcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sdivcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Save of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Restore of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Bn of nativeint 
      | Bn_a of nativeint 
      | Be of nativeint 
      | Be_a of nativeint 
      | Ble of nativeint 
      | Ble_a of nativeint 
      | Bl of nativeint 
      | Bl_a of nativeint 
      | Bleu of nativeint 
      | Bleu_a of nativeint 
      | Bcs of nativeint 
      | Bcs_a of nativeint 
      | Bneg of nativeint 
      | Bneg_a of nativeint 
      | Bvs of nativeint 
      | Bvs_a of nativeint 
      | Ba of nativeint 
      | Ba_a of nativeint 
      | Bne of nativeint 
      | Bne_a of nativeint 
      | Bg of nativeint 
      | Bg_a of nativeint 
      | Bge of nativeint 
      | Bge_a of nativeint 
      | Bgu of nativeint 
      | Bgu_a of nativeint 
      | Bcc of nativeint 
      | Bcc_a of nativeint 
      | Bpos of nativeint 
      | Bpos_a of nativeint 
      | Bvc of nativeint 
      | Bvc_a of nativeint 
      | Fbn of nativeint 
      | Fbn_a of nativeint 
      | Fbne of nativeint 
      | Fbne_a of nativeint 
      | Fblg of nativeint 
      | Fblg_a of nativeint 
      | Fbul of nativeint 
      | Fbul_a of nativeint 
      | Fbl of nativeint 
      | Fbl_a of nativeint 
      | Fbug of nativeint 
      | Fbug_a of nativeint 
      | Fbg of nativeint 
      | Fbg_a of nativeint 
      | Fbu of nativeint 
      | Fbu_a of nativeint 
      | Fba of nativeint 
      | Fba_a of nativeint 
      | Fbe of nativeint 
      | Fbe_a of nativeint 
      | Fbue of nativeint 
      | Fbue_a of nativeint 
      | Fbge of nativeint 
      | Fbge_a of nativeint 
      | Fbuge of nativeint 
      | Fbuge_a of nativeint 
      | Fble of nativeint 
      | Fble_a of nativeint 
      | Fbule of nativeint 
      | Fbule_a of nativeint 
      | Fbo of nativeint 
      | Fbo_a of nativeint 
      | Cbn of nativeint 
      | Cbn_a of nativeint 
      | Cb123 of nativeint 
      | Cb123_a of nativeint 
      | Cb12 of nativeint 
      | Cb12_a of nativeint 
      | Cb13 of nativeint 
      | Cb13_a of nativeint 
      | Cb1 of nativeint 
      | Cb1_a of nativeint 
      | Cb23 of nativeint 
      | Cb23_a of nativeint 
      | Cb2 of nativeint 
      | Cb2_a of nativeint 
      | Cb3 of nativeint 
      | Cb3_a of nativeint 
      | Cba of nativeint 
      | Cba_a of nativeint 
      | Cb0 of nativeint 
      | Cb0_a of nativeint 
      | Cb03 of nativeint 
      | Cb03_a of nativeint 
      | Cb02 of nativeint 
      | Cb02_a of nativeint 
      | Cb023 of nativeint 
      | Cb023_a of nativeint 
      | Cb01 of nativeint 
      | Cb01_a of nativeint 
      | Cb013 of nativeint 
      | Cb013_a of nativeint 
      | Cb012 of nativeint 
      | Cb012_a of nativeint 
      | Call of nativeint 
      | Fmovs of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fnegs of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fabss of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsqrts of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsqrtd of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsqrtq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fitos of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fstoi of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fitod of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fstod of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fitoq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fstoq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdtoi of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdtos of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fqtos of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fqtoi of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fqtod of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdtoq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fadds of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsubs of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fmuls of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdivs of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Faddd of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsubd of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fmuld of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdivd of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Faddq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsubq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fmulq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdivq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsmuld of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdmulq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmps of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmpes of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmpd of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmped of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmpq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmpeq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Nop of unit
      | Flush of address
      | Jmpl of address * nativeint (*[0..31]*)
      | Rett of address
      | Tn of address
      | Te of address
      | Tle of address
      | Tl of address
      | Tleu of address
      | Tcs of address
      | Tneg of address
      | Tvs of address
      | Ta of address
      | Tne of address
      | Tg of address
      | Tge of address
      | Tgu of address
      | Tcc of address
      | Tpos of address
      | Tvc of address
      | Unimp of nativeint (*[0..4194303]*)
      | Sethi of nativeint * nativeint (*[0..31]*)
      | Decode_sethi of nativeint * nativeint (*[0..31]*)
      | Set of nativeint * nativeint (*[0..31]*) 
  end

module M:S =
  struct
    type nativeint = Base.std_nativeint
    type reg_or_imm
      = Imode of nativeint (*[~4096..4095]*)
      | Rmode of nativeint (*[0..31]*)
    
    type address
      = Generala of nativeint (*[0..31]*) * reg_or_imm
      | Dispa of nativeint (*[0..31]*) * nativeint (*[~4096..4095]*)
      | Absolutea of nativeint (*[~4096..4095]*)
      | Indexa of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Indirecta of nativeint (*[0..31]*)
    
    type regaddr
      = Indexr of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Indirectr of nativeint (*[0..31]*)
    
    type t
      = Ldsb of address * nativeint (*[0..31]*)
      | Ldsh of address * nativeint (*[0..31]*)
      | Ldub of address * nativeint (*[0..31]*)
      | Lduh of address * nativeint (*[0..31]*)
      | Ld of address * nativeint (*[0..31]*)
      | Ldstub of address * nativeint (*[0..31]*)
      | Swap_ of address * nativeint (*[0..31]*)
      | Ldd of address * nativeint (*[0..31]*)
      | Ldf of address * nativeint (*[0..31]*)
      | Lddf of address * nativeint (*[0..31]*)
      | Ldc of address * nativeint (*[0..31]*)
      | Lddc of address * nativeint (*[0..31]*)
      | Stb of nativeint (*[0..31]*) * address
      | Sth of nativeint (*[0..31]*) * address
      | St of nativeint (*[0..31]*) * address
      | Std of nativeint (*[0..31]*) * address
      | Stf of nativeint (*[0..31]*) * address
      | Stdf of nativeint (*[0..31]*) * address
      | Stc of nativeint (*[0..31]*) * address
      | Stdc of nativeint (*[0..31]*) * address
      | Ldsba of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Ldsha of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Lduba of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Lduha of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Lda of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Ldstuba of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Swapa of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Ldda of regaddr * nativeint (*[0..255]*) * nativeint (*[0..31]*)
      | Stba of nativeint (*[0..31]*) * regaddr * nativeint (*[0..255]*)
      | Stha of nativeint (*[0..31]*) * regaddr * nativeint (*[0..255]*)
      | Sta of nativeint (*[0..31]*) * regaddr * nativeint (*[0..255]*)
      | Stda of nativeint (*[0..31]*) * regaddr * nativeint (*[0..255]*)
      | Ldfsr of address
      | Ldcsr of address
      | Stfsr of address
      | Stcsr of address
      | Stdfq of address
      | Stdcq of address
      | Rdy of nativeint (*[0..31]*)
      | Rdpsr of nativeint (*[0..31]*)
      | Rdwim of nativeint (*[0..31]*)
      | Rdtbr of nativeint (*[0..31]*)
      | Wry of nativeint (*[0..31]*) * reg_or_imm
      | Wrpsr of nativeint (*[0..31]*) * reg_or_imm
      | Wrwim of nativeint (*[0..31]*) * reg_or_imm
      | Wrtbr of nativeint (*[0..31]*) * reg_or_imm
      | Rdasr of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Wrasr of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Stbar of unit
      | And of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Andcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Andn of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Andncc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Or of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Orcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Orn of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Orncc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Xor of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Xorcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Xnor of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Xnorcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sll of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Srl of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sra of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Add of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Addcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Addx of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Addxcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Taddcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Taddcctv of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sub of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Subcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Subx of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Subxcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Tsubcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Tsubcctv of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Mulscc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Umul of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Smul of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Umulcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Smulcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Udiv of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sdiv of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Udivcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Sdivcc of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Save of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Restore of nativeint (*[0..31]*) * reg_or_imm * nativeint (*[0..31]*)
      | Bn of nativeint 
      | Bn_a of nativeint 
      | Be of nativeint 
      | Be_a of nativeint 
      | Ble of nativeint 
      | Ble_a of nativeint 
      | Bl of nativeint 
      | Bl_a of nativeint 
      | Bleu of nativeint 
      | Bleu_a of nativeint 
      | Bcs of nativeint 
      | Bcs_a of nativeint 
      | Bneg of nativeint 
      | Bneg_a of nativeint 
      | Bvs of nativeint 
      | Bvs_a of nativeint 
      | Ba of nativeint 
      | Ba_a of nativeint 
      | Bne of nativeint 
      | Bne_a of nativeint 
      | Bg of nativeint 
      | Bg_a of nativeint 
      | Bge of nativeint 
      | Bge_a of nativeint 
      | Bgu of nativeint 
      | Bgu_a of nativeint 
      | Bcc of nativeint 
      | Bcc_a of nativeint 
      | Bpos of nativeint 
      | Bpos_a of nativeint 
      | Bvc of nativeint 
      | Bvc_a of nativeint 
      | Fbn of nativeint 
      | Fbn_a of nativeint 
      | Fbne of nativeint 
      | Fbne_a of nativeint 
      | Fblg of nativeint 
      | Fblg_a of nativeint 
      | Fbul of nativeint 
      | Fbul_a of nativeint 
      | Fbl of nativeint 
      | Fbl_a of nativeint 
      | Fbug of nativeint 
      | Fbug_a of nativeint 
      | Fbg of nativeint 
      | Fbg_a of nativeint 
      | Fbu of nativeint 
      | Fbu_a of nativeint 
      | Fba of nativeint 
      | Fba_a of nativeint 
      | Fbe of nativeint 
      | Fbe_a of nativeint 
      | Fbue of nativeint 
      | Fbue_a of nativeint 
      | Fbge of nativeint 
      | Fbge_a of nativeint 
      | Fbuge of nativeint 
      | Fbuge_a of nativeint 
      | Fble of nativeint 
      | Fble_a of nativeint 
      | Fbule of nativeint 
      | Fbule_a of nativeint 
      | Fbo of nativeint 
      | Fbo_a of nativeint 
      | Cbn of nativeint 
      | Cbn_a of nativeint 
      | Cb123 of nativeint 
      | Cb123_a of nativeint 
      | Cb12 of nativeint 
      | Cb12_a of nativeint 
      | Cb13 of nativeint 
      | Cb13_a of nativeint 
      | Cb1 of nativeint 
      | Cb1_a of nativeint 
      | Cb23 of nativeint 
      | Cb23_a of nativeint 
      | Cb2 of nativeint 
      | Cb2_a of nativeint 
      | Cb3 of nativeint 
      | Cb3_a of nativeint 
      | Cba of nativeint 
      | Cba_a of nativeint 
      | Cb0 of nativeint 
      | Cb0_a of nativeint 
      | Cb03 of nativeint 
      | Cb03_a of nativeint 
      | Cb02 of nativeint 
      | Cb02_a of nativeint 
      | Cb023 of nativeint 
      | Cb023_a of nativeint 
      | Cb01 of nativeint 
      | Cb01_a of nativeint 
      | Cb013 of nativeint 
      | Cb013_a of nativeint 
      | Cb012 of nativeint 
      | Cb012_a of nativeint 
      | Call of nativeint 
      | Fmovs of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fnegs of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fabss of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsqrts of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsqrtd of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsqrtq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fitos of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fstoi of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fitod of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fstod of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fitoq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fstoq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdtoi of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdtos of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fqtos of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fqtoi of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fqtod of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdtoq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fadds of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsubs of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fmuls of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdivs of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Faddd of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsubd of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fmuld of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdivd of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Faddq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsubq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fmulq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdivq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fsmuld of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fdmulq of 
          nativeint (*[0..31]*) * nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmps of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmpes of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmpd of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmped of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmpq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Fcmpeq of nativeint (*[0..31]*) * nativeint (*[0..31]*)
      | Nop of unit
      | Flush of address
      | Jmpl of address * nativeint (*[0..31]*)
      | Rett of address
      | Tn of address
      | Te of address
      | Tle of address
      | Tl of address
      | Tleu of address
      | Tcs of address
      | Tneg of address
      | Tvs of address
      | Ta of address
      | Tne of address
      | Tg of address
      | Tge of address
      | Tgu of address
      | Tcc of address
      | Tpos of address
      | Tvc of address
      | Unimp of nativeint (*[0..4194303]*)
      | Sethi of nativeint * nativeint (*[0..31]*)
      | Decode_sethi of nativeint * nativeint (*[0..31]*)
      | Set of nativeint * nativeint (*[0..31]*) 
  end

module Rec(I : SparcConstructors.S) =
struct
  


let rec_reg_or_imm =
fun x ->
  (match x with 
     | M.Imode (x1) -> I.imode x1
     | M.Rmode (x2) -> I.rmode x2)
let rec_address =
fun x ->
  (match x with 
     | M.Generala (x3,x4) -> I.generala x3 (rec_reg_or_imm x4)
     | M.Dispa (x5,x6) -> I.dispa x5 x6
     | M.Absolutea (x7) -> I.absolutea x7
     | M.Indexa (x8,x9) -> I.indexa x8 x9
     | M.Indirecta (x10) -> I.indirecta x10)
let rec_regaddr =
fun x ->
  (match x with 
     | M.Indexr (x11,x12) -> I.indexr x11 x12
     | M.Indirectr (x13) -> I.indirectr x13)
let rec_t =
fun x ->
  (match x with 
     | M.Ldsb (x14,x15) -> I.ldsb (rec_address x14) x15
     | M.Ldsh (x16,x17) -> I.ldsh (rec_address x16) x17
     | M.Ldub (x18,x19) -> I.ldub (rec_address x18) x19
     | M.Lduh (x20,x21) -> I.lduh (rec_address x20) x21
     | M.Ld (x22,x23) -> I.ld (rec_address x22) x23
     | M.Ldstub (x24,x25) -> I.ldstub (rec_address x24) x25
     | M.Swap_ (x26,x27) -> I.swap_ (rec_address x26) x27
     | M.Ldd (x28,x29) -> I.ldd (rec_address x28) x29
     | M.Ldf (x30,x31) -> I.ldf (rec_address x30) x31
     | M.Lddf (x32,x33) -> I.lddf (rec_address x32) x33
     | M.Ldc (x34,x35) -> I.ldc (rec_address x34) x35
     | M.Lddc (x36,x37) -> I.lddc (rec_address x36) x37
     | M.Stb (x38,x39) -> I.stb x38 (rec_address x39)
     | M.Sth (x40,x41) -> I.sth x40 (rec_address x41)
     | M.St (x42,x43) -> I.st x42 (rec_address x43)
     | M.Std (x44,x45) -> I.std x44 (rec_address x45)
     | M.Stf (x46,x47) -> I.stf x46 (rec_address x47)
     | M.Stdf (x48,x49) -> I.stdf x48 (rec_address x49)
     | M.Stc (x50,x51) -> I.stc x50 (rec_address x51)
     | M.Stdc (x52,x53) -> I.stdc x52 (rec_address x53)
     | M.Ldsba (x54,x55,x56) -> I.ldsba (rec_regaddr x54) x55 x56
     | M.Ldsha (x57,x58,x59) -> I.ldsha (rec_regaddr x57) x58 x59
     | M.Lduba (x60,x61,x62) -> I.lduba (rec_regaddr x60) x61 x62
     | M.Lduha (x63,x64,x65) -> I.lduha (rec_regaddr x63) x64 x65
     | M.Lda (x66,x67,x68) -> I.lda (rec_regaddr x66) x67 x68
     | M.Ldstuba (x69,x70,x71) -> I.ldstuba (rec_regaddr x69) x70 x71
     | M.Swapa (x72,x73,x74) -> I.swapa (rec_regaddr x72) x73 x74
     | M.Ldda (x75,x76,x77) -> I.ldda (rec_regaddr x75) x76 x77
     | M.Stba (x78,x79,x80) -> I.stba x78 (rec_regaddr x79) x80
     | M.Stha (x81,x82,x83) -> I.stha x81 (rec_regaddr x82) x83
     | M.Sta (x84,x85,x86) -> I.sta x84 (rec_regaddr x85) x86
     | M.Stda (x87,x88,x89) -> I.stda x87 (rec_regaddr x88) x89
     | M.Ldfsr (x90) -> I.ldfsr (rec_address x90)
     | M.Ldcsr (x91) -> I.ldcsr (rec_address x91)
     | M.Stfsr (x92) -> I.stfsr (rec_address x92)
     | M.Stcsr (x93) -> I.stcsr (rec_address x93)
     | M.Stdfq (x94) -> I.stdfq (rec_address x94)
     | M.Stdcq (x95) -> I.stdcq (rec_address x95)
     | M.Rdy (x96) -> I.rdy x96
     | M.Rdpsr (x97) -> I.rdpsr x97
     | M.Rdwim (x98) -> I.rdwim x98
     | M.Rdtbr (x99) -> I.rdtbr x99
     | M.Wry (x100,x101) -> I.wry x100 (rec_reg_or_imm x101)
     | M.Wrpsr (x102,x103) -> I.wrpsr x102 (rec_reg_or_imm x103)
     | M.Wrwim (x104,x105) -> I.wrwim x104 (rec_reg_or_imm x105)
     | M.Wrtbr (x106,x107) -> I.wrtbr x106 (rec_reg_or_imm x107)
     | M.Rdasr (x108,x109) -> I.rdasr x108 x109
     | M.Wrasr (x110,x111,x112) ->
    I.wrasr x110 (rec_reg_or_imm x111) x112
     | M.Stbar () -> I.stbar ()
     | M.And (x113,x114,x115) -> I.and_ x113 (rec_reg_or_imm x114) x115
     | M.Andcc (x116,x117,x118) ->
    I.andcc x116 (rec_reg_or_imm x117) x118
     | M.Andn (x119,x120,x121) ->
    I.andn x119 (rec_reg_or_imm x120) x121
     | M.Andncc (x122,x123,x124) ->
    I.andncc x122 (rec_reg_or_imm x123) x124
     | M.Or (x125,x126,x127) -> I.or_ x125 (rec_reg_or_imm x126) x127
     | M.Orcc (x128,x129,x130) ->
    I.orcc x128 (rec_reg_or_imm x129) x130
     | M.Orn (x131,x132,x133) -> I.orn x131 (rec_reg_or_imm x132) x133
     | M.Orncc (x134,x135,x136) ->
    I.orncc x134 (rec_reg_or_imm x135) x136
     | M.Xor (x137,x138,x139) -> I.xor x137 (rec_reg_or_imm x138) x139
     | M.Xorcc (x140,x141,x142) ->
    I.xorcc x140 (rec_reg_or_imm x141) x142
     | M.Xnor (x143,x144,x145) ->
    I.xnor x143 (rec_reg_or_imm x144) x145
     | M.Xnorcc (x146,x147,x148) ->
    I.xnorcc x146 (rec_reg_or_imm x147) x148
     | M.Sll (x149,x150,x151) -> I.sll x149 (rec_reg_or_imm x150) x151
     | M.Srl (x152,x153,x154) -> I.srl x152 (rec_reg_or_imm x153) x154
     | M.Sra (x155,x156,x157) -> I.sra x155 (rec_reg_or_imm x156) x157
     | M.Add (x158,x159,x160) -> I.add x158 (rec_reg_or_imm x159) x160
     | M.Addcc (x161,x162,x163) ->
    I.addcc x161 (rec_reg_or_imm x162) x163
     | M.Addx (x164,x165,x166) ->
    I.addx x164 (rec_reg_or_imm x165) x166
     | M.Addxcc (x167,x168,x169) ->
    I.addxcc x167 (rec_reg_or_imm x168) x169
     | M.Taddcc (x170,x171,x172) ->
    I.taddcc x170 (rec_reg_or_imm x171) x172
     | M.Taddcctv (x173,x174,x175) ->
    I.taddcctv x173 (rec_reg_or_imm x174) x175
     | M.Sub (x176,x177,x178) -> I.sub x176 (rec_reg_or_imm x177) x178
     | M.Subcc (x179,x180,x181) ->
    I.subcc x179 (rec_reg_or_imm x180) x181
     | M.Subx (x182,x183,x184) ->
    I.subx x182 (rec_reg_or_imm x183) x184
     | M.Subxcc (x185,x186,x187) ->
    I.subxcc x185 (rec_reg_or_imm x186) x187
     | M.Tsubcc (x188,x189,x190) ->
    I.tsubcc x188 (rec_reg_or_imm x189) x190
     | M.Tsubcctv (x191,x192,x193) ->
    I.tsubcctv x191 (rec_reg_or_imm x192) x193
     | M.Mulscc (x194,x195,x196) ->
    I.mulscc x194 (rec_reg_or_imm x195) x196
     | M.Umul (x197,x198,x199) ->
    I.umul x197 (rec_reg_or_imm x198) x199
     | M.Smul (x200,x201,x202) ->
    I.smul x200 (rec_reg_or_imm x201) x202
     | M.Umulcc (x203,x204,x205) ->
    I.umulcc x203 (rec_reg_or_imm x204) x205
     | M.Smulcc (x206,x207,x208) ->
    I.smulcc x206 (rec_reg_or_imm x207) x208
     | M.Udiv (x209,x210,x211) ->
    I.udiv x209 (rec_reg_or_imm x210) x211
     | M.Sdiv (x212,x213,x214) ->
    I.sdiv x212 (rec_reg_or_imm x213) x214
     | M.Udivcc (x215,x216,x217) ->
    I.udivcc x215 (rec_reg_or_imm x216) x217
     | M.Sdivcc (x218,x219,x220) ->
    I.sdivcc x218 (rec_reg_or_imm x219) x220
     | M.Save (x221,x222,x223) ->
    I.save x221 (rec_reg_or_imm x222) x223
     | M.Restore (x224,x225,x226) ->
    I.restore x224 (rec_reg_or_imm x225) x226
     | M.Bn (x227) -> I.bn x227
     | M.Bn_a (x228) -> I.bn_a x228
     | M.Be (x229) -> I.be x229
     | M.Be_a (x230) -> I.be_a x230
     | M.Ble (x231) -> I.ble x231
     | M.Ble_a (x232) -> I.ble_a x232
     | M.Bl (x233) -> I.bl x233
     | M.Bl_a (x234) -> I.bl_a x234
     | M.Bleu (x235) -> I.bleu x235
     | M.Bleu_a (x236) -> I.bleu_a x236
     | M.Bcs (x237) -> I.bcs x237
     | M.Bcs_a (x238) -> I.bcs_a x238
     | M.Bneg (x239) -> I.bneg x239
     | M.Bneg_a (x240) -> I.bneg_a x240
     | M.Bvs (x241) -> I.bvs x241
     | M.Bvs_a (x242) -> I.bvs_a x242
     | M.Ba (x243) -> I.ba x243
     | M.Ba_a (x244) -> I.ba_a x244
     | M.Bne (x245) -> I.bne x245
     | M.Bne_a (x246) -> I.bne_a x246
     | M.Bg (x247) -> I.bg x247
     | M.Bg_a (x248) -> I.bg_a x248
     | M.Bge (x249) -> I.bge x249
     | M.Bge_a (x250) -> I.bge_a x250
     | M.Bgu (x251) -> I.bgu x251
     | M.Bgu_a (x252) -> I.bgu_a x252
     | M.Bcc (x253) -> I.bcc x253
     | M.Bcc_a (x254) -> I.bcc_a x254
     | M.Bpos (x255) -> I.bpos x255
     | M.Bpos_a (x256) -> I.bpos_a x256
     | M.Bvc (x257) -> I.bvc x257
     | M.Bvc_a (x258) -> I.bvc_a x258
     | M.Fbn (x259) -> I.fbn x259
     | M.Fbn_a (x260) -> I.fbn_a x260
     | M.Fbne (x261) -> I.fbne x261
     | M.Fbne_a (x262) -> I.fbne_a x262
     | M.Fblg (x263) -> I.fblg x263
     | M.Fblg_a (x264) -> I.fblg_a x264
     | M.Fbul (x265) -> I.fbul x265
     | M.Fbul_a (x266) -> I.fbul_a x266
     | M.Fbl (x267) -> I.fbl x267
     | M.Fbl_a (x268) -> I.fbl_a x268
     | M.Fbug (x269) -> I.fbug x269
     | M.Fbug_a (x270) -> I.fbug_a x270
     | M.Fbg (x271) -> I.fbg x271
     | M.Fbg_a (x272) -> I.fbg_a x272
     | M.Fbu (x273) -> I.fbu x273
     | M.Fbu_a (x274) -> I.fbu_a x274
     | M.Fba (x275) -> I.fba x275
     | M.Fba_a (x276) -> I.fba_a x276
     | M.Fbe (x277) -> I.fbe x277
     | M.Fbe_a (x278) -> I.fbe_a x278
     | M.Fbue (x279) -> I.fbue x279
     | M.Fbue_a (x280) -> I.fbue_a x280
     | M.Fbge (x281) -> I.fbge x281
     | M.Fbge_a (x282) -> I.fbge_a x282
     | M.Fbuge (x283) -> I.fbuge x283
     | M.Fbuge_a (x284) -> I.fbuge_a x284
     | M.Fble (x285) -> I.fble x285
     | M.Fble_a (x286) -> I.fble_a x286
     | M.Fbule (x287) -> I.fbule x287
     | M.Fbule_a (x288) -> I.fbule_a x288
     | M.Fbo (x289) -> I.fbo x289
     | M.Fbo_a (x290) -> I.fbo_a x290
     | M.Cbn (x291) -> I.cbn x291
     | M.Cbn_a (x292) -> I.cbn_a x292
     | M.Cb123 (x293) -> I.cb123 x293
     | M.Cb123_a (x294) -> I.cb123_a x294
     | M.Cb12 (x295) -> I.cb12 x295
     | M.Cb12_a (x296) -> I.cb12_a x296
     | M.Cb13 (x297) -> I.cb13 x297
     | M.Cb13_a (x298) -> I.cb13_a x298
     | M.Cb1 (x299) -> I.cb1 x299
     | M.Cb1_a (x300) -> I.cb1_a x300
     | M.Cb23 (x301) -> I.cb23 x301
     | M.Cb23_a (x302) -> I.cb23_a x302
     | M.Cb2 (x303) -> I.cb2 x303
     | M.Cb2_a (x304) -> I.cb2_a x304
     | M.Cb3 (x305) -> I.cb3 x305
     | M.Cb3_a (x306) -> I.cb3_a x306
     | M.Cba (x307) -> I.cba x307
     | M.Cba_a (x308) -> I.cba_a x308
     | M.Cb0 (x309) -> I.cb0 x309
     | M.Cb0_a (x310) -> I.cb0_a x310
     | M.Cb03 (x311) -> I.cb03 x311
     | M.Cb03_a (x312) -> I.cb03_a x312
     | M.Cb02 (x313) -> I.cb02 x313
     | M.Cb02_a (x314) -> I.cb02_a x314
     | M.Cb023 (x315) -> I.cb023 x315
     | M.Cb023_a (x316) -> I.cb023_a x316
     | M.Cb01 (x317) -> I.cb01 x317
     | M.Cb01_a (x318) -> I.cb01_a x318
     | M.Cb013 (x319) -> I.cb013 x319
     | M.Cb013_a (x320) -> I.cb013_a x320
     | M.Cb012 (x321) -> I.cb012 x321
     | M.Cb012_a (x322) -> I.cb012_a x322
     | M.Call (x323) -> I.call x323
     | M.Fmovs (x324,x325) -> I.fmovs x324 x325
     | M.Fnegs (x326,x327) -> I.fnegs x326 x327
     | M.Fabss (x328,x329) -> I.fabss x328 x329
     | M.Fsqrts (x330,x331) -> I.fsqrts x330 x331
     | M.Fsqrtd (x332,x333) -> I.fsqrtd x332 x333
     | M.Fsqrtq (x334,x335) -> I.fsqrtq x334 x335
     | M.Fitos (x336,x337) -> I.fitos x336 x337
     | M.Fstoi (x338,x339) -> I.fstoi x338 x339
     | M.Fitod (x340,x341) -> I.fitod x340 x341
     | M.Fstod (x342,x343) -> I.fstod x342 x343
     | M.Fitoq (x344,x345) -> I.fitoq x344 x345
     | M.Fstoq (x346,x347) -> I.fstoq x346 x347
     | M.Fdtoi (x348,x349) -> I.fdtoi x348 x349
     | M.Fdtos (x350,x351) -> I.fdtos x350 x351
     | M.Fqtos (x352,x353) -> I.fqtos x352 x353
     | M.Fqtoi (x354,x355) -> I.fqtoi x354 x355
     | M.Fqtod (x356,x357) -> I.fqtod x356 x357
     | M.Fdtoq (x358,x359) -> I.fdtoq x358 x359
     | M.Fadds (x360,x361,x362) -> I.fadds x360 x361 x362
     | M.Fsubs (x363,x364,x365) -> I.fsubs x363 x364 x365
     | M.Fmuls (x366,x367,x368) -> I.fmuls x366 x367 x368
     | M.Fdivs (x369,x370,x371) -> I.fdivs x369 x370 x371
     | M.Faddd (x372,x373,x374) -> I.faddd x372 x373 x374
     | M.Fsubd (x375,x376,x377) -> I.fsubd x375 x376 x377
     | M.Fmuld (x378,x379,x380) -> I.fmuld x378 x379 x380
     | M.Fdivd (x381,x382,x383) -> I.fdivd x381 x382 x383
     | M.Faddq (x384,x385,x386) -> I.faddq x384 x385 x386
     | M.Fsubq (x387,x388,x389) -> I.fsubq x387 x388 x389
     | M.Fmulq (x390,x391,x392) -> I.fmulq x390 x391 x392
     | M.Fdivq (x393,x394,x395) -> I.fdivq x393 x394 x395
     | M.Fsmuld (x396,x397,x398) -> I.fsmuld x396 x397 x398
     | M.Fdmulq (x399,x400,x401) -> I.fdmulq x399 x400 x401
     | M.Fcmps (x402,x403) -> I.fcmps x402 x403
     | M.Fcmpes (x404,x405) -> I.fcmpes x404 x405
     | M.Fcmpd (x406,x407) -> I.fcmpd x406 x407
     | M.Fcmped (x408,x409) -> I.fcmped x408 x409
     | M.Fcmpq (x410,x411) -> I.fcmpq x410 x411
     | M.Fcmpeq (x412,x413) -> I.fcmpeq x412 x413
     | M.Nop () -> I.nop ()
     | M.Flush (x414) -> I.flush (rec_address x414)
     | M.Jmpl (x415,x416) -> I.jmpl (rec_address x415) x416
     | M.Rett (x417) -> I.rett (rec_address x417)
     | M.Tn (x418) -> I.tn (rec_address x418)
     | M.Te (x419) -> I.te (rec_address x419)
     | M.Tle (x420) -> I.tle (rec_address x420)
     | M.Tl (x421) -> I.tl (rec_address x421)
     | M.Tleu (x422) -> I.tleu (rec_address x422)
     | M.Tcs (x423) -> I.tcs (rec_address x423)
     | M.Tneg (x424) -> I.tneg (rec_address x424)
     | M.Tvs (x425) -> I.tvs (rec_address x425)
     | M.Ta (x426) -> I.ta (rec_address x426)
     | M.Tne (x427) -> I.tne (rec_address x427)
     | M.Tg (x428) -> I.tg (rec_address x428)
     | M.Tge (x429) -> I.tge (rec_address x429)
     | M.Tgu (x430) -> I.tgu (rec_address x430)
     | M.Tcc (x431) -> I.tcc (rec_address x431)
     | M.Tpos (x432) -> I.tpos (rec_address x432)
     | M.Tvc (x433) -> I.tvc (rec_address x433)
     | M.Unimp (x434) -> I.unimp x434
     | M.Sethi (x435,x436) -> I.sethi x435 x436
     | M.Decode_sethi (x437,x438) -> I.decode_sethi x437 x438
     | M.Set (x439,x440) -> I.set x439 x440)




end
