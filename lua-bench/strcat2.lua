-- $Id$
-- http://www.bagley.org/~doug/shootout/

-- this version uses the native string concatenation operator

local n = tonumber((arg and arg[1]) or 1)
local str = ""
local i=1; while i <= n do i = i + 1
    str = str.."hello\n"
end
write(strlen(str), "\n")
