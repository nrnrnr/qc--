backend = Backend.x86
backend.ralloc = backend.ralloc or Ralloc.color

-- compare results with files in x86
Test.asmdir = Test.asmdir or "x86"

Ld.rtend = ""  --- don't need the run-time system
-- source files live in src directory
Test.source  = "src"
dofile('l32files.lua')
