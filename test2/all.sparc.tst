backend = Backend.sparc

-- compare results with files in x86
Test.results = Test.results or "sparc"

Ld.rtend = ""  --- don't need the run-time system
-- source files live in src directory
Test.source  = "src"
Options.swap = 1

dofile('l32files.lua')
