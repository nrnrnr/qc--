-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- implemented by: Roberto Ierusalimschy

local IM = 139968
local IA = 3877
local IC = 29573

LAST = 42
function gen_random(max)
    -- LAST = mod((LAST * %IA  + %IC  ), %IM   )
       LAST = mod((LAST * 3877 + 29573), 139968)
    -- return( (max * LAST) / %IM    )
       return( (max * LAST) / 139968 )
end

local N = tonumber((arg and arg[1])) or 1
local i = N; while i > 2 do i = i - 1
    gen_random(100)
end
write(format("%.9f\n", gen_random(100)))
