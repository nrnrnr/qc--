CMM.memsize(8)
CMM.ptrsize(32)
CMM.byteorder("NATIVE")
CMM.globals(300)

CMM.imports({ "cmmprint16" })
CMM.exports({ "main", "przero" })

CMM.section("data")
   CMM.align(4)
 CMM.define_label("data1")
   CMM.data(32, nil)
   CMM.skip(4)
   CMM.emit_raddr("main", 4)
 CMM.define_label("GC_main")
CMM.end_section()

CMM.section("text")
 CMM.begin_span(1, "GC_main", 0)

   CMM.procedure("main", 5, 5, {})
      CMM.define_label("label1")
      CMM.comment("nothing-to-see-here")

      CMM.push_symbol("label1")
      CMM.push_literal("0x3", 32)
      CMM.apply_operator("add", "bits32,bits32:bits32")
      CMM.store_local(0)

      CMM.fetch_local(0)
      CMM.store_global(0)

      CMM.fetch_global(0)
      CMM.push_literal("0x1", 1)
      CMM.gstore_global(1)

      CMM.push_literal("0x1", 1)
      CMM.push_symbol("data1")
      CMM.fetch(32, "NATIVE", 0)
      CMM.gstore_local(1)
      CMM.push_symbol("data1")
      CMM.fetch_local(1)
      CMM.store(32, "NATIVE", 0)

      CMM.push_literal("0x0", 1)
      CMM.push_symbol("data1")
      CMM.fetch_local(1)
      CMM.gstore(32, "NATIVE", 0)

      CMM.push_symbol("end1")
      CMM.goto()
      CMM.define_label("end1")

      CMM.define_label("end2")
      CMM.push_literal("0x0", 1)
      CMM.branchtf("end2", "end3")

      CMM.define_label("end3")
      CMM.push_literal("0x1", 1)
      CMM.cbrancht("end4")

      CMM.define_label("end4")
      CMM.push_literal("0x0", 1)
      CMM.cbranchf("end5")

      CMM.define_label("end5")

      CMM.push_symbol("przero")
      CMM.cmm_tail_call()

      CMM.continuation("cont1")
         CMM.fetch_arg(0)
         CMM.store_arg(0)
         CMM.cmm_return(0, 0)

   CMM.end_procedure()

   CMM.procedure("przero", 300, 2, {})
      CMM.push_literal("0x44", 8)
      CMM.store_local(280)

      CMM.fetch_local(280)
      CMM.store_global(280)

      CMM.push_literal("0x0", 1)
      CMM.fetch_global(280)
      CMM.gstore_local(280)

      CMM.push_literal("0x0", 1)
      CMM.fetch_local(280)
      CMM.gstore_global(280)
      
      CMM.push_literal("0x1ff", 16)
      CMM.store_arg(0)
      CMM.push_symbol("cmmprint16")

      CMM.call({}, {}, {}, 0)

      CMM.push_symbol("cmmprint16")
      CMM.call({}, {}, {}, 1)

      CMM.push_literal("0x1", 2)
      CMM.store_local(10)

      CMM.breakpt()
      CMM.cmm_return(0, 0)
   CMM.end_procedure()
 CMM.end_span(1)
CMM.end_section()

CMM.new_assembly_unit()
