-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- with help from Roberto Ierusalimschy

local n = tonumber((arg and arg[1]) or 1)

local hash1={}
local i = 0
while i <= 10000 do
    hash1["foo_"..i] = i
    i = i + 1
end
local hash2={}
local i = 1
while i < n do
    local k, v = next(hash1, nil)
    while k do
	hash2[k] = v + (hash2[k] or 0)
        k, v = next(hash1, k)
    end
    i = i + 1
end

write(format("%d %d %d %d\n", hash1["foo_1"], hash1["foo_9999"],
	     hash2["foo_1"], hash2["foo_9999"]))
