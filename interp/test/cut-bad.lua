-- [cut-bad.lua] Proc. [main] should result in an error when we try to
--               cut to a dead continuation.
-- Tests: procedure calls, cutting to a continuation
--
--- ./regr "../../bin/qc--interp $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

CMM.exports({ "main" })
CMM.imports({ "cmmprint16" })

CMM.procedure("main", 0, 0)

   CMM.push_literal("0x0", 16)
   CMM.store_arg(0)
   CMM.push_symbol("subroutine")
-- CMM.call({ "cont" }, {}, {}, 1)
   CMM.cmm_tail_call()

   CMM.cmm_return(0, 0) -- this should not execute

-- this should be the destination continuation of the cut
   CMM.continuation("cont")
      CMM.push_literal("0x0", 16)
      CMM.store_arg(0)
      CMM.c_call("cmmprint16")
      CMM.cmm_return(0, 0)

CMM.procedure("subroutine", 1, 0)

   CMM.c_call("cmmprint16")

   CMM.fetch_arg(0)
   CMM.store_local(0)

   CMM.fetch_local(0)
   CMM.push_literal("0xa", 16)
   CMM.apply_operator("geu", "bits16,bits16:bool")
   CMM.cbrancht("cutback")

   CMM.fetch_local(0)
   CMM.push_literal("0x1", 16)
   CMM.apply_operator("add", "bits16,bits16:bits16")
   CMM.store_arg(0)

   CMM.push_symbol("subroutine")
   CMM.call({ "cont" }, {}, {}, 1)

-- this should not execute
   CMM.fetch_local(0)
   CMM.store_arg(0)
   CMM.c_call("cmmprint16") 
   CMM.cmm_return(0, 0)

   CMM.define_label("cutback")
      CMM.push_symbol("cont")
      CMM.cut()
