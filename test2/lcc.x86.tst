backend = Backend.x86
backend.ralloc = backend.ralloc or Ralloc.color

Test.trust_exe = 1
Test.source    = "lcc"
Test.results   = Test.results or "lcc/x86"

Test.files =
  { { source="8q.c--",       stdin="/dev/null"  }
  , { source="array.c--",    stdin="/dev/null"  }
  , { source="cf.c--",       stdin="juliet.txt" }
--, { source="cq.c--",       stdin="/dev/null"  }
  , { source="cvt.c--",      stdin="/dev/null"  }
  , { source="fields.c--",   stdin="/dev/null"  }
  , { source="front.c--",    stdin="/dev/null"  }
  , { source="incr.c--",     stdin="/dev/null"  }
  , { source="init.c--",     stdin="/dev/null"  }
  , { source="limits.c--",   stdin="/dev/null"  }
--, { source="paranoia.c--", stdin="/dev/null"  }
  , { source="sort.c--",     stdin="/dev/null"  }
  , { source="spill.c--",    stdin="/dev/null"  }
--  , { source="stdarg.c--",   stdin="/dev/null"  } -- uses varargs
  , { source="struct.c--",   stdin="/dev/null"  }
  , { source="switch.c--",   stdin="/dev/null"  }
  , { source="wf1.c--",      stdin="juliet.txt" }
  , { name="wf2", source="wf1.c--",  force=1,
      stdin="wf2.0", stdout="wf2.1", stderr="wf2.2" }
--, { source="yacc.c--",     stdin="/dev/null"  }
  }
