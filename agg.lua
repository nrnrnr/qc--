-- Aggregations to be used for profiling
local f = loadfile('caml-agg.lua') or assert(loadfile('../caml-agg.lua'))
f()
f = loadfile('caml-hand-agg.lua') or assert(loadfile('../caml-hand-agg.lua'))
f()


aggregate ('memory management',
           { 'caml roots.o', 'caml globroots.o', 'caml freelist.o',
             'caml major_gc.o', 'caml minor_gc.o', 'caml memory.o',
             'caml alloc.o', 'caml gc_ctrl.o', 'caml compact.o' })
aggregate ('memory management',
           { 'caml_alloc1', 'caml_alloc2', 'caml_alloc3', 'caml_allocN',
             'caml_call_gc' }, 'caml i386.o')
aggregate("caml_c_call", "caml_c_call", 'caml i386.o')



aggmodule { 'Register', 'Rtlutil', 'Live', 'Widen', 'Expand', 'X86' }

aggmodule { 'Dls', 'Simplify', 'Vfp', 'Debug', 'Dataflow', 'Zipcfg' }

aggmodule { 'Luautil', 'Camlburg' }

aggmodule { 'X86rec' }

aggmodule { 'Set', 'Map', 'Hashtbl' }

aggmodule { 'Auxfuns', 'Pervasives', 'Target', 'Bits' }

aggmodule { 'Strutil', 'Stack', 'Types', 'Property' }
aggmodule { 'Optimize', 'Elabexp', 'Nelab', 'Nast', 'Elabstmt' }

aggmodule { 'Printf', 'Buffer', 'List', 'String', 'Unique', 'Mvalidate', 'Runtimedata' }
aggmodule { 'Int64', 'Char', 'Array', 'Lexing' }
aggregate('Printf', {'caml_format_int', 'caml_nativeint_format', 'parse_format'}, 'caml ints.o')
aggregate('Printf', 'caml_format_float', 'caml floats.o')
aggregate ( 'Printf',
           { "parse_format", "caml_format_int", "caml_format_float", 
             "caml_nativeint_format", })

aggregate('caml_obj_dup', 'caml_obj_dup', 'caml obj.o')


aggmodule { 'Parsing' }
aggregate ('Parsing', 'caml parsing.o')

aggmodule { 'Srcmap' }




aggmodule { 'Alignment' }
aggmodule { 'Asm' }
aggmodule { 'Ast2ir' }
aggmodule { 'Astasm' }
aggmodule { 'Astpp' }
aggmodule { 'Automatongraph' }
aggmodule { 'Automaton' }
aggmodule { 'Automatonutil' }
aggmodule { 'Auxfuns' }
aggmodule { 'Avail' }
aggmodule { 'Availpass' }
aggmodule { 'Backplane' }
aggmodule { 'Bcopy' }
aggmodule { 'Bitset64' }
aggmodule { 'Block' }
aggmodule { 'Call' }
aggmodule { 'Callspec' }
aggmodule { 'Cfg' }
aggmodule { 'Cfgutil' }
aggmodule { 'Cfgx' }
aggmodule { 'Colorgraph' }
aggmodule { 'Context' }
aggmodule { 'Contn' }
aggmodule { 'Ctypes' }
aggmodule { 'Dataflow' }
aggmodule { 'Dead' }
aggmodule { 'Dls' }
aggmodule { 'Dominator' }
aggmodule { 'Dotasm' }
aggmodule { 'Driver' }
aggmodule { 'Dummy' }
aggmodule { 'Elabexp' }
aggmodule { 'Elabstmt' }
aggmodule { 'Ep' }
aggmodule { 'Eqn' }
aggmodule { 'Error' }
aggmodule { 'Expander' }
aggmodule { 'Fenv' }
aggmodule { 'Float' }
aggmodule { 'Idcode' }
aggmodule { 'Idgen' }
aggmodule { 'Interpasm' }
aggmodule { 'Interpemit' }
aggmodule { 'Interpemitrtl' }
aggmodule { 'Interp' }
aggmodule { 'Interval' }
aggmodule { 'Lifetime' }
aggmodule { 'Live' }
aggmodule { 'Liveset' }
aggmodule { 'Lualink' }
aggmodule { 'Luautil' }
aggmodule { 'Main' }
aggmodule { 'Mangle' }
aggmodule { 'Memalloc' }
aggmodule { 'Metrics' }
aggmodule { 'Mflow' }
aggmodule { 'Mvalidate' }
aggmodule { 'Nast' }
aggmodule { 'Nelab' }
aggmodule { 'Opshape' }
aggmodule { 'Optimize' }
aggmodule { 'Parse' }
aggmodule { 'Peephole' }
aggmodule { 'Pic' }
aggmodule { 'Placevar' }
aggmodule { 'Postexpander' }
aggmodule { 'Proc' }
aggmodule { 'Property' }
aggmodule { 'Registerclass' }
aggmodule { 'Reinit' }
aggmodule { 'Rewrite' }
aggmodule { 'Rtldebug' }
aggmodule { 'Rtleqn' }
aggmodule { 'Rtlop' }
aggmodule { 'Rtlutil' }
aggmodule { 'Rtlx' }
aggmodule { 'Runtimedata' }
aggmodule { 'Scan' }
aggmodule { 'Simplify' }
aggmodule { 'Space' }
aggmodule { 'Spans' }
aggmodule { 'Stack' }
aggmodule { 'Strutil' }
aggmodule { 'Talloc' }
aggmodule { 'Target' }
aggmodule { 'This' }
aggmodule { 'Topsort' }
aggmodule { 'Tx' }
aggmodule { 'Typecheck' }
aggmodule { 'Types' }
aggmodule { 'Unique' }
aggmodule { 'Varmap' }
aggmodule { 'Vfp' }
aggmodule { 'Widen' }
aggmodule { 'X86asm' }
aggmodule { 'X86call' }
aggmodule { 'X86' }
aggmodule { 'X86rec' }
aggmodule { 'X86regs' }
aggmodule { 'Zipcfg' }
aggmodule { 'Zipecfg' }
aggmodule { 'Zipncfg' }

aggmodule { 'Base' }
aggmodule { 'Bits' }
aggmodule { 'Cell' }
aggmodule { 'Debug' }
aggmodule { 'Impossible' }
aggmodule { 'Register' }
aggmodule { 'Reloc' }
aggmodule { 'Rtl' }
aggmodule { 'Symbol' }
aggmodule { 'Uint64' }
aggmodule { 'Unsupported' }

aggmodule { 'Luaast' }
aggmodule { 'Luabaselib' }
aggmodule { 'Luacamllib' }
aggmodule { 'Luafloat' }
aggmodule { 'Luahash' }
aggmodule { 'Luaiolib' }
aggmodule { 'Luainterp' }
aggmodule { 'Lualib' }
aggmodule { 'Luamathlib' }
aggmodule { 'Lua' }
aggmodule { 'Luaparser' }
aggmodule { 'Luaparsex' }
aggmodule { 'Luarun' }
aggmodule { 'Luascanner' }
aggmodule { 'Luastrlib' }
aggmodule { 'Luavalue' }


aggregate ('the Lua-ML system', { 'Luaast',
             'Luabaselib',
             'Luacamllib',
             'Luafloat',
             'Luahash',
             'Luaiolib',
             'Luainterp',
             'Lualib',
             'Luamathlib',
             'Lua',
             'Luaparser',
             'Luaparsex',
             'Luarun',
             'Luascanner',
             'Luastrlib',
             'Luavalue' })


aggregate('qc-- front end',
          { 'Parse', 'Nast', 'Nelab', 'Elabexp', 'Elabstmt', 'Fenv' })
