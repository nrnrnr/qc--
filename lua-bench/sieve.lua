-- $Id$
-- http://www.bagley.org/~doug/shootout/
--
-- Roberto Ierusalimschy pointed out the for loop is much
-- faster for our purposes here than using a while loop.

function main(num)
    local flags = {}
    while num >= 1 do
	count = 0
	local i=2; while i <= 8192 do
	    flags[i] = 1; i = i + 1
	end
        i = 2
	while i <= 8192 do
	    if flags[i] == 1 then
	        local k = i + i; while k <= 8192 do
		    flags[k] = 0
                    k = k + i
		end
	        count = count + 1	
	    end
            i = i + 1
	end
	num = num - 1
    end
end

NUM = tonumber((arg and arg[1])) or 1
count = 0
main(NUM)
write("Count: ", count, "\n")
