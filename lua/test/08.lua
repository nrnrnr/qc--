
$ifnot setfallback

  assert(dofile(_WD..'setfallback.lua'))

$end

print('testando fallbacks')
-- Inheritance
 
function index (t,f)
  if f == 'parent' then return oldIndex(t,f) end
  local p = t.parent
  return if type(p) == 'table' then p[f]
  else oldIndex(t,f)
  end
end
 
oldIndex = setfallback('index', index)
 

function method (a, b, op)
  return if type(a) == 'table' then a[op](a, b)
  else oldMethod (a, b, op)
  end
end

oldMethod = setfallback('arith', method)

function newcall (a, b)
  return if type(a) == 'table' then a:create(b)
  else oldCall(a)
  end
end

oldCall = setfallback('function', newcall)


point = {x=0, y=0}

function point:add (p)
  return point{self.x+p.x, self.y+p.y}
end

function point:mul (p)
  return point{self.x*p.x, self.y*p.y}
end

function point:create(o) 
  o.parent = point;
  o.x = o[1]
  o.y = o[2]
  o[1] = nil
  o[2] = nil
  return o 
end

print('+')

i = -1
a = point{0,0}
while (i=i+1) < 1000 do
  a = a+point{i/2, 0}
end

print('+')
assert(a.x == 249750 and a.y == 0)

-- C fallback
assert(2^3 == 8)

-- getglobal fallback
roberto = nil
waldemar = nil
function gg (x) return x end
oldgetglobal = setfallback('getglobal', gg)
assert(oldgetglobal)
assert(roberto == 'roberto')
roberto = waldemar
assert(roberto == 'waldemar')
roberto = nil
assert(roberto == 'roberto')

assert(setfallback('index', oldIndex))
assert(setfallback('arith', oldMethod))
assert(setfallback('function', oldCall))
assert(setfallback('getglobal', oldgetglobal))

assert(roberto == nil)

print('OK')

