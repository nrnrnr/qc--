-- This code should not run.
-- It is only useful, when disassembled, to verify encoding.
--
--- ./regr "../../bin/qc--interp $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

-- begin assembly code

CMM.exports({ "main", "main2" })
CMM.imports({ "cmmprint32" })

CMM.section("code")
  CMM.procedure("main", 0, 0)
    CMM.define_label("label2")
      CMM.store_arg(0)
      CMM.fetch_arg(0)
      CMM.push_literal("0x1201230123", 32)
      CMM.fetch_local(3)
      CMM.store_local(5)
      CMM.fetch_global(11)
      CMM.store_global(12)
      CMM.cmm_return(1, 2)
      CMM.goto()
      CMM.cbrancht("label2")
      CMM.cbranchf("label3")
      CMM.cut()
    CMM.define_label("label3")
      CMM.branchtf("label2", "label3");
      CMM.cmm_tail_call()
      CMM.c_call("printf", "char")
      CMM.push_symbol("label2")
      CMM.fetch(32, "LITTLE", 0)
      CMM.store(32, "LITTLE", 0)
      CMM.gstore(32, "LITTLE", 0)
      CMM.gstore_local(5)
      CMM.gstore_global(12)
      CMM.call( {"label2"}, {}, {"label3"}, 1 )
CMM.end_section()

CMM.procedure("main2", 0, 0)
  CMM.fetch_arg(0)

-- end of code
