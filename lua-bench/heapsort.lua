#!/usr/local/bin/lua
-- $Id$
-- http://www.bagley.org/~doug/shootout/

-- N.B. the following local declarations somehow trigger bugs in lua 2.5+nw
-- local IM = 139968
-- local IA =   3877
-- local IC =  29573

LAST = 42
function gen_random(max)
    -- LAST = mod((LAST * %IA  + %IC  ), %IM   )
       LAST = mod((LAST * 3877 + 29573), 139968)
    -- return( (max * LAST) / %IM    )
       return( (max * LAST) / 139968 )
end

function heapsort(n, ra)
    local j, i, rra
    local l = floor(n/2) + 1
    local ir = n;
    while 1 do
	if l > 1 then
	    l = l - 1
	    rra = ra[l]
	else
	    rra = ra[ir]
	    ra[ir] = ra[1]
	    ir = ir - 1
	    if (ir == 1) then
		ra[1] = rra
		return
	    end
	end
	i = l
	j = l * 2
	while j <= ir do
	    if (j < ir) and (ra[j] < ra[j+1]) then
		j = j + 1
	    end
	    if rra < ra[j] then
		ra[i] = ra[j]
		i = j
		j = j + i
	    else
		j = ir + 1
	    end
	end
	ra[i] = rra
    end
end

local ary = {}
local N = (tonumber((arg and arg[1])) or 1)

local i = 1
while i <= N do
    ary[i] = gen_random(1.0)
    i = i + 1
end

heapsort(N, ary)

write(format("%0.10f\n", ary[N]))
