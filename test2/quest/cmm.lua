--
-- $Id$
--
-- Quest generator for CMM C.
--

R    = Rand

CMM = {}
CMM.any_int        = R.any_int
CMM.any_float      = R.any_float

CMM.any_int = R.oneof
    { R.char
    , R.short
    , R.int
    , R.long
    , R.unsigned(R.char)
    , R.unsigned(R.short)
    , R.unsigned(R.int)
    , R.unsigned(R.long)
    }

CMM.members        = R.choose(1,3)  -- for structs, unions
CMM.argc           = R.choose(1,10) -- argv  length
CMM.vargc          = R.oneof { R.unit(0), R.choose(1,4) } -- vargv length
CMM.vargc          = R.unit(0)
CMM.simple         = R.oneof { CMM.any_int, CMM.any_float }
CMM.simple_varg    = R.oneof { R.int , R.long , R.double }
CMM.array_size     = R.freq { 2, R.unit(1) , 1, R.unit(2) , 1, R.unit(3) }
CMM.bitfields      = R.list(R.choose(0,4),R.bitfield(R.choose(1,12)))

function CMM.result_ (issimple)
    if issimple then
        return CMM.simple
    else 
        return R.smaller 
        { CMM.any_int
        , CMM.any_float
        , R.pointer(CMM.result)
        , R.struct(R.list(CMM.members,CMM.arg))
        , R.union(R.list(CMM.members,CMM.arg))
        }
    end     
end    
CMM.result = R.bind(R.iszero,CMM.result_)

--
-- argument
--


function CMM.arg_ (issimple)
    if issimple then
        return CMM.simple
    else 
        return R.smaller 
        { CMM.any_int
        , CMM.any_float
        , R.pointer(CMM.arg)
        , R.array(CMM.arg,CMM.array_size)
        , R.struct(R.concat{ R.list(CMM.members,CMM.arg)
                            , CMM.bitfields
                            , R.list(CMM.members,CMM.arg)
                            })
        , R.union(R.list(CMM.members,CMM.arg))
        }
    end     
end    
CMM.arg = R.bind(R.iszero,CMM.arg_)

-- a var arg must not be smaller than an int or a double, according to
-- the CMM C specification. I am not sure, but unsigned simple values,
-- are prohibited, too. However, all these types are allowed as part of
-- complex types.

function CMM.varg_ (issimple)
    if issimple then
        return CMM.simple_varg
    else return R.smaller
        { R.int
        , R.double
        , R.long
        , R.double
        , R.pointer(CMM.varg)
        , R.array(CMM.arg, CMM.array_size)
        , R.struct(R.list(CMM.members,CMM.arg))
        , R.union(R.list(CMM.members,CMM.arg))
        }
    end
end
CMM.varg = R.bind(R.iszero,CMM.varg_)

-- Here we make the generator [[ansi]] available from the command line by
-- registering it within the [[Test]] table.  Because we have var args, we
-- need to have at least one regular parameter. Test.ansi is a function
-- such that variables like CMM.argc are not immediately read. We
-- therefore have a chance to modify them on the command line before the
-- function is evaluated.

function CMM.test () return
    { args       = R.list(CMM.argc,CMM.arg)
    , varargs    = R.list(CMM.vargc,CMM.varg)
    , result     = CMM.result
    , static     = R.flip
    }
end

Test.cmm = 
    { doc        = "ANSI C, including var args, without 'long long'"
    , test       = CMM.test
    }

