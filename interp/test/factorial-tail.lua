CMM_exports({ "main2" })

CMM_procedure("main2", 0, 0)

   CMM_push_literal("7")
   CMM_push_arg()

   CMM_c_call("cmmprint")

   CMM_push_symbol("factorial")
   CMM_cmm_call({}, {}, {}, 0)

   CMM_c_call("cmmprint")

   CMM_return(1, 1)

CMM_procedure("factorial", 0, 0)

   CMM_pop_arg()
   CMM_push_literal("1")
   CMM_push_arg()
   CMM_push_arg()

   CMM_push_symbol("factorial-helper")
   CMM_cmm_call({}, {}, {}, 0)

   CMM_return(1, 1)

--running count, n
CMM_procedure("factorial-helper", 1, 0)

   CMM_pop_arg()
   CMM_store_local(0)
   CMM_fetch_local(0)
   CMM_push_literal("1")
   CMM_apply_operator("leu", "bits16,bits16:bits1")
   CMM_cbrancht("done")

   CMM_fetch_local(0)
   CMM_pop_arg()
   CMM_apply_operator("mulu", "bits16,bits16:bits16")
   CMM_push_arg()

   CMM_fetch_local(0)
   CMM_push_literal("1")
   CMM_apply_operator("sub", "bits16,bits16:bits16")
   CMM_push_arg()

   CMM_push_symbol("factorial-helper")
   CMM_cmm_tail_call()

   CMM_define_label("done")
      CMM_return(1, 1)