CMM.imports({"cmmprint32"})
CMM.exports({"main"})
CMM.memsize(8)
CMM.byteorder("NATIVE")
CMM.ptrsize(32)
CMM.globals(36)
CMM.end_section()
CMM.section("data")
CMM.define_label("Cmm_private_global_area")
CMM.end_section()
CMM.section("text")
CMM.end_section()
CMM.section("data")
CMM.define_label("globals_backup")
CMM.data(8,{"0","0","0","0"})
CMM.end_section()
CMM.section("text")
CMM.procedure ('print',1,0,{}) -- stack data size correct
CMM.fetch_arg(0)
CMM.store_local(0)
CMM.fetch_local(0)
CMM.store_arg(0)
CMM.push_symbol("cmmprint32")
CMM.call({}, {}, {}, 0) -- cuts, unwinds, returns, aborts 
-- data flow node
CMM.cmm_return(0,0)
-- data flow node
CMM.end_procedure()
CMM.procedure ('factorial',1,0,{}) -- stack data size correct
CMM.fetch_arg(0)
CMM.store_local(0)
CMM.fetch_local(0)
CMM.store_arg(1)
CMM.push_literal("0x1",32)
CMM.store_arg(0)
CMM.push_symbol("factorial_helper")
CMM.cmm_tail_call()
-- data flow node
CMM.end_procedure()
CMM.procedure ('factorial_helper',2,0,{}) -- stack data size correct
CMM.fetch_arg(1)
CMM.store_local(1)
CMM.fetch_arg(0)
CMM.store_local(0)
CMM.fetch_local(1)

CMM.push_literal("0x1",32)
CMM.apply_operator("leu","bits32,bits32:bool")
CMM.cbrancht('factorial_helper:l18')
CMM.push_symbol("factorial_helper:l19")
CMM.comment('c',0)
CMM.goto()
CMM.push_symbol("factorial_helper:l18")
CMM.comment('c',0)
CMM.goto()
CMM.define_label('factorial_helper:l19') -- could be a continuation node 
CMM.push_symbol("factorial_helper:l16")
CMM.comment('c',0)
CMM.goto()
CMM.define_label('factorial_helper:l18') -- could be a continuation node 
CMM.fetch_local(0)
CMM.store_arg(0)
CMM.cmm_return(0,0)
CMM.define_label('factorial_helper:l16') -- could be a continuation node 
CMM.fetch_local(1)

CMM.push_literal("0x1",32)
CMM.apply_operator("sub","bits32,bits32:bits32")
CMM.store_arg(1)
CMM.fetch_local(0)

CMM.fetch_local(1)
CMM.apply_operator("mul","bits32,bits32:bits32")
CMM.store_arg(0)
CMM.push_symbol("factorial_helper")
CMM.cmm_tail_call()
-- data flow node
-- data flow node
CMM.end_procedure()
CMM.procedure ('main',2,0,{}) -- stack data size correct
CMM.fetch_arg(0)
CMM.store_local(0)
CMM.fetch_local(0)
CMM.store_arg(0)
CMM.push_symbol("factorial")
CMM.call({}, {}, {}, 0) -- cuts, unwinds, returns, aborts 
-- data flow node
CMM.fetch_arg(0)
CMM.store_local(1)
CMM.fetch_local(1)
CMM.store_arg(0)
CMM.push_symbol("print")
CMM.call({}, {}, {}, 0) -- cuts, unwinds, returns, aborts 
-- data flow node
CMM.cmm_return(0,0)
-- data flow node
CMM.end_procedure()
CMM.end_section()
