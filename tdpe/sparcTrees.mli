module type S =
  sig
    type nativeint = Tdpe.dynamic
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

module M : S
module Rec(I : SparcConstructors.S) :
    sig
      val rec_t : M.t -> I.t
    end
