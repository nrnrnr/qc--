--- ./regr "../interp $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

CMM.exports({ "main" })

CMM.procedure("main", 2, 0)  -- BEGIN PROCEDURE main with 2 local variable

-- locals[0] := 10
   CMM.push_literal("10")
   CMM.store_local(0)

-- push 0
   CMM.push_literal("0")

   -- begin loop
   CMM.define_label("loop")

      -- make a copy of top value and push on value stack
      CMM.store_local(1)
      CMM.fetch_local(1)
      CMM.fetch_local(1)

      -- push locals[0] on value stack
      CMM.fetch_local(0)

      -- pop off top 2 values (locals[0] copy and value copy), perform
      -- less than or equal to comparison, push result on stack
      CMM.apply_operator("geu", "bits16,bits16:bits1")

      -- if (locals[0] >= current value) branch to "end"
      CMM.cbrancht("end")

      -- print the top value on the value stack
      CMM.push_arg()
      CMM.c_call("cmmprint")
      CMM.pop_arg()

      -- mutate the top value by adding 1 to it
      CMM.push_literal("1")
      CMM.apply_operator("add", "bits16,bits16:bits16")

      -- continue looping
      CMM.push_symbol("loop")
      CMM.goto()

   -- end quasi-gracefully
   CMM.define_label("end")
  
      CMM.cmm_return(0, 0)