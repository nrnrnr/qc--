-- $Id$
-- http://www.bagley.org/~doug/shootout/

local n = tonumber((arg and arg[1]) or 1)
local x = 0
local a = 1; while a <= n do a = a + 1
    local b = 1; while b <= n do b = b + 1
	local c = 1; while c <= n do c = c + 1
	    local d = 1; while d <= n do d = d + 1
		local e = 1; while e <= n do e = e + 1
		    local f = 1; while f <= n do f = f + 1
			x = x + 1
		    end
		end
	    end
	end
    end
end
write(x,"\n")
