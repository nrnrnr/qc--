-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- with help from Roberto Ierusalimschy

 n = tonumber((arg and arg[1]) or 1)

 size = tonumber((arg and arg[2]) or 30)
 size = 30

function mkmatrix(rows, cols)
    local count = 1
    local mx = {}
    local i = 0
    while i < rows do
	local row = {}
	local j = 0
	while j < cols do
	    row[j] = count
	    count = count + 1
	    j = j + 1
	end
	mx[i] = row
        i = i + 1
    end
    return(mx)
end

function mmult(rows, cols, m1, m2)
    local m3 = {}
    local i = 0
assert(rows>2 and cols>2)
    while i < rows do
        m3[i] = {}
        local m1_i = m1[i]              -- "cache" m1[i]
        local j = 0
        while j < cols do
            local rowj = 0
            local k = 0
            while k < cols do
                rowj = rowj + m1_i[k] * m2[k][j]
	        k = k + 1
            end
            m3[i][j] = rowj
            j = j + 1
        end
        i = i + 1
    end
    return(m3)
end

local m1 = mkmatrix(size, size)
local m2 = mkmatrix(size, size)
local i = 1
while i <= n do
    mm = mmult(size, size, m1, m2)
    i = i + 1
end
write(format("%d %d %d %d\n", mm[0][0], mm[2][3], mm[3][2], mm[4][4]))
