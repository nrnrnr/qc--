--- ./regr "$INTERP $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

-- begin assembly code

CMM.exports({ "main", "random", "third" })
CMM.imports({ "cmmprint16" })

CMM.section("code")
   CMM.procedure("main", 2, 0, {})
      CMM.define_label("label1")
        CMM.push_literal("0x5", 32)
        CMM.push_literal("0x3", 32)
        CMM.push_symbol("label1")

        CMM.store_arg(0)
        CMM.fetch_arg(0)

        CMM.store_local(0)
        CMM.store_local(1)

        CMM.fetch_local(0)
        CMM.fetch_local(1)

        CMM.push_literal("0x1", 1)
        CMM.cbrancht("otherlabel")

     CMM.define_label("backhere")
        CMM.push_literal("0x1", 1)

     CMM.branchtf("theend", "infloop")
CMM.end_section()

CMM.section("code2")
   CMM.procedure("random", 0, 0, {})
      CMM.define_label("otherlabel")
        CMM.push_literal("0x63082", 32)

        CMM.push_literal("0x0", 1)
        CMM.cbranchf("backhere")
        CMM.push_literal("0x666", 32)

      CMM.define_label("theend")

CMM.end_section()

CMM.procedure("third", 0, 0, {})
  CMM.define_label("infloop")
    CMM.push_symbol("infloop")
    CMM.goto()

-- end of code
