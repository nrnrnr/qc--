backend = Backend.ppc
backend.ralloc = backend.ralloc or Ralloc.color

Options.swap = 1

-- compare results with files in ppc
Test.asmdir = Test.asmdir or "ppc"

Ld.rtend = ""  --- don't need the run-time system
-- source files live in src directory
Test.source  = "src"
dofile('l32files.lua')
