-- [cut-bad.lua] Proc. [main] should result in an error when we try to
--               cut to a dead continuation.
-- Tests: procedure calls, cutting to a continuation
--
--- ./regr "$INTERP $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

CMM.exports { "main", "cont" }
CMM.imports { "cmmprint16" }

CMM.procedure("main", 0, 8, {})
   -- set up continuations
   CMM.fetch_sp()
   CMM.push_literal("0x4",32)
   CMM.apply_operator("add","bits32,bits32:bits32")
   CMM.fetch_sp()
   CMM.fetch_sp()
   CMM.push_symbol("cont")
   CMM.store(32,"NATIVE",0)
   CMM.store(32,"NATIVE",0)

   -- body of function
   CMM.push_literal("0x0", 16)
   CMM.store_arg(0)
   CMM.fetch_sp()
   CMM.store_arg(1)
   CMM.push_symbol("subroutine")
-- CMM.call({ "cont" }, {}, {}, 1)
   CMM.cmm_tail_call()

   CMM.cmm_return(0, 0) -- this should not execute

-- this should be the destination continuation of the cut
   CMM.define_label("cont")
      CMM.push_literal("0x0", 16)
      CMM.store_arg(0)
      CMM.c_call("cmmprint16")

      CMM.cmm_return(0, 0)

CMM.procedure("subroutine", 2, 0, {})

   CMM.c_call("cmmprint16")

   CMM.fetch_arg(0)
   CMM.store_local(0)

   CMM.fetch_arg(1)
   CMM.store_local(1)

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
      CMM.fetch_local(1)
      CMM.cut()
