--- ./regr "$INTERP $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

CMM.exports({ "main" })
CMM.imports({ "cmmprint16" })

CMM.procedure("main", 2, 0, {})  -- BEGIN PROCEDURE main with 2 local variable

-- locals[0] := 10
   CMM.push_literal("0xa", 16)
   CMM.store_local(0)

-- push 0
   CMM.push_literal("0x0", 16)

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
      CMM.apply_operator("geu", "bits16,bits16:bool")

      -- if (locals[0] >= current value) branch to "end"
      CMM.cbrancht("end")

      -- print the top value on the value stack
      CMM.store_arg(0)
      CMM.c_call("cmmprint16")
      CMM.fetch_arg(0)

      -- mutate the top value by adding 1 to it
      CMM.push_literal("0x1", 16)
      CMM.apply_operator("add", "bits16,bits16:bits16")

      -- continue looping
      CMM.push_symbol("loop")
      CMM.goto()

   -- end quasi-gracefully
   CMM.define_label("end")
  
      CMM.store_arg(0)
      CMM.cmm_return(0, 0)