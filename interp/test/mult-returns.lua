-- [mult-returns.lua] Procedure [main] should print out 5 twice.
-- Tests: procedure calls, alternate return continuations
--
--- ./regr "../interp $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

CMM.exports({ "main" })
CMM.imports({ "cmmprint" })

CMM.procedure("main", 0, 0)

   CMM.push_literal("5")
   CMM.push_arg()

   CMM.push_symbol("print")
   CMM.call({}, {}, { "alt-return" }, 0)

-- the normal return site ends the program
   CMM.cmm_return(1, 1)

-- the alternate return site prints the number 5 again
   CMM.continuation("alt-return")
      CMM.c_call("cmmprint")
      CMM.cmm_return(0, 0)

CMM.procedure("print", 0, 0)

  CMM.c_call("cmmprint")
  CMM.cmm_return(0, 1)