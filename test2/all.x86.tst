backend = Backend.x86
backend.ralloc = backend.ralloc or Ralloc.color

-- compare results with files in x86
Test.results = Test.results or "x86"

function norun(file) return { source = file, runnable="false" } end

-- source files live in src directory
Test.source  = "src"
Test.files = { "add.c--"
             , "bits-bug.c--"
             , "bool.c--"
             , "blockcpy.c--"
             , "cut.c--"
             , "arglist.c--"
             , "conj.c--"
             , norun("eqasolve-000.c--")
             , "exp-000.c--"
             , norun("exp-001.c--")
             , norun("exp-002.c--")
             , norun("exp-003.c--")
             , "fadd.c--"
	     , { source="fargres.c--", other='src/double.c' }
             , norun("float-000.c--")
             , norun("float-001.c--")
	     , 'f2.c--'
             , "hello.c--"
	     , norun("hex.c--")
	     , { source='ladd.c--', other='src/ops64.c' }
             , norun("non-local-cut.c--")
             , norun("not.c--")
             , "ovrflow.c--"
             , norun("ralloc-000.c--")
             , norun("rnd2.c--")
             , "sub.c--"
	     , "switch.c--"
	     , "tail.c--"
             , { source = {'tail2.c--', 'call3.c--'} }
             , { source = {'tailnot.c--', 'call3.c--'} }
	     , 'test-050.c--'
             , norun("x86-000.c--")
             , norun("x86-001.c--")
             }
