CMM_exports({ "main" })

CMM_procedure("main", 2, 0)  -- BEGIN PROCEDURE main with 2 local variable

-- locals[0] := 10
   CMM_push_literal("10")
   CMM_store_local(0)

-- push 0
   CMM_push_literal("0")

   -- begin loop
   CMM_define_label("loop")

      -- make a copy of top value and push on value stack
      CMM_store_local(1)
      CMM_fetch_local(1)
      CMM_fetch_local(1)

      -- push locals[0] on value stack
      CMM_fetch_local(0)

      -- pop off top 2 values (locals[0] copy and value copy), perform
      -- less than or equal to comparison, push result on stack
      CMM_apply_operator("geu", "bits16,bits16:bits1")

      -- if (locals[0] >= current value) branch to "end"
      CMM_cbrancht("end")

      -- print the top value on the value stack
      CMM_push_arg()
      CMM_c_call("cmmprint")
      CMM_pop_arg()

      -- mutate the top value by adding 1 to it
      CMM_push_literal("1")
      CMM_apply_operator("add", "bits16,bits16:bits16")

      -- continue looping
      CMM_push_symbol("loop")
      CMM_goto()

   -- end quasi-gracefully
   CMM_define_label("end")
  
      CMM_return(1, 1)