(*
  Machine generated. Edit at your own risk 
  Reproduce with the following
 --line_width=74
 --no_action=false
 --output_directory=.
 --pickler=sexp
 --view=OCaml
 *)
(* module type AstUtil*)
  
  val sexp_rd_name : SexpPkl.instream -> Ast.name
  val sexp_rd_conv : SexpPkl.instream -> Ast.conv
  val sexp_rd_hint : SexpPkl.instream -> Ast.hint
  val sexp_rd_reg : SexpPkl.instream -> Ast.reg
  val sexp_rd_target : SexpPkl.instream -> Ast.target
  val sexp_rd_alias_set : SexpPkl.instream -> Ast.alias_set
  val sexp_rd_size : SexpPkl.instream -> Ast.size
  val sexp_rd_align : SexpPkl.instream -> Ast.align
  val sexp_rd_aligned : SexpPkl.instream -> Ast.aligned
  val sexp_rd_in_alias : SexpPkl.instream -> Ast.in_alias
  val sexp_rd_op : SexpPkl.instream -> Ast.op
  val sexp_rd_region : SexpPkl.instream -> Ast.region
  val sexp_rd_ty : SexpPkl.instream -> Ast.ty
  val sexp_rd_name_or_mem : SexpPkl.instream -> Ast.name_or_mem
  val sexp_rd_actual : SexpPkl.instream -> Ast.actual
  val sexp_rd_expr : SexpPkl.instream -> Ast.expr
  val sexp_rd_import : SexpPkl.instream -> Ast.import
  val sexp_rd_export : SexpPkl.instream -> Ast.export
  val sexp_rd_variance : SexpPkl.instream -> Ast.variance
  val sexp_rd_register : SexpPkl.instream -> Ast.register
  val sexp_rd_arch : SexpPkl.instream -> Ast.arch
  val sexp_rd_decl : SexpPkl.instream -> Ast.decl
  val sexp_rd_bare_formal : SexpPkl.instream -> Ast.bare_formal
  val sexp_rd_formal : SexpPkl.instream -> Ast.formal
  val sexp_rd_memsize : SexpPkl.instream -> Ast.memsize
  val sexp_rd_init : SexpPkl.instream -> Ast.init
  val sexp_rd_datum : SexpPkl.instream -> Ast.datum
  val sexp_rd_cformal : SexpPkl.instream -> Ast.cformal
  val sexp_rd_flow : SexpPkl.instream -> Ast.flow
  val sexp_rd_mem : SexpPkl.instream -> Ast.mem
  val sexp_rd_procann : SexpPkl.instream -> Ast.procann
  val sexp_rd_altcont : SexpPkl.instream -> Ast.altcont
  val sexp_rd_range : SexpPkl.instream -> Ast.range
  val sexp_rd_guarded : SexpPkl.instream -> Ast.guarded
  val sexp_rd_arm : SexpPkl.instream -> Ast.arm
  val sexp_rd_stmt : SexpPkl.instream -> Ast.stmt
  val sexp_rd_body : SexpPkl.instream -> Ast.body
  val sexp_rd_proc : SexpPkl.instream -> Ast.proc
  val sexp_rd_section : SexpPkl.instream -> Ast.section
  val sexp_rd_toplevel : SexpPkl.instream -> Ast.toplevel
  val sexp_rd_program : SexpPkl.instream -> Ast.program
  val sexp_rd_guarded_list : SexpPkl.instream -> Ast.guarded list
  val sexp_rd_arm_list : SexpPkl.instream -> Ast.arm list
  val sexp_rd_range_list : SexpPkl.instream -> Ast.range list
  val sexp_rd_range_option : SexpPkl.instream -> Ast.range option
  val sexp_rd_altcont_option : SexpPkl.instream -> Ast.altcont option
  val sexp_rd_name_or_mem_list : SexpPkl.instream -> Ast.name_or_mem list
  val sexp_rd_procann_list : SexpPkl.instream -> Ast.procann list
  val sexp_rd_flow_list : SexpPkl.instream -> Ast.flow list
  val sexp_rd_cformal_list : SexpPkl.instream -> Ast.cformal list
  val sexp_rd_actual_list : SexpPkl.instream -> Ast.actual list
  val sexp_rd_init_option : SexpPkl.instream -> Ast.init option
  val sexp_rd_body_list : SexpPkl.instream -> Ast.body list
  val sexp_rd_formal_list : SexpPkl.instream -> Ast.formal list
  val sexp_rd_arch_list : SexpPkl.instream -> Ast.arch list
  val sexp_rd_register_list : SexpPkl.instream -> Ast.register list
  val sexp_rd_export_list : SexpPkl.instream -> Ast.export list
  val sexp_rd_import_list : SexpPkl.instream -> Ast.import list
  val sexp_rd_ty_option : SexpPkl.instream -> Ast.ty option
  val sexp_rd_expr_list : SexpPkl.instream -> Ast.expr list
  val sexp_rd_expr_option : SexpPkl.instream -> Ast.expr option
  val sexp_rd_datum_list : SexpPkl.instream -> Ast.datum list
  val sexp_rd_section_list : SexpPkl.instream -> Ast.section list
  val sexp_rd_toplevel_list : SexpPkl.instream -> Ast.toplevel list
  val sexp_rd_in_alias_list : SexpPkl.instream -> Ast.in_alias list
  val sexp_rd_aligned_option : SexpPkl.instream -> Ast.aligned option
  val sexp_rd_target_list : SexpPkl.instream -> Ast.target list
  val sexp_rd_reg_option : SexpPkl.instream -> Ast.reg option
  val sexp_rd_hint_option : SexpPkl.instream -> Ast.hint option
  val sexp_rd_conv_option : SexpPkl.instream -> Ast.conv option
  val sexp_rd_name_list : SexpPkl.instream -> Ast.name list
  val sexp_wr_name : Ast.name -> SexpPkl.outstream -> unit
  val sexp_wr_conv : Ast.conv -> SexpPkl.outstream -> unit
  val sexp_wr_hint : Ast.hint -> SexpPkl.outstream -> unit
  val sexp_wr_reg : Ast.reg -> SexpPkl.outstream -> unit
  val sexp_wr_target : Ast.target -> SexpPkl.outstream -> unit
  val sexp_wr_alias_set : Ast.alias_set -> SexpPkl.outstream -> unit
  val sexp_wr_size : Ast.size -> SexpPkl.outstream -> unit
  val sexp_wr_align : Ast.align -> SexpPkl.outstream -> unit
  val sexp_wr_aligned : Ast.aligned -> SexpPkl.outstream -> unit
  val sexp_wr_in_alias : Ast.in_alias -> SexpPkl.outstream -> unit
  val sexp_wr_op : Ast.op -> SexpPkl.outstream -> unit
  val sexp_wr_region : Ast.region -> SexpPkl.outstream -> unit
  val sexp_wr_ty : Ast.ty -> SexpPkl.outstream -> unit
  val sexp_wr_name_or_mem : Ast.name_or_mem -> SexpPkl.outstream -> unit
  val sexp_wr_actual : Ast.actual -> SexpPkl.outstream -> unit
  val sexp_wr_expr : Ast.expr -> SexpPkl.outstream -> unit
  val sexp_wr_import : Ast.import -> SexpPkl.outstream -> unit
  val sexp_wr_export : Ast.export -> SexpPkl.outstream -> unit
  val sexp_wr_variance : Ast.variance -> SexpPkl.outstream -> unit
  val sexp_wr_register : Ast.register -> SexpPkl.outstream -> unit
  val sexp_wr_arch : Ast.arch -> SexpPkl.outstream -> unit
  val sexp_wr_decl : Ast.decl -> SexpPkl.outstream -> unit
  val sexp_wr_bare_formal : Ast.bare_formal -> SexpPkl.outstream -> unit
  val sexp_wr_formal : Ast.formal -> SexpPkl.outstream -> unit
  val sexp_wr_memsize : Ast.memsize -> SexpPkl.outstream -> unit
  val sexp_wr_init : Ast.init -> SexpPkl.outstream -> unit
  val sexp_wr_datum : Ast.datum -> SexpPkl.outstream -> unit
  val sexp_wr_cformal : Ast.cformal -> SexpPkl.outstream -> unit
  val sexp_wr_flow : Ast.flow -> SexpPkl.outstream -> unit
  val sexp_wr_mem : Ast.mem -> SexpPkl.outstream -> unit
  val sexp_wr_procann : Ast.procann -> SexpPkl.outstream -> unit
  val sexp_wr_altcont : Ast.altcont -> SexpPkl.outstream -> unit
  val sexp_wr_range : Ast.range -> SexpPkl.outstream -> unit
  val sexp_wr_guarded : Ast.guarded -> SexpPkl.outstream -> unit
  val sexp_wr_arm : Ast.arm -> SexpPkl.outstream -> unit
  val sexp_wr_stmt : Ast.stmt -> SexpPkl.outstream -> unit
  val sexp_wr_body : Ast.body -> SexpPkl.outstream -> unit
  val sexp_wr_proc : Ast.proc -> SexpPkl.outstream -> unit
  val sexp_wr_section : Ast.section -> SexpPkl.outstream -> unit
  val sexp_wr_toplevel : Ast.toplevel -> SexpPkl.outstream -> unit
  val sexp_wr_program : Ast.program -> SexpPkl.outstream -> unit
  val sexp_wr_guarded_list : Ast.guarded list -> SexpPkl.outstream -> unit
  val sexp_wr_arm_list : Ast.arm list -> SexpPkl.outstream -> unit
  val sexp_wr_range_list : Ast.range list -> SexpPkl.outstream -> unit
  val sexp_wr_range_option : Ast.range option -> SexpPkl.outstream -> unit
  val sexp_wr_altcont_option : Ast.altcont option ->
      SexpPkl.outstream ->
      unit
  val sexp_wr_name_or_mem_list : Ast.name_or_mem list ->
      SexpPkl.outstream ->
      unit
  val sexp_wr_procann_list : Ast.procann list -> SexpPkl.outstream -> unit
  val sexp_wr_flow_list : Ast.flow list -> SexpPkl.outstream -> unit
  val sexp_wr_cformal_list : Ast.cformal list -> SexpPkl.outstream -> unit
  val sexp_wr_actual_list : Ast.actual list -> SexpPkl.outstream -> unit
  val sexp_wr_init_option : Ast.init option -> SexpPkl.outstream -> unit
  val sexp_wr_body_list : Ast.body list -> SexpPkl.outstream -> unit
  val sexp_wr_formal_list : Ast.formal list -> SexpPkl.outstream -> unit
  val sexp_wr_arch_list : Ast.arch list -> SexpPkl.outstream -> unit
  val sexp_wr_register_list : Ast.register list ->
      SexpPkl.outstream ->
      unit
  val sexp_wr_export_list : Ast.export list -> SexpPkl.outstream -> unit
  val sexp_wr_import_list : Ast.import list -> SexpPkl.outstream -> unit
  val sexp_wr_ty_option : Ast.ty option -> SexpPkl.outstream -> unit
  val sexp_wr_expr_list : Ast.expr list -> SexpPkl.outstream -> unit
  val sexp_wr_expr_option : Ast.expr option -> SexpPkl.outstream -> unit
  val sexp_wr_datum_list : Ast.datum list -> SexpPkl.outstream -> unit
  val sexp_wr_section_list : Ast.section list -> SexpPkl.outstream -> unit
  val sexp_wr_toplevel_list : Ast.toplevel list ->
      SexpPkl.outstream ->
      unit
  val sexp_wr_in_alias_list : Ast.in_alias list ->
      SexpPkl.outstream ->
      unit
  val sexp_wr_aligned_option : Ast.aligned option ->
      SexpPkl.outstream ->
      unit
  val sexp_wr_target_list : Ast.target list -> SexpPkl.outstream -> unit
  val sexp_wr_reg_option : Ast.reg option -> SexpPkl.outstream -> unit
  val sexp_wr_hint_option : Ast.hint option -> SexpPkl.outstream -> unit
  val sexp_wr_conv_option : Ast.conv option -> SexpPkl.outstream -> unit
  val sexp_wr_name_list : Ast.name list -> SexpPkl.outstream -> unit

