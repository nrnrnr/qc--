module type S = sig
  type nativeint = Base.std_nativeint
  type reg_or_imm
  type address
  type regaddr
  type t
  val imode : simm13:nativeint (*[~4096..4095]*) -> reg_or_imm
  val rmode : rs2:nativeint (*[0..31]*) -> reg_or_imm
  val generala : rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> address
  val dispa : 
    rs1:nativeint (*[0..31]*) -> simm13:nativeint (*[~4096..4095]*) -> address
  val absolutea : simm13:nativeint (*[~4096..4095]*) -> address
  val indexa : 
    rs1:nativeint (*[0..31]*) -> rs2:nativeint (*[0..31]*) -> address
  val indirecta : rs1:nativeint (*[0..31]*) -> address
  val ldsb : address:address -> rd:nativeint (*[0..31]*) -> t
  val ldsh : address:address -> rd:nativeint (*[0..31]*) -> t
  val ldub : address:address -> rd:nativeint (*[0..31]*) -> t
  val lduh : address:address -> rd:nativeint (*[0..31]*) -> t
  val ld : address:address -> rd:nativeint (*[0..31]*) -> t
  val ldstub : address:address -> rd:nativeint (*[0..31]*) -> t
  val swap_ : address:address -> rd:nativeint (*[0..31]*) -> t
  val ldd : address:address -> rd:nativeint (*[0..31]*) -> t
  val ldf : address:address -> fd:nativeint (*[0..31]*) -> t
  val lddf : address:address -> fd:nativeint (*[0..31]*) -> t
  val ldc : address:address -> cd:nativeint (*[0..31]*) -> t
  val lddc : address:address -> cd:nativeint (*[0..31]*) -> t
  val stb : rd:nativeint (*[0..31]*) -> address:address -> t
  val sth : rd:nativeint (*[0..31]*) -> address:address -> t
  val st : rd:nativeint (*[0..31]*) -> address:address -> t
  val std : rd:nativeint (*[0..31]*) -> address:address -> t
  val stf : fd:nativeint (*[0..31]*) -> address:address -> t
  val stdf : fd:nativeint (*[0..31]*) -> address:address -> t
  val stc : cd:nativeint (*[0..31]*) -> address:address -> t
  val stdc : cd:nativeint (*[0..31]*) -> address:address -> t
  val indexr : 
    rs1:nativeint (*[0..31]*) -> rs2:nativeint (*[0..31]*) -> regaddr
  val indirectr : rs1:nativeint (*[0..31]*) -> regaddr
  val ldsba : 
    regaddr:regaddr -> asi:nativeint (*[0..255]*) -> 
    rd:nativeint (*[0..31]*) -> t
  val ldsha : 
    regaddr:regaddr -> asi:nativeint (*[0..255]*) -> 
    rd:nativeint (*[0..31]*) -> t
  val lduba : 
    regaddr:regaddr -> asi:nativeint (*[0..255]*) -> 
    rd:nativeint (*[0..31]*) -> t
  val lduha : 
    regaddr:regaddr -> asi:nativeint (*[0..255]*) -> 
    rd:nativeint (*[0..31]*) -> t
  val lda : 
    regaddr:regaddr -> asi:nativeint (*[0..255]*) -> 
    rd:nativeint (*[0..31]*) -> t
  val ldstuba : 
    regaddr:regaddr -> asi:nativeint (*[0..255]*) -> 
    rd:nativeint (*[0..31]*) -> t
  val swapa : 
    regaddr:regaddr -> asi:nativeint (*[0..255]*) -> 
    rd:nativeint (*[0..31]*) -> t
  val ldda : 
    regaddr:regaddr -> asi:nativeint (*[0..255]*) -> 
    rd:nativeint (*[0..31]*) -> t
  val stba : 
    rd:nativeint (*[0..31]*) -> regaddr:regaddr -> 
    asi:nativeint (*[0..255]*) -> t
  val stha : 
    rd:nativeint (*[0..31]*) -> regaddr:regaddr -> 
    asi:nativeint (*[0..255]*) -> t
  val sta : 
    rd:nativeint (*[0..31]*) -> regaddr:regaddr -> 
    asi:nativeint (*[0..255]*) -> t
  val stda : 
    rd:nativeint (*[0..31]*) -> regaddr:regaddr -> 
    asi:nativeint (*[0..255]*) -> t
  val ldfsr : address:address -> t
  val ldcsr : address:address -> t
  val stfsr : address:address -> t
  val stcsr : address:address -> t
  val stdfq : address:address -> t
  val stdcq : address:address -> t
  val rdy : rd:nativeint (*[0..31]*) -> t
  val rdpsr : rd:nativeint (*[0..31]*) -> t
  val rdwim : rd:nativeint (*[0..31]*) -> t
  val rdtbr : rd:nativeint (*[0..31]*) -> t
  val wry : rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> t
  val wrpsr : rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> t
  val wrwim : rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> t
  val wrtbr : rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> t
  val rdasr : rs1i:nativeint (*[0..31]*) -> rd:nativeint (*[0..31]*) -> t
  val wrasr : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rdi:nativeint (*[0..31]*) -> t
  val stbar : unit -> t
  val and_ : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val andcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val andn : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val andncc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val or_ : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val orcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val orn : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val orncc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val xor : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val xorcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val xnor : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val xnorcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val sll : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val srl : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val sra : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val add : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val addcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val addx : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val addxcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val taddcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val taddcctv : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val sub : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val subcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val subx : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val subxcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val tsubcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val tsubcctv : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val mulscc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val umul : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val smul : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val umulcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val smulcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val udiv : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val sdiv : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val udivcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val sdivcc : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val save : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val restore : 
    rs1:nativeint (*[0..31]*) -> reg_or_imm:reg_or_imm -> 
    rd:nativeint (*[0..31]*) -> t
  val bn : target:nativeint  -> t
  val bn_a : target:nativeint  -> t
  val be : target:nativeint  -> t
  val be_a : target:nativeint  -> t
  val ble : target:nativeint  -> t
  val ble_a : target:nativeint  -> t
  val bl : target:nativeint  -> t
  val bl_a : target:nativeint  -> t
  val bleu : target:nativeint  -> t
  val bleu_a : target:nativeint  -> t
  val bcs : target:nativeint  -> t
  val bcs_a : target:nativeint  -> t
  val bneg : target:nativeint  -> t
  val bneg_a : target:nativeint  -> t
  val bvs : target:nativeint  -> t
  val bvs_a : target:nativeint  -> t
  val ba : target:nativeint  -> t
  val ba_a : target:nativeint  -> t
  val bne : target:nativeint  -> t
  val bne_a : target:nativeint  -> t
  val bg : target:nativeint  -> t
  val bg_a : target:nativeint  -> t
  val bge : target:nativeint  -> t
  val bge_a : target:nativeint  -> t
  val bgu : target:nativeint  -> t
  val bgu_a : target:nativeint  -> t
  val bcc : target:nativeint  -> t
  val bcc_a : target:nativeint  -> t
  val bpos : target:nativeint  -> t
  val bpos_a : target:nativeint  -> t
  val bvc : target:nativeint  -> t
  val bvc_a : target:nativeint  -> t
  val fbn : target:nativeint  -> t
  val fbn_a : target:nativeint  -> t
  val fbne : target:nativeint  -> t
  val fbne_a : target:nativeint  -> t
  val fblg : target:nativeint  -> t
  val fblg_a : target:nativeint  -> t
  val fbul : target:nativeint  -> t
  val fbul_a : target:nativeint  -> t
  val fbl : target:nativeint  -> t
  val fbl_a : target:nativeint  -> t
  val fbug : target:nativeint  -> t
  val fbug_a : target:nativeint  -> t
  val fbg : target:nativeint  -> t
  val fbg_a : target:nativeint  -> t
  val fbu : target:nativeint  -> t
  val fbu_a : target:nativeint  -> t
  val fba : target:nativeint  -> t
  val fba_a : target:nativeint  -> t
  val fbe : target:nativeint  -> t
  val fbe_a : target:nativeint  -> t
  val fbue : target:nativeint  -> t
  val fbue_a : target:nativeint  -> t
  val fbge : target:nativeint  -> t
  val fbge_a : target:nativeint  -> t
  val fbuge : target:nativeint  -> t
  val fbuge_a : target:nativeint  -> t
  val fble : target:nativeint  -> t
  val fble_a : target:nativeint  -> t
  val fbule : target:nativeint  -> t
  val fbule_a : target:nativeint  -> t
  val fbo : target:nativeint  -> t
  val fbo_a : target:nativeint  -> t
  val cbn : target:nativeint  -> t
  val cbn_a : target:nativeint  -> t
  val cb123 : target:nativeint  -> t
  val cb123_a : target:nativeint  -> t
  val cb12 : target:nativeint  -> t
  val cb12_a : target:nativeint  -> t
  val cb13 : target:nativeint  -> t
  val cb13_a : target:nativeint  -> t
  val cb1 : target:nativeint  -> t
  val cb1_a : target:nativeint  -> t
  val cb23 : target:nativeint  -> t
  val cb23_a : target:nativeint  -> t
  val cb2 : target:nativeint  -> t
  val cb2_a : target:nativeint  -> t
  val cb3 : target:nativeint  -> t
  val cb3_a : target:nativeint  -> t
  val cba : target:nativeint  -> t
  val cba_a : target:nativeint  -> t
  val cb0 : target:nativeint  -> t
  val cb0_a : target:nativeint  -> t
  val cb03 : target:nativeint  -> t
  val cb03_a : target:nativeint  -> t
  val cb02 : target:nativeint  -> t
  val cb02_a : target:nativeint  -> t
  val cb023 : target:nativeint  -> t
  val cb023_a : target:nativeint  -> t
  val cb01 : target:nativeint  -> t
  val cb01_a : target:nativeint  -> t
  val cb013 : target:nativeint  -> t
  val cb013_a : target:nativeint  -> t
  val cb012 : target:nativeint  -> t
  val cb012_a : target:nativeint  -> t
  val call : target:nativeint  -> t
  val fmovs : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fnegs : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fabss : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fsqrts : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fsqrtd : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fsqrtq : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fitos : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fstoi : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fitod : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fstod : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fitoq : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fstoq : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fdtoi : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fdtos : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fqtos : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fqtoi : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fqtod : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fdtoq : fs2:nativeint (*[0..31]*) -> fd:nativeint (*[0..31]*) -> t
  val fadds : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fsubs : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fmuls : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fdivs : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val faddd : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fsubd : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fmuld : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fdivd : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val faddq : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fsubq : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fmulq : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fdivq : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fsmuld : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fdmulq : 
    fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> 
    fd:nativeint (*[0..31]*) -> t
  val fcmps : fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> t
  val fcmpes : fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> t
  val fcmpd : fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> t
  val fcmped : fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> t
  val fcmpq : fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> t
  val fcmpeq : fs1:nativeint (*[0..31]*) -> fs2:nativeint (*[0..31]*) -> t
  val nop : unit -> t
  val flush : address:address -> t
  val jmpl : address:address -> rd:nativeint (*[0..31]*) -> t
  val rett : address:address -> t
  val tn : address:address -> t
  val te : address:address -> t
  val tle : address:address -> t
  val tl : address:address -> t
  val tleu : address:address -> t
  val tcs : address:address -> t
  val tneg : address:address -> t
  val tvs : address:address -> t
  val ta : address:address -> t
  val tne : address:address -> t
  val tg : address:address -> t
  val tge : address:address -> t
  val tgu : address:address -> t
  val tcc : address:address -> t
  val tpos : address:address -> t
  val tvc : address:address -> t
  val unimp : imm22:nativeint (*[0..4194303]*) -> t
  val sethi : n:nativeint -> rd:nativeint (*[0..31]*) -> t
  val decode_sethi : n:nativeint -> rd:nativeint (*[0..31]*) -> t
  val set : val_:nativeint -> rd:nativeint (*[0..31]*) -> t 
end


