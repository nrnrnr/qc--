backend = Backend.x86
backend.ralloc = backend.ralloc or Ralloc.color

-- compare results with files in x86
Test.asmdir = Test.asmdir or "x86"

Ld.rtend = Ld.rtend  --- do need the run-time system
-- source files live in src directory
Test.source  = "src"
Test.files = { { source = 'deadcontvar.c--', other = 'src/deadcontvar-unwind.c' }
             , { source = 'fact.c--'       , other = 'src/factmain.c' }
             , { source = 'fork.c--'       , other = 'src/forkmain.c' }
             , { source = 'nest.c--'       , other = 'src/nestmain.c' }
             , { source = 'trace.c--'      , other = 'src/tracemain.c' }
             , { source = 'unwind.c--'     , other = 'src/unwindt.c' }
             }

