-- [mult-returns.lua] Procedure [main] should print out 5 twice.
-- Tests: procedure calls, alternate return continuations
--
--- ./regr "$INTERP $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

CMM.exports({ "main" })
CMM.imports({ "cmmprint32" })

CMM.procedure("main", 0, 8, {})
   -- set up continuations
   CMM.fetch_sp()
   CMM.push_literal("0x4",32)
   CMM.apply_operator("add","bits32,bits32:bits32")
   CMM.fetch_sp()
   CMM.fetch_sp()
   CMM.push_symbol("alt-return")
   CMM.store(32,"NATIVE",0)
   CMM.store(32,"NATIVE",0)

   -- main body
   CMM.push_literal("0x5", 32)
   CMM.store_arg(0)

   CMM.push_symbol("print")
   CMM.call({}, {}, { "alt-return" }, 0)

-- the normal return site ends the program
   CMM.cmm_return(1, 1)

-- the alternate return site prints the number 5 again
   CMM.define_label("alt-return")
      CMM.c_call("cmmprint32")
      CMM.cmm_return(0, 0)

CMM.procedure("print", 0, 0, {})

  CMM.c_call("cmmprint32")
  CMM.cmm_return(0, 1)