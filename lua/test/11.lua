print('testando coleta de lixo')
contCollected = 0

collectgarbage()

setglobal("while", 234)

limit = 5000

tt = newtag()

function fb (o)
  local a = "hello" .. "\0world"   -- create a string
  local b = {x=3}  -- create a table
  settag(b, tt)   -- avoids calling fb when collected
  assert(o == nil or type(o) == 'table')
  if o then
    contCollected = contCollected + 1
  else
    fim = 1
  end
  assert(b.x == 3)
end

settagmethod(tag{}, 'gc', fb)
settagmethod(tag(nil), 'gc', fb)


contCreate = 0

print('tabelas')
while contCreate <= limit do
  local a = {}; a = nil
--  if fim then
--    fim=nil; print(contCollected .. 'x' .. contCreate)
--    contCollected = 0;
--  end
  contCreate = contCreate+1
end

function fb1 (o)
  assert(o == nil or type(o) == 'table')
end


settagmethod(tag{}, 'gc', fb)
settagmethod(tag(nil), 'gc', fb)

a = "a"

contCreate = 0
print('strings')
while contCreate <= limit do
  if (mod(contCreate, 5000) < 1) then
      -- print("Criados " .. contCreate .. " Strings") 
  end
  a = contCreate .. "b";
  a = gsub(a, '(%d%d*)', strupper)
  a = "a"
  contCreate = contCreate+1
end


contCreate = 0

a = {}

print('funcoes')
function a:test ()
  while contCreate <= limit do
    dostring(format("function temp(a) return 'a%d' end", contCreate))
    assert(temp() == format('a%d', contCreate))
    contCreate = contCreate+1
  end
end

a:test()

print('strings longos')
x = "01234567890123456789012345678901234567890123456789012345678901234567890123456789"
assert(strlen(x)==80)
s = ''
n = 0
k = 300
while n < k do s = s..x; n=n+1; j=tostring(n)  end
assert(strlen(s) == k*80)
s = strsub(s, 1, 20000)
s, i = gsub(s, '(%d%d%d%d)', sin)
assert(i==20000/4)
s = nil
x = nil

assert(getglobal("while") == 234)

function f(x) i = nil end

settagmethod(tag(nil), 'gc', f)
i = 1;
while i do a = {} end  -- run until gc

collectgarbage()
i = 1
collectgarbage()
assert(i == nil)

settagmethod(tag{}, 'gc', nil)
settagmethod(tag(nil), 'gc', nil)

print('+')



ttb = newtag()
function f(t)
  assert(type(t) == 'table')
  assert(tag(t) == ttb)
  local x = {}
  tb = tb+1
end
settagmethod(ttb, 'gc', f)


function f () stop = 1 end
settagmethod(tag(nil), 'gc', f)

function cx ()
  tb = 0
  local i = 1
  stop = nil
  while not stop do
    local t = {}; settag(t, ttb)
    i = i+1
  end
  print(format("coletados %d tabelas em %d iteracoes", tb, i))
end

cx(); cx(); cx(); cx()

settagmethod(tt, 'gc', nil)
settagmethod(ttb, 'gc', nil)
settagmethod(tag(nil), 'gc', nil)

print('OK')
