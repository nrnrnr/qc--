backend = Backend.sparc

Test.asmdir = Test.asmdir or "sparc"

Ld.rtend = ""  --- don't need the run-time system
-- source files live in src directory
Test.source  = "src"
Options.swap = 1

dofile('l32files.lua')

local i = 1
while Test.files[i] do
  if Test.files[i].name == 'float-003' then
    Test.files[i].outdir = 'sparc'
  end 
  i = i + 1
end
