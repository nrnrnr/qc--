#!/usr/local/bin/lua
-- $Id$
-- http://www.bagley.org/~doug/shootout/

local lines = {}
local w = write
local r = read
nl = 0
local l
repeat 
  l = read()
  lines[nl] = l
  nl = nl + 1
until not l

local i = nl - 1; while i > 0 do i = i - 1
    w(lines[i], '\n')
end
