(*
  Machine generated. Edit at your own risk 
  Reproduce with the following
 --line_width=74
 --no_action=false
 --output_directory=.
 --pickler=sexp
 --view=OCaml
 *)
(* module type RtlasdlUtil*)
  
  val sexp_rd_space : SexpPkl.instream -> Rtlasdl.space
  val sexp_rd_width : SexpPkl.instream -> Rtlasdl.width
  val sexp_rd_aligned : SexpPkl.instream -> Rtlasdl.aligned
  val sexp_rd_assertion : SexpPkl.instream -> Rtlasdl.assertion
  val sexp_rd_bool : SexpPkl.instream -> Rtlasdl.bool
  val sexp_rd_bits : SexpPkl.instream -> Rtlasdl.bits
  val sexp_rd_aggregration : SexpPkl.instream -> Rtlasdl.aggregration
  val sexp_rd_opr : SexpPkl.instream -> Rtlasdl.opr
  val sexp_rd_kind : SexpPkl.instream -> Rtlasdl.kind
  val sexp_rd_const : SexpPkl.instream -> Rtlasdl.const
  val sexp_rd_loc : SexpPkl.instream -> Rtlasdl.loc
  val sexp_rd_exp : SexpPkl.instream -> Rtlasdl.exp
  val sexp_rd_effect : SexpPkl.instream -> Rtlasdl.effect
  val sexp_rd_guarded : SexpPkl.instream -> Rtlasdl.guarded
  val sexp_rd_rtl : SexpPkl.instream -> Rtlasdl.rtl
  val sexp_rd_rtls : SexpPkl.instream -> Rtlasdl.rtls
  val sexp_rd_rtl_list : SexpPkl.instream -> Rtlasdl.rtl list
  val sexp_rd_guarded_list : SexpPkl.instream -> Rtlasdl.guarded list
  val sexp_rd_exp_list : SexpPkl.instream -> Rtlasdl.exp list
  val sexp_rd_width_list : SexpPkl.instream -> Rtlasdl.width list
  val sexp_wr_space : Rtlasdl.space -> SexpPkl.outstream -> unit
  val sexp_wr_width : Rtlasdl.width -> SexpPkl.outstream -> unit
  val sexp_wr_aligned : Rtlasdl.aligned -> SexpPkl.outstream -> unit
  val sexp_wr_assertion : Rtlasdl.assertion -> SexpPkl.outstream -> unit
  val sexp_wr_bool : Rtlasdl.bool -> SexpPkl.outstream -> unit
  val sexp_wr_bits : Rtlasdl.bits -> SexpPkl.outstream -> unit
  val sexp_wr_aggregration : Rtlasdl.aggregration ->
      SexpPkl.outstream ->
      unit
  val sexp_wr_opr : Rtlasdl.opr -> SexpPkl.outstream -> unit
  val sexp_wr_kind : Rtlasdl.kind -> SexpPkl.outstream -> unit
  val sexp_wr_const : Rtlasdl.const -> SexpPkl.outstream -> unit
  val sexp_wr_loc : Rtlasdl.loc -> SexpPkl.outstream -> unit
  val sexp_wr_exp : Rtlasdl.exp -> SexpPkl.outstream -> unit
  val sexp_wr_effect : Rtlasdl.effect -> SexpPkl.outstream -> unit
  val sexp_wr_guarded : Rtlasdl.guarded -> SexpPkl.outstream -> unit
  val sexp_wr_rtl : Rtlasdl.rtl -> SexpPkl.outstream -> unit
  val sexp_wr_rtls : Rtlasdl.rtls -> SexpPkl.outstream -> unit
  val sexp_wr_rtl_list : Rtlasdl.rtl list -> SexpPkl.outstream -> unit
  val sexp_wr_guarded_list : Rtlasdl.guarded list ->
      SexpPkl.outstream ->
      unit
  val sexp_wr_exp_list : Rtlasdl.exp list -> SexpPkl.outstream -> unit
  val sexp_wr_width_list : Rtlasdl.width list -> SexpPkl.outstream -> unit

