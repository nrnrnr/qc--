backend = Backend.dummy
Test.color = nil --- don't bother tracking separate results for dummy

-- compare results with files in dummy
Test.asmdir = Test.asmdir or "dummy"
Ld.rtend = ""  --- don't need the run-time system

-- source files live in src directory
Test.source  = "src"
Test.files = { "badlit8.c--"
             , "eqasolve-000.c--"
             , { source = "exp-002.c--", asmerr = 'dummy/exp-002.s2' }
             , { source = "exp-003.c--", asmerr = 'dummy/exp-003.s2' }
             , { source = "fadd.c--", asmerr = 'dummy/fadd.s2' }
             , { source = "float-000.c--", asmerr = 'dummy/float-000.s2' }
             , { source = "float-001.c--", asmerr = 'dummy/float-001.s2' }
             , "non-local-cut.c--"
             , { source = "rnd2.c--", asmerr = 'dummy/rnd2.s2' }
             , "test-000.c--"
             , "test-001.c--"
             , "test-002.c--"
             , "test-004.c--"
             , "test-005.c--"
             , "test-006.c--"
             , "test-007.c--"
             , "test-008.c--"
             , "test-009.c--"
             , "test-011.c--"
             , "test-012.c--"
             , "test-013.c--"
             , "test-014.c--"
             , "test-015.c--"
             , "test-016.c--"
             , "test-017.c--"
             , "test-018.c--"
             , "test-019.c--"
             , "test-020.c--"
             , "test-021.c--"
             , "test-022.c--"
             , "test-023.c--"
             , "test-024.c--"
             , "test-025.c--"
             , "test-026.c--"
             , "test-027.c--"
             , "test-028.c--"
             , "test-029.c--"
             , "test-030.c--"
             , "test-031.c--"
             , "test-032.c--"
             , "test-033.c--"
             , "test-034.c--"
             , "test-035.c--"
             , "test-036.c--"
             , "test-037.c--"
             , "test-038.c--"
    --       , "test-039.c--"  -- made runnable
             , "test-040.c--"
             , "test-041.c--"
             , "test-042.c--"
             , "test-043.c--"
             , "test-044.c--"
             , "test-045.c--"
             , "test-046.c--"
             , "test-047.c--"
             , "test-048.c--"
             , "test-049.c--"
             , "test-051.c--"
             }

local i = 1
while Test.files[i] do
  local file = Test.files[i]
  if type(file) == 'string' then
    file = { source = file }
  end
  file.runnable = 'false'
  Test.files[i] = file
  i = i + 1
end
