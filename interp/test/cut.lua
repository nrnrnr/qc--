-- [cut.lua] Proc. [main] should print out the numbers 0-10 and then 0
-- Tests: procedure calls, cutting to a continuation
--
--- ./regr "../interp $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

CMM.exports({ "main" })

CMM.procedure("main", 0, 0)

   CMM.push_literal("0")
   CMM.push_arg()
   CMM.push_symbol("subroutine")
   CMM.cmm_call({ "cont" }, {}, {}, 1)

   CMM.cmm_return(0, 0) -- this should not execute

-- this should be the destination continuation of the cut
   CMM.continuation("cont")
      CMM.push_literal("0")
      CMM.push_arg()
      CMM.c_call("cmmprint")

      CMM.cmm_return(0, 0)

CMM.procedure("subroutine", 1, 0)

   CMM.c_call("cmmprint")

   CMM.pop_arg()
   CMM.store_local(0)

   CMM.fetch_local(0)
   CMM.push_literal("10")
   CMM.apply_operator("geu", "bits16,bits16:bits1")
   CMM.cbrancht("cutback")

   CMM.fetch_local(0)
   CMM.push_literal("1")
   CMM.apply_operator("add", "bits16,bits16:bits16")
   CMM.push_arg()

   CMM.push_symbol("subroutine")
   CMM.cmm_call({ "cont" }, {}, {}, 1)

-- this should not execute
   CMM.fetch_local(0)
   CMM.push_arg()
   CMM.c_call("cmmprint") 
   CMM.cmm_return(0, 0)

   CMM.define_label("cutback")
      CMM.push_symbol("cont")
      CMM.cut()
