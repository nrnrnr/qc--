backend = Backend.x86
backend.ralloc = backend.ralloc or Ralloc.color

-- compare results with files in x86
Test.results = Test.results or "x86"

Ld.rtend = ""  --- don't need the run-time system
-- source files live in src directory
Test.source  = "src"
Test.files = { "add.c--"
             , "altret.c--"
             , { source="altret2.c--", stdin="altret2.0" }
             , { source="altret3.c--", argv='src/altret3.c-- nonexists .' }
             , "bits-bug.c--"
             , "bool.c--"
             , "blockcpy.c--"
             , "cut.c--"
             , "arglist.c--"
             , "conj.c--"
	     , "divmod.c--"
	     , "emptyifbody.c--"
	     , "if-false.c--"
	     , "if-false2.c--"
             , "err-000.c--"
             , "exp-000.c--"
             , "exp-001.c--"
             , "fadd.c--"
	     , { source="fargres.c--", other='src/double.c' }
             , "float-000.c--"
             , "float-001.c--"
             , 'float-002.c--'
             , 'float-003.c--'
	     , 'f2.c--'
             , { source = { 'global.c--', 'incn.c--' } }
             , "hello.c--"
	     , "hex.c--"
	     , { source='ladd.c--', other='src/ops64.c' }
             , "not.c--"
             , "ovrflow.c--"
             , "ralloc-000.c--"
	     , { source='r64.c--', other='src/r64main.c' }
             , "rnd2.c--"
	     , { source="spdemo.c--", argv="4" }
             , "sub.c--"
	     , "switch.c--"
	     , { name='tadd', source='tadd.c--' }
	     , { name='tadd22', source='tadd.c--', argv='2 2' }
	     , { name='tadd100-', source='tadd.c--', argv='100 -1' }
	     , { name='tadd11', source='tadd.c--', argv='-1 -1' }
	     , { name='taddov', source='tadd.c--', argv='536870912 536870912' }
	     , "tail.c--"
             , "tail_from_c.c--"
             , { source = {'tail2.c--', 'call3.c--'} }
             , { source = {'tailnot.c--', 'call3.c--'} }
	     , 'test-050.c--'
             , "x86-000.c--"
             , "x86-001.c--"
             }
