-- begin assembly code

CMM_section("code")
  CMM_procedure("main", 0, 0)
    CMM_define_label("label2")
      CMM_push_arg()
      CMM_pop_arg()
      CMM_push_literal("1201230123")
      CMM_fetch_local(3)
      CMM_store_local(5)
      CMM_fetch_global(11)
      CMM_store_global(12)
      CMM_return(1, 2)
      CMM_goto()
      CMM_cbrancht("label2")
      CMM_cbranchf("label3")
      CMM_cut()
    CMM_define_label("label3")
      CMM_branchtf("label2", "label3");
      CMM_cmm_tail_call()
      CMM_c_call("printf", "char")
      CMM_push_symbol("label2")
      CMM_fetch(32, "LITTLE", 0)
      CMM_store(32, "LITTLE", 0)
      CMM_gstore(32, "LITTLE", 0)
      CMM_gstore_local(5)
      CMM_gstore_global(12)
      CMM_cmm_call( {"label2"}, {}, {"label3"}, 1 )
CMM_end_section()

CMM_procedure("main2", 0, 0)
  CMM_pop_arg()

-- end of code
