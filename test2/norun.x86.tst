backend = Backend.x86
backend.ralloc = backend.ralloc or Ralloc.color

-- compare results with files in x86
Test.results = Test.results or "x86"

function norun(file) return { source = file, runnable="false" } end

Ld.rtend = ""  --- don't need the run-time system
-- source files live in src directory
Test.source  = "src"
Test.files = { norun("eqasolve-000.c--")
             , norun("exp-002.c--")
             , norun("exp-003.c--")
	     , norun('unwind.c--')
             }

print('# these tests pass if they assemble successfully (diffs in .s only)')
Test.different_asm_ok = 1