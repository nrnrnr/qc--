backend = Backend.x86
backend.ralloc = backend.ralloc or Ralloc.color

Ld.rtend = ""  --- don't need the run-time system

Test.trust_exe = 1
Test.source    = "lcc"
Test.asmdir   = Test.asmdir or "lcc/x86"
Test.outdir   = Test.outdir or "lcc/output"

Test.files =
  { { source="8q.c--",                          }
  , { source="array.c--",                       }
  , { source="cf.c--",       stdin="juliet.txt" }
--, { source="cq.c--",                          }
  , { source="cvt.c--",                         }
  , { source="fields.c--",                      }
  , { source="front.c--",                       }
  , { source="incr.c--",                        }
  , { source="init.c--",                        }
  , { source="limits.c--",                      }
--, { source="paranoia.c--",                    }
  , { source="sort.c--",                        }
  , { source="spill.c--",                       }
--  , { source="stdarg.c--",                      } -- uses varargs
  , { source="struct.c--",                      }
  , { source="switch.c--",                      }
  , { source="wf1.c--",      stdin="juliet.txt" }
--  , { name="wf2", source="wf1.c--",  force=1,          --- buffer overrun
--      stdin="wf2.0", stdout="wf2.1", stderr="wf2.2" }
--, { source="yacc.c--",                        }
  }
