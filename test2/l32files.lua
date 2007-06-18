Test.files = { "add.c--"
             , { source = "altread.c--", argv='output/altread.1 /does-not-exist',
                 other= 'src/errno.c' }
             , "altret.c--"
             , { source="altret2.c--", stdin="altret2.0", rc=1 }
             , { source="altret3.c--", argv='src/altret3.c-- nonexists .',
                 other='src/errno.c'  }
             , "arglist.c--"
             , "bits-bug.c--"
             , "bool.c--"
             , "blockcpy.c--"
             , { source = 'carry.c--', other = 'src/ctest.c' }
             , "cut.c--"
             , "conj.c--"
             , 'deadcut.c--'
             , "divmod.c--"
             , "emptyifbody.c--"
             , "if-false.c--"
             , "if-false2.c--"
             ---  , "inf.c--"  -- infinite loop, used to test limit mechanism
             , "exp-000.c--"
             , "exp-001.c--"
             , "fadd.c--"
             , "failedcase.c--"
             , { source="fargres.c--", other='src/double.c' }
-----             , "fcall.c--"
             , "float-000.c--"
             , "float-001.c--"
             , "float-001-hero.c--"
             , "float-001-coward.c--"
             , 'float-002.c--'
             , { source='float-003.c--' }  -- .outdir will be modified for sparc
             , 'f2.c--'
             , { source = { 'global.c--', 'incn.c--' } }
             , "hello.c--"
             , "hex.c--"
             , "jtab.c--"    -- computed goto with jump table
             , { source='ladd.c--', other='src/ops64.c' }
             , { source = 'lit8.c--', other='src/lit8main.c' }
             , "live_rtd.c--"
             , "multasgn.c--"
             , "not.c--"
             , "ovrflow.c--"
             , "ralloc-000.c--"
             , 'ratail.c--'
             , { source='r64.c--', other='src/r64main.c' }
             , "rnd2.c--"
             , "round.c--"
             , "round2.c--"
             , 'sparcerr.c--'
             , { source="spdemo.c--", argv="4" }
             , "sub.c--"
             , "switch.c--"
             , { name='tadd', source='tadd.c--' }
             , { name='tadd22', source='tadd.c--', argv='2 2' }
             , { name='tadd100-', source='tadd.c--', argv='100 -1' }
             , { name='tadd11', source='tadd.c--', argv='-1 -1' }
             , { name='taddov', source='tadd.c--', argv='536870912 536870912', rc=1 }
             , "tail.c--"
             , "tail_from_c.c--"
             , "tailbug.c--"
             , { source = {'tail2.c--', 'call3.c--'} }
             , { source = {'tailnot.c--', 'call3.c--'} }
             , 'test-039.c--'
             , 'test-050.c--'
             , 'tf.c--'
             , 'wtizzy.c--'
             , "x86-000.c--"
             , "x86-001.c--"
             , "zerou.c--"
             }
