backend = Backend.sparc

Test.asmdir = Test.asmdir or "sparc"

Ld.rtend = ""  --- don't need the run-time system
-- source files live in src directory
Test.source  = "src"
Options.swap = 1

dofile('l32files.lua')
