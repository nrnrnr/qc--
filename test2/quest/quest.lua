--
-- This file belongs to Quest and defines the distribution of signatures
-- that it generates. This file should not be read by qc--.
-- 

-- abbreviations
R = Rand
-- 
-- This is the built-in Lua code for the Quest test-code generator. 
-- 
-- Dump this code to stdout:    quest -lua
-- Use a different Lua file:    quest -lua file.lua
--

Quest = {}
Quest.version = "$Id$"

-- interactive read, eval, print loop
function Quest.eval ()
    local prompt = "> "
    local stmt
    write ("-- ", Quest.version, "\n")
    write ("-- This is Lua-ML for Quest\n")
    
    write(prompt)
    stmt = read()
    while stmt ~= nil do
        dostring(stmt)
        write(prompt)
        stmt = read()
    end           
    exit()
end

-- open two files
function Quest.open2 (basename)
    local main   = format ("%s-main.c", basename)
    local client = format ("%s-callee.c", basename)
    return File.open_out(main), File.open_out(client)
end    

-- emit test cases for two compilation units
function Quest.stereo(options)
    local main, client = Quest.open2(options.out)
    local generator    = Test[options.gen]
    if generator == nil then
        File.close_out(main); File.close_out(client)
        error("no such test case generator: " .. options.gen)
    end
    local tests = Test.generate (generator, options.n, options.size)
        File.write(main, format("/* %s */\n", Quest.version))
        File.write(main, format("/* %s */\n", CMD.argstr))
        File.write(client, format("/* %s */\n", Quest.version))
        Emit.stereo(main, client, tests)
        File.close_out(main); File.close_out(client)
end

-- emit test cases for one compilation unit
function Quest.mono(options)
    local generator = Test[options.gen] 
    if generator == nil then
        error("no such test case generator: " .. options.gen)
    end
    local tests     = Test.generate (generator, options.n, options.size)
        File.write(File.stdout, format("/* %s */\n", Quest.version))
        File.write(File.stdout, format("/* %s */\n", CMD.argstr))
        Emit.mono(File.stdout,options.static,tests)
end

--
function Quest.try(options,gen)
    local i = 0
    while i < options.n do
        i = i + 1
        local uniq = Uniq.make ()
        local t = R.run(gen, uniq, options.size)
        print(t)
    end
end    

-- main routine, it is called from the OCaml module main.nw 
function Quest.main(options)
    if options.stereo then
        Quest.stereo(options)
    else
        Quest.mono(options)
    end    
end
--
-- Generators for ANSI C (accessible as `quest -test demo') 
--

Demo = {}
Demo.members = R.choose(1,3)
Demo.simple  = R.oneof {R.any_int, R.any_float }
Demo.array_size = R.freq 
    { 2, R.unit(1)
    , 1, R.unit(2)
    , 1, R.unit(3)
    }


function Demo.result_ (issimple)
    if issimple then
        return Demo.simple
    else 
        return R.smaller 
        { R.any_int
        , R.any_float
        , R.pointer(Demo.result)
        , R.struct(Demo.result,Demo.members)
        , R.union(Demo.result,Demo.members)
        }
    end     
end    
Demo.result = R.bind(R.iszero,Demo.result_)

--
-- regular parameters

function Demo.parameter_ (issimple)
    if issimple then
        return Demo.simple
    else 
        return R.smaller 
        { R.any_int
        , R.any_float
        , R.pointer(Demo.parameter)
        , R.array(Demo.parameter,Demo.array_size)
        , R.struct(Demo.parameter,Demo.members)
        , R.union(Demo.parameter,Demo.members)
        }
    end     
end    
Demo.parameter = R.bind(R.iszero,Demo.parameter_)

-- 
-- parameters passed as var-args. Attention: there must be at least one 
-- regular parameter and certain types are promoted when passed as 
-- var args. In particular, the smallest types are int and double. 
-- Therefore, don't pass char or unsigned ints, don't pass floats.
-- 

function Demo.varg_ (issimple)
    if issimple then
        return R.oneof
        { R.int
        , R.long
        -- , R.longlong
        , R.double
        , R.longdouble
        }
    else return R.smaller
        { R.int
        , R.double
        , R.pointer(Demo.varg)
        , R.struct(Demo.parameter,Demo.members)
        }
    end
end
Demo.varg = R.bind(R.iszero,Demo.varg_)
Test.demo =
    { args       = R.list(R.choose(1,4),Demo.parameter)
    , varargs    = R.list(R.unit(0),R.int)
    , result     = R.int
    }


