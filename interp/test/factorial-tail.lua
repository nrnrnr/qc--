-- [factorial-tail.lua] Proc. [main] should print out 7 then 7! = 5040
-- Tests: recursive procedure tail-calls & default returns, some operators
--
--- ./regr "$INTERP $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

CMM.exports({ "main" })
CMM.imports({ "cmmprint16" })

CMM.procedure("main", 0, 0, {})

   CMM.push_literal("0x7", 16)
   CMM.store_arg(0)

   CMM.c_call("cmmprint16")

   CMM.push_symbol("factorial")
   CMM.call({}, {}, {}, 0)

   CMM.c_call("cmmprint16")

   CMM.cmm_return(0, 0)

CMM.procedure("factorial", 0, 0, {})

   CMM.fetch_arg(0)
   CMM.push_literal("0x1", 16)
   CMM.store_arg(0)
   CMM.store_arg(1)

   CMM.push_symbol("factorial-helper")
   CMM.call({}, {}, {}, 0)

   CMM.cmm_return(0, 0)

--running count, n
CMM.procedure("factorial-helper", 1, 0, {})

   CMM.fetch_arg(1)
   CMM.store_local(0)
   CMM.fetch_local(0)
   CMM.push_literal("0x1", 16)
   CMM.apply_operator("leu", "bits16,bits16:bool")
   CMM.cbrancht("done")

   CMM.fetch_local(0)
   CMM.fetch_arg(0)
   CMM.apply_operator("mul", "bits16,bits16:bits16")
   CMM.store_arg(0)

   CMM.fetch_local(0)
   CMM.push_literal("0x1", 16)
   CMM.apply_operator("sub", "bits16,bits16:bits16")
   CMM.store_arg(1)

   CMM.push_symbol("factorial-helper")
   CMM.cmm_tail_call()

   CMM.define_label("done")
      CMM.cmm_return(0, 0)