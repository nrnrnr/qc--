module type S = sig 
    module Reloc : Sledlib.RELOCATABLE
    type rel8
    type rel16
    type rel32
    type mem
    type eaddr
    type t
    val rel8 : reloc:nativeint Reloc.relocatable -> rel8
    val rel16 : reloc:nativeint Reloc.relocatable -> rel16
    val rel32 : reloc:nativeint Reloc.relocatable -> rel32
    val indir : reg:nativeint -> mem
    val disp8 : d:nativeint Reloc.relocatable -> reg:nativeint -> mem
    val disp32 : d:nativeint Reloc.relocatable -> reg:nativeint -> mem
    val abs32 : a:nativeint Reloc.relocatable -> mem
    val reg : reg:nativeint -> eaddr
    val index : 
      base:nativeint (*[0..7]*) -> index:nativeint (*[0..7]*) -> 
      ss:nativeint (*[0..3]*) -> mem
    val index8 : 
      d:nativeint Reloc.relocatable -> base:nativeint (*[0..7]*) -> 
      index:nativeint (*[0..7]*) -> ss:nativeint (*[0..3]*) -> mem
    val index32 : 
      d:nativeint Reloc.relocatable -> base:nativeint (*[0..7]*) -> 
      index:nativeint (*[0..7]*) -> ss:nativeint (*[0..3]*) -> mem
    val shortindex : 
      d:nativeint Reloc.relocatable -> index:nativeint (*[0..7]*) -> 
      ss:nativeint (*[0..3]*) -> mem
    val e : mem:mem -> eaddr
    val addial : i8:nativeint (*[~128..127]*) -> t
    val orial : i8:nativeint (*[~128..127]*) -> t
    val adcial : i8:nativeint (*[~128..127]*) -> t
    val sbbial : i8:nativeint (*[~128..127]*) -> t
    val andial : i8:nativeint (*[~128..127]*) -> t
    val subial : i8:nativeint (*[~128..127]*) -> t
    val xorial : i8:nativeint (*[~128..127]*) -> t
    val cmpial : i8:nativeint (*[~128..127]*) -> t
    val addiax : i16:nativeint (*[~32768..32767]*) -> t
    val oriax : i16:nativeint (*[~32768..32767]*) -> t
    val adciax : i16:nativeint (*[~32768..32767]*) -> t
    val sbbiax : i16:nativeint (*[~32768..32767]*) -> t
    val andiax : i16:nativeint (*[~32768..32767]*) -> t
    val subiax : i16:nativeint (*[~32768..32767]*) -> t
    val xoriax : i16:nativeint (*[~32768..32767]*) -> t
    val cmpiax : i16:nativeint (*[~32768..32767]*) -> t
    val addieax : i32:nativeint -> t
    val orieax : i32:nativeint -> t
    val adcieax : i32:nativeint -> t
    val sbbieax : i32:nativeint -> t
    val andieax : i32:nativeint -> t
    val subieax : i32:nativeint -> t
    val xorieax : i32:nativeint -> t
    val cmpieax : i32:nativeint -> t
    val addib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val orib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val adcib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val sbbib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val andib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val subib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val xorib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val cmpib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val addiw : eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val oriw : eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val adciw : eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val sbbiw : eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val andiw : eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val subiw : eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val xoriw : eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val cmpiw : eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val addid : eaddr:eaddr -> i32:nativeint -> t
    val orid : eaddr:eaddr -> i32:nativeint -> t
    val adcid : eaddr:eaddr -> i32:nativeint -> t
    val sbbid : eaddr:eaddr -> i32:nativeint -> t
    val andid : eaddr:eaddr -> i32:nativeint -> t
    val subid : eaddr:eaddr -> i32:nativeint -> t
    val xorid : eaddr:eaddr -> i32:nativeint -> t
    val cmpid : eaddr:eaddr -> i32:nativeint -> t
    val addiowb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val addiodb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val oriowb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val oriodb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val adciowb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val adciodb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val sbbiowb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val sbbiodb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val andiowb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val andiodb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val subiowb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val subiodb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val xoriowb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val xoriodb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val cmpiowb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val cmpiodb : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val addmrb : eaddr:eaddr -> reg8:nativeint -> t
    val ormrb : eaddr:eaddr -> reg8:nativeint -> t
    val adcmrb : eaddr:eaddr -> reg8:nativeint -> t
    val sbbmrb : eaddr:eaddr -> reg8:nativeint -> t
    val andmrb : eaddr:eaddr -> reg8:nativeint -> t
    val submrb : eaddr:eaddr -> reg8:nativeint -> t
    val xormrb : eaddr:eaddr -> reg8:nativeint -> t
    val cmpmrb : eaddr:eaddr -> reg8:nativeint -> t
    val addmrow : eaddr:eaddr -> reg:nativeint -> t
    val addmrod : eaddr:eaddr -> reg:nativeint -> t
    val ormrow : eaddr:eaddr -> reg:nativeint -> t
    val ormrod : eaddr:eaddr -> reg:nativeint -> t
    val adcmrow : eaddr:eaddr -> reg:nativeint -> t
    val adcmrod : eaddr:eaddr -> reg:nativeint -> t
    val sbbmrow : eaddr:eaddr -> reg:nativeint -> t
    val sbbmrod : eaddr:eaddr -> reg:nativeint -> t
    val andmrow : eaddr:eaddr -> reg:nativeint -> t
    val andmrod : eaddr:eaddr -> reg:nativeint -> t
    val submrow : eaddr:eaddr -> reg:nativeint -> t
    val submrod : eaddr:eaddr -> reg:nativeint -> t
    val xormrow : eaddr:eaddr -> reg:nativeint -> t
    val xormrod : eaddr:eaddr -> reg:nativeint -> t
    val cmpmrow : eaddr:eaddr -> reg:nativeint -> t
    val cmpmrod : eaddr:eaddr -> reg:nativeint -> t
    val addrmb : reg8:nativeint -> eaddr:eaddr -> t
    val orrmb : reg8:nativeint -> eaddr:eaddr -> t
    val adcrmb : reg8:nativeint -> eaddr:eaddr -> t
    val sbbrmb : reg8:nativeint -> eaddr:eaddr -> t
    val andrmb : reg8:nativeint -> eaddr:eaddr -> t
    val subrmb : reg8:nativeint -> eaddr:eaddr -> t
    val xorrmb : reg8:nativeint -> eaddr:eaddr -> t
    val cmprmb : reg8:nativeint -> eaddr:eaddr -> t
    val addrmow : reg:nativeint -> eaddr:eaddr -> t
    val addrmod : reg:nativeint -> eaddr:eaddr -> t
    val orrmow : reg:nativeint -> eaddr:eaddr -> t
    val orrmod : reg:nativeint -> eaddr:eaddr -> t
    val adcrmow : reg:nativeint -> eaddr:eaddr -> t
    val adcrmod : reg:nativeint -> eaddr:eaddr -> t
    val sbbrmow : reg:nativeint -> eaddr:eaddr -> t
    val sbbrmod : reg:nativeint -> eaddr:eaddr -> t
    val andrmow : reg:nativeint -> eaddr:eaddr -> t
    val andrmod : reg:nativeint -> eaddr:eaddr -> t
    val subrmow : reg:nativeint -> eaddr:eaddr -> t
    val subrmod : reg:nativeint -> eaddr:eaddr -> t
    val xorrmow : reg:nativeint -> eaddr:eaddr -> t
    val xorrmod : reg:nativeint -> eaddr:eaddr -> t
    val cmprmow : reg:nativeint -> eaddr:eaddr -> t
    val cmprmod : reg:nativeint -> eaddr:eaddr -> t
    val aaa : unit -> t
    val aad : unit -> t
    val aam : unit -> t
    val aas : unit -> t
    val arpl : eaddr:eaddr -> reg16:nativeint -> t
    val boundow : reg:nativeint -> mem:mem -> t
    val boundod : reg:nativeint -> mem:mem -> t
    val bsfow : reg:nativeint -> eaddr:eaddr -> t
    val bsfod : reg:nativeint -> eaddr:eaddr -> t
    val bsrow : reg:nativeint -> eaddr:eaddr -> t
    val bsrod : reg:nativeint -> eaddr:eaddr -> t
    val bswap : r32:nativeint (*[0..7]*) -> t
    val btow : eaddr:eaddr -> reg:nativeint -> t
    val btod : eaddr:eaddr -> reg:nativeint -> t
    val btiow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val btiod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val btcow : eaddr:eaddr -> reg:nativeint -> t
    val btcod : eaddr:eaddr -> reg:nativeint -> t
    val btciow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val btciod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val btrow : eaddr:eaddr -> reg:nativeint -> t
    val btrod : eaddr:eaddr -> reg:nativeint -> t
    val btriow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val btriod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val btsow : eaddr:eaddr -> reg:nativeint -> t
    val btsod : eaddr:eaddr -> reg:nativeint -> t
    val btsiow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val btsiod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val call_jvow : reloc:nativeint Reloc.relocatable -> t
    val call_jvod : reloc:nativeint Reloc.relocatable -> t
    val call_epow : mem:mem -> t
    val call_epod : mem:mem -> t
    val call_apow : cs:nativeint -> ip:nativeint -> t
    val call_apod : cs:nativeint -> ip:nativeint -> t
    val call_evow : eaddr:eaddr -> t
    val call_evod : eaddr:eaddr -> t
    val cbw : unit -> t
    val cwde : unit -> t
    val clc : unit -> t
    val cld : unit -> t
    val cli : unit -> t
    val clts : unit -> t
    val cmc : unit -> t
    val cmpsbaw : unit -> t
    val cmpsbad : unit -> t
    val cmpsvowaw : unit -> t
    val cmpsvowad : unit -> t
    val cmpsvodaw : unit -> t
    val cmpsvodad : unit -> t
    val cmpxchg_eb_gb : eaddr:eaddr -> reg:nativeint -> t
    val cmpxchg_ev_gvow : eaddr:eaddr -> reg:nativeint -> t
    val cmpxchg_ev_gvod : eaddr:eaddr -> reg:nativeint -> t
    val cmpxchg8b : mem:mem -> t
    val cpuid : unit -> t
    val cwd : unit -> t
    val cdq : unit -> t
    val daa : unit -> t
    val das : unit -> t
    val dec_eb : eaddr:eaddr -> t
    val dec_evow : eaddr:eaddr -> t
    val dec_evod : eaddr:eaddr -> t
    val decow : r32:nativeint (*[0..7]*) -> t
    val decod : r32:nativeint (*[0..7]*) -> t
    val dival : eaddr:eaddr -> t
    val divax : eaddr:eaddr -> t
    val diveax : eaddr:eaddr -> t
    val enter : 
      i16:nativeint (*[0..65535]*) -> i8:nativeint (*[~128..127]*) -> t
    val f2xm1 : unit -> t
    val fabs : unit -> t
    val fadd_r32 : mem:mem -> t
    val fadd_r64 : mem:mem -> t
    val fadd_st_sti : idx:nativeint -> t
    val fadd_sti_st : idx:nativeint -> t
    val faddp_sti_st : idx:nativeint -> t
    val fiadd_i32 : mem:mem -> t
    val fiadd_i16 : mem:mem -> t
    val fbld : mem:mem -> t
    val fbstp : mem:mem -> t
    val fchs : unit -> t
    val fnclex : unit -> t
    val fcom_r32 : mem:mem -> t
    val fcom_r64 : mem:mem -> t
    val fcomp_r32 : mem:mem -> t
    val fcomp_r64 : mem:mem -> t
    val fcom_st_sti : idx:nativeint -> t
    val fcomp_st_sti : idx:nativeint -> t
    val fcompp : unit -> t
    val fcos : unit -> t
    val fdecstp : unit -> t
    val fdiv_r32 : mem:mem -> t
    val fdiv_r64 : mem:mem -> t
    val fdiv_st_sti : idx:nativeint -> t
    val fdiv_sti_st : idx:nativeint -> t
    val fdivp_sti_st : idx:nativeint -> t
    val fdivr_r32 : mem:mem -> t
    val fdivr_r64 : mem:mem -> t
    val fdivr_st_sti : idx:nativeint -> t
    val fdivr_sti_st : idx:nativeint -> t
    val fdivrp_sti_st : idx:nativeint -> t
    val ffree : idx:nativeint -> t
    val ficom_i32 : mem:mem -> t
    val ficom_i16 : mem:mem -> t
    val ficomp_i32 : mem:mem -> t
    val ficomp_i16 : mem:mem -> t
    val fild_lsi16 : mem:mem -> t
    val fild_lsi32 : mem:mem -> t
    val fild64 : mem:mem -> t
    val finit : unit -> t
    val fist_lsi16 : mem:mem -> t
    val fist_lsi32 : mem:mem -> t
    val fistp_lsi16 : mem:mem -> t
    val fistp_lsi32 : mem:mem -> t
    val fistp64 : mem:mem -> t
    val fld_lsr32 : mem:mem -> t
    val fld_lsr64 : mem:mem -> t
    val fld80 : mem:mem -> t
    val fld_sti : idx:nativeint -> t
    val fld1 : unit -> t
    val fldl2t : unit -> t
    val fldl2e : unit -> t
    val fldpi : unit -> t
    val fldlg2 : unit -> t
    val fldln2 : unit -> t
    val fldz : unit -> t
    val fldcw : mem:mem -> t
    val fldenv : mem:mem -> t
    val fmul_r32 : mem:mem -> t
    val fmul_r64 : mem:mem -> t
    val fmul_st_sti : idx:nativeint -> t
    val fmul_sti_st : idx:nativeint -> t
    val fmulp_sti_st : idx:nativeint -> t
    val fnop : unit -> t
    val fpatan : unit -> t
    val fprem : unit -> t
    val fprem1 : unit -> t
    val fptan : unit -> t
    val frndint : unit -> t
    val frstor : mem:mem -> t
    val fnsave : mem:mem -> t
    val fscale : unit -> t
    val fsin : unit -> t
    val fsincos : unit -> t
    val fsqrt : unit -> t
    val fst_lsr32 : mem:mem -> t
    val fst_lsr64 : mem:mem -> t
    val fstp_lsr32 : mem:mem -> t
    val fstp_lsr64 : mem:mem -> t
    val fstp80 : mem:mem -> t
    val fst_st_sti : idx:nativeint -> t
    val fstp_st_sti : idx:nativeint -> t
    val fstcw : mem:mem -> t
    val fstenv : mem:mem -> t
    val fstsw : mem:mem -> t
    val fstsw_ax : unit -> t
    val fsub_r32 : mem:mem -> t
    val fsub_r64 : mem:mem -> t
    val fsub_st_sti : idx:nativeint -> t
    val fsub_sti_st : idx:nativeint -> t
    val fsubp_sti_st : idx:nativeint -> t
    val fsubr_r32 : mem:mem -> t
    val fsubr_r64 : mem:mem -> t
    val fsubr_st_sti : idx:nativeint -> t
    val fsubr_sti_st : idx:nativeint -> t
    val fsubrp_sti_st : idx:nativeint -> t
    val ftst : unit -> t
    val fucom : idx:nativeint -> t
    val fucomp : idx:nativeint -> t
    val fucompp : unit -> t
    val fxam : unit -> t
    val fxch : idx:nativeint -> t
    val fxtract : unit -> t
    val fyl2x : unit -> t
    val fyl2xp1 : unit -> t
    val hlt : unit -> t
    val idiv : eaddr:eaddr -> t
    val idivax : eaddr:eaddr -> t
    val idiveax : eaddr:eaddr -> t
    val imulb : eaddr:eaddr -> t
    val imulow : eaddr:eaddr -> t
    val imulod : eaddr:eaddr -> t
    val imulrmow : reg:nativeint -> eaddr:eaddr -> t
    val imulrmod : reg:nativeint -> eaddr:eaddr -> t
    val imul_ibow : 
      reg:nativeint -> eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val imul_ibod : 
      reg:nativeint -> eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val imul_ivw : 
      reg:nativeint -> eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val imul_ivd : reg:nativeint -> eaddr:eaddr -> i32:nativeint -> t
    val in_al_ib : i8:nativeint (*[~128..127]*) -> t
    val in_eax_ibow : i8:nativeint (*[~128..127]*) -> t
    val in_eax_ibod : i8:nativeint (*[~128..127]*) -> t
    val in_al_dx : unit -> t
    val in_eax_dxow : unit -> t
    val in_eax_dxod : unit -> t
    val inc_eb : eaddr:eaddr -> t
    val inc_evow : eaddr:eaddr -> t
    val inc_evod : eaddr:eaddr -> t
    val incow : r32:nativeint (*[0..7]*) -> t
    val incod : r32:nativeint (*[0..7]*) -> t
    val insb : unit -> t
    val insvow : unit -> t
    val insvod : unit -> t
    val int3 : unit -> t
    val int_ib : i8:nativeint (*[~128..127]*) -> t
    val into : unit -> t
    val invd : unit -> t
    val invlpg : mem:mem -> t
    val iret : unit -> t
    val jb_o : reloc:nativeint Reloc.relocatable -> t
    val jb_no : reloc:nativeint Reloc.relocatable -> t
    val jb_b : reloc:nativeint Reloc.relocatable -> t
    val jb_nb : reloc:nativeint Reloc.relocatable -> t
    val jb_z : reloc:nativeint Reloc.relocatable -> t
    val jb_nz : reloc:nativeint Reloc.relocatable -> t
    val jb_be : reloc:nativeint Reloc.relocatable -> t
    val jb_nbe : reloc:nativeint Reloc.relocatable -> t
    val jb_s : reloc:nativeint Reloc.relocatable -> t
    val jb_ns : reloc:nativeint Reloc.relocatable -> t
    val jb_p : reloc:nativeint Reloc.relocatable -> t
    val jb_np : reloc:nativeint Reloc.relocatable -> t
    val jb_l : reloc:nativeint Reloc.relocatable -> t
    val jb_nl : reloc:nativeint Reloc.relocatable -> t
    val jb_le : reloc:nativeint Reloc.relocatable -> t
    val jb_nle : reloc:nativeint Reloc.relocatable -> t
    val jv_oow : reloc:nativeint Reloc.relocatable -> t
    val jv_noow : reloc:nativeint Reloc.relocatable -> t
    val jv_bow : reloc:nativeint Reloc.relocatable -> t
    val jv_nbow : reloc:nativeint Reloc.relocatable -> t
    val jv_zow : reloc:nativeint Reloc.relocatable -> t
    val jv_nzow : reloc:nativeint Reloc.relocatable -> t
    val jv_beow : reloc:nativeint Reloc.relocatable -> t
    val jv_nbeow : reloc:nativeint Reloc.relocatable -> t
    val jv_sow : reloc:nativeint Reloc.relocatable -> t
    val jv_nsow : reloc:nativeint Reloc.relocatable -> t
    val jv_pow : reloc:nativeint Reloc.relocatable -> t
    val jv_npow : reloc:nativeint Reloc.relocatable -> t
    val jv_low : reloc:nativeint Reloc.relocatable -> t
    val jv_nlow : reloc:nativeint Reloc.relocatable -> t
    val jv_leow : reloc:nativeint Reloc.relocatable -> t
    val jv_nleow : reloc:nativeint Reloc.relocatable -> t
    val jv_ood : reloc:nativeint Reloc.relocatable -> t
    val jv_nood : reloc:nativeint Reloc.relocatable -> t
    val jv_bod : reloc:nativeint Reloc.relocatable -> t
    val jv_nbod : reloc:nativeint Reloc.relocatable -> t
    val jv_zod : reloc:nativeint Reloc.relocatable -> t
    val jv_nzod : reloc:nativeint Reloc.relocatable -> t
    val jv_beod : reloc:nativeint Reloc.relocatable -> t
    val jv_nbeod : reloc:nativeint Reloc.relocatable -> t
    val jv_sod : reloc:nativeint Reloc.relocatable -> t
    val jv_nsod : reloc:nativeint Reloc.relocatable -> t
    val jv_pod : reloc:nativeint Reloc.relocatable -> t
    val jv_npod : reloc:nativeint Reloc.relocatable -> t
    val jv_lod : reloc:nativeint Reloc.relocatable -> t
    val jv_nlod : reloc:nativeint Reloc.relocatable -> t
    val jv_leod : reloc:nativeint Reloc.relocatable -> t
    val jv_nleod : reloc:nativeint Reloc.relocatable -> t
    val jcxz : reloc:nativeint Reloc.relocatable -> t
    val jmp_jb : reloc:nativeint Reloc.relocatable -> t
    val jmp_jvow : reloc:nativeint Reloc.relocatable -> t
    val jmp_jvod : reloc:nativeint Reloc.relocatable -> t
    val jmp_apow : cs:nativeint -> ip:nativeint -> t
    val jmp_apod : cs:nativeint -> ip:nativeint -> t
    val jmp_evow : eaddr:eaddr -> t
    val jmp_evod : eaddr:eaddr -> t
    val jmp_epow : mem:mem -> t
    val jmp_epod : mem:mem -> t
    val ldsow : reg:nativeint -> mem:mem -> t
    val ldsod : reg:nativeint -> mem:mem -> t
    val lesow : reg:nativeint -> mem:mem -> t
    val lesod : reg:nativeint -> mem:mem -> t
    val lfsow : reg:nativeint -> mem:mem -> t
    val lfsod : reg:nativeint -> mem:mem -> t
    val lgsow : reg:nativeint -> mem:mem -> t
    val lgsod : reg:nativeint -> mem:mem -> t
    val lssow : reg:nativeint -> mem:mem -> t
    val lssod : reg:nativeint -> mem:mem -> t
    val leaow : reg:nativeint -> mem:mem -> t
    val leaod : reg:nativeint -> mem:mem -> t
    val leave : unit -> t
    val lgdt : mem:mem -> t
    val lidt : mem:mem -> t
    val lldt : eaddr:eaddr -> t
    val lmsw : eaddr:eaddr -> t
    val lock : unit -> t
    val lodsb : unit -> t
    val lodsvow : unit -> t
    val lodsvod : unit -> t
    val lahf : unit -> t
    val larow : reg:nativeint -> eaddr:eaddr -> t
    val larod : reg:nativeint -> eaddr:eaddr -> t
    val loopow : reloc:nativeint Reloc.relocatable -> t
    val loopod : reloc:nativeint Reloc.relocatable -> t
    val loopeow : reloc:nativeint Reloc.relocatable -> t
    val loopeod : reloc:nativeint Reloc.relocatable -> t
    val loopneow : reloc:nativeint Reloc.relocatable -> t
    val loopneod : reloc:nativeint Reloc.relocatable -> t
    val lslow : reg:nativeint -> eaddr:eaddr -> t
    val lslod : reg:nativeint -> eaddr:eaddr -> t
    val ltr : eaddr:eaddr -> t
    val movmrb : eaddr:eaddr -> reg:nativeint -> t
    val movmrow : eaddr:eaddr -> reg:nativeint -> t
    val movmrod : eaddr:eaddr -> reg:nativeint -> t
    val movrmb : reg:nativeint -> eaddr:eaddr -> t
    val movrmow : reg:nativeint -> eaddr:eaddr -> t
    val movrmod : reg:nativeint -> eaddr:eaddr -> t
    val mov_ew_sw : mem:mem -> sr16:nativeint (*[0..7]*) -> t
    val mov_sw_ew : mem:mem -> sr16:nativeint (*[0..7]*) -> t
    val mov_al_ob : offset:nativeint -> t
    val mov_eax_ovow : offset:nativeint -> t
    val mov_eax_ovod : offset:nativeint -> t
    val mov_ob_al : offset:nativeint -> t
    val mov_ov_eaxow : offset:nativeint -> t
    val mov_ov_eaxod : offset:nativeint -> t
    val movib : r8:nativeint (*[0..7]*) -> i8:nativeint (*[~128..127]*) -> t
    val moviw : 
      r16:nativeint (*[0..7]*) -> i16:nativeint (*[~32768..32767]*) -> t
    val movid : r32:nativeint (*[0..7]*) -> i32:nativeint -> t
    val mov_eb_ib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val mov_ev_ivow : eaddr:eaddr -> i16:nativeint (*[~32768..32767]*) -> t
    val mov_ev_ivod : eaddr:eaddr -> i32:nativeint -> t
    val mov_cd_rd : cr:nativeint -> reg:nativeint -> t
    val mov_rd_cd : reg:nativeint -> cr:nativeint -> t
    val mov_dd_rd : dr:nativeint -> reg:nativeint -> t
    val mov_rd_dd : reg:nativeint -> dr:nativeint -> t
    val movsb : unit -> t
    val movsvow : unit -> t
    val movsvod : unit -> t
    val movsx_gv_ebow : r32:nativeint (*[0..7]*) -> eaddr:eaddr -> t
    val movsx_gv_ebod : r32:nativeint (*[0..7]*) -> eaddr:eaddr -> t
    val movsx_gv_ew : r16:nativeint (*[0..7]*) -> eaddr:eaddr -> t
    val movzx_gv_ebow : r32:nativeint (*[0..7]*) -> eaddr:eaddr -> t
    val movzx_gv_ebod : r32:nativeint (*[0..7]*) -> eaddr:eaddr -> t
    val movzx_gv_ew : r16:nativeint (*[0..7]*) -> eaddr:eaddr -> t
    val mul_al : eaddr:eaddr -> t
    val mul_axow : eaddr:eaddr -> t
    val mul_axod : eaddr:eaddr -> t
    val negb : eaddr:eaddr -> t
    val negow : eaddr:eaddr -> t
    val negod : eaddr:eaddr -> t
    val nop : unit -> t
    val notb : eaddr:eaddr -> t
    val notow : eaddr:eaddr -> t
    val notod : eaddr:eaddr -> t
    val out_ib_al : i8:nativeint (*[~128..127]*) -> t
    val out_ib_eaxow : i8:nativeint (*[~128..127]*) -> t
    val out_ib_eaxod : i8:nativeint (*[~128..127]*) -> t
    val out_dx_al : unit -> t
    val out_dx_eaxow : unit -> t
    val out_dx_eaxod : unit -> t
    val outsb : unit -> t
    val outsvow : unit -> t
    val outsvod : unit -> t
    val pop_evow : mem:mem -> t
    val pop_evod : mem:mem -> t
    val popow : r32:nativeint (*[0..7]*) -> t
    val popod : r32:nativeint (*[0..7]*) -> t
    val pop_es : unit -> t
    val pop_ss : unit -> t
    val pop_ds : unit -> t
    val pop_fs : unit -> t
    val pop_gs : unit -> t
    val popaow : unit -> t
    val popaod : unit -> t
    val popfow : unit -> t
    val popfod : unit -> t
    val push_evow : eaddr:eaddr -> t
    val push_evod : eaddr:eaddr -> t
    val pushow : r32:nativeint (*[0..7]*) -> t
    val pushod : r32:nativeint (*[0..7]*) -> t
    val push_ib : i8:nativeint (*[~128..127]*) -> t
    val push_ivow : i16:nativeint (*[~32768..32767]*) -> t
    val push_ivod : i32:nativeint -> t
    val push_cs : unit -> t
    val push_ss : unit -> t
    val push_ds : unit -> t
    val push_es : unit -> t
    val push_fs : unit -> t
    val push_gs : unit -> t
    val pushaow : unit -> t
    val pushaod : unit -> t
    val pushfow : unit -> t
    val pushfod : unit -> t
    val rolb_eb_1 : eaddr:eaddr -> t
    val rolb_eb_cl : eaddr:eaddr -> t
    val rorb_eb_1 : eaddr:eaddr -> t
    val rorb_eb_cl : eaddr:eaddr -> t
    val rclb_eb_1 : eaddr:eaddr -> t
    val rclb_eb_cl : eaddr:eaddr -> t
    val rcrb_eb_1 : eaddr:eaddr -> t
    val rcrb_eb_cl : eaddr:eaddr -> t
    val shlsalb_eb_1 : eaddr:eaddr -> t
    val shlsalb_eb_cl : eaddr:eaddr -> t
    val shrb_eb_1 : eaddr:eaddr -> t
    val shrb_eb_cl : eaddr:eaddr -> t
    val sarb_eb_1 : eaddr:eaddr -> t
    val sarb_eb_cl : eaddr:eaddr -> t
    val rolb_ev_1ow : eaddr:eaddr -> t
    val rolb_ev_1od : eaddr:eaddr -> t
    val rolb_ev_clow : eaddr:eaddr -> t
    val rolb_ev_clod : eaddr:eaddr -> t
    val rorb_ev_1ow : eaddr:eaddr -> t
    val rorb_ev_1od : eaddr:eaddr -> t
    val rorb_ev_clow : eaddr:eaddr -> t
    val rorb_ev_clod : eaddr:eaddr -> t
    val rclb_ev_1ow : eaddr:eaddr -> t
    val rclb_ev_1od : eaddr:eaddr -> t
    val rclb_ev_clow : eaddr:eaddr -> t
    val rclb_ev_clod : eaddr:eaddr -> t
    val rcrb_ev_1ow : eaddr:eaddr -> t
    val rcrb_ev_1od : eaddr:eaddr -> t
    val rcrb_ev_clow : eaddr:eaddr -> t
    val rcrb_ev_clod : eaddr:eaddr -> t
    val shlsalb_ev_1ow : eaddr:eaddr -> t
    val shlsalb_ev_1od : eaddr:eaddr -> t
    val shlsalb_ev_clow : eaddr:eaddr -> t
    val shlsalb_ev_clod : eaddr:eaddr -> t
    val shrb_ev_1ow : eaddr:eaddr -> t
    val shrb_ev_1od : eaddr:eaddr -> t
    val shrb_ev_clow : eaddr:eaddr -> t
    val shrb_ev_clod : eaddr:eaddr -> t
    val sarb_ev_1ow : eaddr:eaddr -> t
    val sarb_ev_1od : eaddr:eaddr -> t
    val sarb_ev_clow : eaddr:eaddr -> t
    val sarb_ev_clod : eaddr:eaddr -> t
    val rolb_eb_ib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rorb_eb_ib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rclb_eb_ib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rcrb_eb_ib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val shlsalb_eb_ib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val shrb_eb_ib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val sarb_eb_ib : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rolb_ev_ibow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rolb_ev_ibod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rorb_ev_ibow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rorb_ev_ibod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rclb_ev_ibow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rclb_ev_ibod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rcrb_ev_ibow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rcrb_ev_ibod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val shlsalb_ev_ibow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val shlsalb_ev_ibod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val shrb_ev_ibow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val shrb_ev_ibod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val sarb_ev_ibow : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val sarb_ev_ibod : eaddr:eaddr -> i8:nativeint (*[~128..127]*) -> t
    val rdmsr : unit -> t
    val rep : unit -> t
    val repne : unit -> t
    val ret : unit -> t
    val ret_far : unit -> t
    val ret_iw : i16:nativeint (*[0..65535]*) -> t
    val ret_far_iw : i16:nativeint (*[0..65535]*) -> t
    val rsm : unit -> t
    val sahf : unit -> t
    val scasb : unit -> t
    val scasvow : unit -> t
    val scasvod : unit -> t
    val setb_o : eaddr:eaddr -> t
    val setb_no : eaddr:eaddr -> t
    val setb_b : eaddr:eaddr -> t
    val setb_nb : eaddr:eaddr -> t
    val setb_z : eaddr:eaddr -> t
    val setb_nz : eaddr:eaddr -> t
    val setb_be : eaddr:eaddr -> t
    val setb_nbe : eaddr:eaddr -> t
    val setb_s : eaddr:eaddr -> t
    val setb_ns : eaddr:eaddr -> t
    val setb_p : eaddr:eaddr -> t
    val setb_np : eaddr:eaddr -> t
    val setb_l : eaddr:eaddr -> t
    val setb_nl : eaddr:eaddr -> t
    val setb_le : eaddr:eaddr -> t
    val setb_nle : eaddr:eaddr -> t
    val sgdt : mem:mem -> t
    val sidt : mem:mem -> t
    val shrd_ibow : eaddr:eaddr -> reg:nativeint -> count:nativeint -> t
    val shrd_ibod : eaddr:eaddr -> reg:nativeint -> count:nativeint -> t
    val shld_ibow : eaddr:eaddr -> reg:nativeint -> count:nativeint -> t
    val shld_ibod : eaddr:eaddr -> reg:nativeint -> count:nativeint -> t
    val shrd_clow : eaddr:eaddr -> reg:nativeint -> t
    val shrd_clod : eaddr:eaddr -> reg:nativeint -> t
    val shld_clow : eaddr:eaddr -> reg:nativeint -> t
    val shld_clod : eaddr:eaddr -> reg:nativeint -> t
    val sldt : eaddr:eaddr -> t
    val smsw : eaddr:eaddr -> t
    val stc : unit -> t
    val std : unit -> t
    val sti : unit -> t
    val stosb : unit -> t
    val stosvow : unit -> t
    val stosvod : unit -> t
    val str : mem:mem -> t
    val test_al_ib : i8:nativeint (*[0..255]*) -> t
    val test_eax_ivow : i16:nativeint (*[0..65535]*) -> t
    val test_eax_ivod : i32:nativeint -> t
    val test_eb_ib : eaddr:eaddr -> i8:nativeint (*[0..255]*) -> t
    val test_ew_iw : eaddr:eaddr -> i16:nativeint (*[0..65535]*) -> t
    val test_ed_id : eaddr:eaddr -> i32:nativeint -> t
    val test_eb_gb : eaddr:eaddr -> reg:nativeint -> t
    val test_ev_gvow : eaddr:eaddr -> reg:nativeint -> t
    val test_ev_gvod : eaddr:eaddr -> reg:nativeint -> t
    val verr : eaddr:eaddr -> t
    val verw : eaddr:eaddr -> t
    val wait : unit -> t
    val wbinvd : unit -> t
    val wrmsr : unit -> t
    val xadd_eb_gb : eaddr:eaddr -> reg:nativeint -> t
    val xadd_ev_gvow : eaddr:eaddr -> reg:nativeint -> t
    val xadd_ev_gvod : eaddr:eaddr -> reg:nativeint -> t
    val xchgeaxow : r32:nativeint (*[0..7]*) -> t
    val xchgeaxod : r32:nativeint (*[0..7]*) -> t
    val xchg_eb_gb : eaddr:eaddr -> reg:nativeint -> t
    val xchg_ev_gvow : eaddr:eaddr -> reg:nativeint -> t
    val xchg_ev_gvod : eaddr:eaddr -> reg:nativeint -> t
    val xlatb : unit -> t
    val fclex : unit -> t
    val fsave : mem:mem -> t
    val fnstcw : mem:mem -> t
    val fnstenv : mem:mem -> t
    val fnstsw : mem:mem -> t
    val fnstsw_ax : unit -> t
    val fwait : unit -> t 
  end
module type Maker = 
  functor (Reloc : Sledlib.RELOCATABLE) -> S with module Reloc = Reloc
