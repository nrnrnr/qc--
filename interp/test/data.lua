--- ./regr "../interp $SELF" $REGRFLAGS -out $BASE.1 -err $BASE.2

CMM.exports({ "main", "datalabel" })
CMM.imports({ "cmmprint" })

CMM.section("data")
   CMM.define_label("datalabel")
      -- CMM.emit_raddr("main", 0)
      CMM.data(32, {"0x63082"})
CMM.end_section()

CMM.section("code")
   CMM.procedure("main", 0, 0)
      CMM.push_symbol("datalabel")
      CMM.fetch(32, "little", 1)
      CMM.store_arg(0)
      CMM.c_call("cmmprint")

      CMM.push_symbol("datalabel")
      CMM.push_literal("7")
      CMM.store(32, "little", 1)

      CMM.push_symbol("datalabel")
      CMM.fetch(32, "little", 1)
      CMM.store_arg(0)
      CMM.c_call("cmmprint")

      CMM.cmm_return(0,0)
CMM.end_section()
