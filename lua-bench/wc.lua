-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- from Roberto Ierusalimschy

BUFSIZE = 2^12

local cc,lc,wc = 0,0,0
local lines, rest = read(BUFSIZE, "*l")
while lines do
    if rest then lines = lines..rest..'\n' end
    cc = cc+strlen(lines)
    local _,t = gsub(lines, "%S+", "")   -- count words in the line
    wc = wc+t
    _,t = gsub(lines, "\n", "\n")   -- count newlines in the line
    lc = lc+t
    lines, rest = read(BUFSIZE, "*l")
end

write(lc, " ", wc, " ", cc, "\n")
