-- This code should not run.  It is only useful, when disassembled, to verify
-- encoding.

-- begin assembly code

CMM_section("code")
   CMM_procedure("main", 2, 0)
      CMM_define_label("label1")
        CMM_push_literal("5")
        CMM_push_literal("3")
        CMM_push_symbol("label1")

        CMM_push_arg()
        CMM_pop_arg()

        CMM_store_local(0)
        CMM_store_local(1)

        CMM_fetch_local(0)
        CMM_fetch_local(1)

        CMM_push_literal("1")
        CMM_cbrancht("otherlabel")

     CMM_define_label("backhere")
        CMM_push_literal("1")

     CMM_branchtf("theend", "infloop")
CMM_end_section()

CMM_section("code2")
   CMM_procedure("random", 0, 0)
      CMM_define_label("otherlabel")
        CMM_push_literal("63082")

        CMM_push_literal("0")
        CMM_cbranchf("backhere")
        CMM_push_literal("666")

      CMM_define_label("theend")

CMM_end_section()

CMM_procedure("third", 0, 0)
  CMM_define_label("infloop")
    CMM_push_symbol("infloop")
    CMM_goto()

-- end of code
