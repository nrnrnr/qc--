
-- setup x86 backend with color-graph register allocator
backend = Backend.x86
backend.ralloc = Ralloc.color

-- tiger setup
function CMD.compilertab[".tig"](file)
  local tmp = CMD.outfilename(file, '.c--')
  CMD.exec('../../frontends/tiger/tigerc ' .. file .. ' > ' .. tmp)
  return tmp
end

Test.trust_exe = 1
Test.source  = "../../frontends/tiger/test"
Test.results = "../../frontends/tiger/test/x86"

-- source files live in src directory
Test.files = { { source = "arrays.tig"
               , stdin = "/dev/null"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "colmajor.tig"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "forloop.tig"
               , stdin = "/dev/null"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "funcall.tig"
               , stdin = "/dev/null"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "hello.tig"
               , stdin = "/dev/null"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "merge.tig"
               , stdin = "/dev/null"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "qsort.tig"
               , stdin = "/dev/null"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "queens.tig"
               , stdin = "/dev/null"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "rc4.tig"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "sieve.tig"
               , stdin = "/dev/null"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             , { source = "wf.tig"
               , stdin = "/dev/null"
               , other = "../../frontends/tiger/runtime.o ../../frontends/tiger/stdlib.a"
               }
             }
