-- setup x86 backend with color-graph register allocator
backend = Backend.x86
backend.ralloc = backend.ralloc or Ralloc.color

-- These programs have output
Test.trust_exe = 1

-- compare results with files in x86
Test.results = Test.results or "x86"

-- source files live in src directory
Test.source  = "src"
Test.files = { "add.c--"
             , "bits-bug.c--"
             , "blockcpy.c--"
             , "fadd.c--"
             , "hello.c--"
             , "ovrflow.c--"
             }
