print('testando variaveis locais')

f = nil

local f
x = 1

assert(type(dostring('local a = {}')) == 'userdata')

function f (a)
  local _1, _2, _3, _4, _5, _6, _7, _8, _9, _10
  local x = 3
  local b = a
  local c,d = a,b
  if (d == b) then
    local x = 'q'
    x = b
    assert(x == 2)
  else
    assert(nil)
  end
  assert(x == 3)
  local f = 10
end

-- shadowing
assert(not call(dostring, {[[local a; function a() x=a end]]}, '', nil))

assert(x == 1)

f(2)
assert(type(f) == 'function')

print('OK')

return 5,f
