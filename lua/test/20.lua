print('testando tags e tag methods')

assert(tag(2) == tag(0) and tag{} == tag{})

i = 0
while (i=i+1)<=400 do newtag() end

t1 = settag({5,6,"noite"}, newtag())
tt = tag(t1)
assert(type(t1) == 'table' and tag(t1) == tt)

t2 = settag({1,2,"alo"}, newtag())
tt2 = tag(t2)

t3 = {10,2,3}

function f(t, i) return rawgettable(t, i)+3 end
assert(gettagmethod(tt, 'gettable') == nil)
assert(settagmethod(tt, 'gettable', f) == nil)
assert(gettagmethod(tt, 'gettable') == f)
assert(settagmethod(tt, 'gettable', f) == f)

function f(t, i, v) rawsettable(t, i, v-3) end
settagmethod(tt, 'settable', f)

tt1 = newtag()
copytagmethods(tt1, tt)
settag(t1, tt1)


assert(t1[1] == 8)
assert(rawgettable(t1, 1) == 5)
assert(t2[3] == 'alo')
assert(rawgettable(t1, 3) == "noite")
assert(rawgettable(t2, 1) == 1)

t1.x, a, b, t1.y, c = 10, 1, 1, 15
assert(rawgettable(t1, 'x') == 7 and rawgettable(t1, 'y') == 12)
assert(t1.x == 10 and t1.y == 15)
settagmethod(tt, 'gettable', nil)
copytagmethods(tt1, tt)
assert(t1.x == 7)

t2.x = 10
assert(rawgettable(t2, 'x') == t3[1])
assert(t2.x == 10)
print('+')

function f(t, p1) return rawgettable(t, p1) end
settagmethod(tt1, 'function', f)

assert(t1(3) == 'noite')

t2.x = 'alo'
function f (s1, s2)
  if type(s1) == 'table' then s1 = s1.x end
  if type(s2) == 'table' then s2 = s2.x end
  return s1..s2
end
settagmethod(tt2, 'concat', f)
assert(t2..'x' == 'alox')
assert('a'..t2 == 'aalo')

tt = newtag()
x = {realvalue = 0}
settag(x, tt)
assert(tag(x) == tt)

function fs (name, oldvalue, newvalue)
  oldvalue.realvalue = newvalue   -- modifica o realvalue
  y = newvalue
end
settagmethod(tt, 'setglobal', fs)

function fg (name, value)
  return value.realvalue   -- retorna valor 'real' de x
end
settagmethod(tt, 'getglobal', fg)

x = 10
assert(x == 10 and y == 10 and getglobal('x') == 10 and
       type(rawgetglobal('x')) == 'table')

setglobal('x', print)
assert(x == print and y == print and getglobal('x') == print and
       type(rawgetglobal('x')) == 'table')

rawsetglobal('x', 4)
x = 12
assert(x == 12 and y == print)

rawsetglobal('x', nil); fs = nil; fg = nil;
assert(x == nil)

print('+')


tt = newtag()
a = {}
settag(a, tt)

function f(...) cap = arg ; return arg[1] end
settagmethod(tt, 'add', f)

assert(a+5 == a)
assert(cap[1] == a and cap[2] == 5 and cap[3] == 'add')

assert(5+a == 5)
assert(cap[1] == 5 and cap[2] == a and cap[3] == 'add')

settagmethod(tt, 'lt', f)

assert(a<5 == a)
assert(cap[1] == a and cap[2] == 5 and cap[3] == 'lt')

assert(5<a == 5)
assert(cap[1] == 5 and cap[2] == a and cap[3] == 'lt')

settagmethod(tt, 'concat', f)

assert(a .. 'alo' == a)
assert(cap[1] == a and cap[2] == 'alo' and cap[3] == 'concat')

assert('alo' .. a == 'alo')
assert(cap[1] == 'alo' and cap[2] == a and cap[3] == 'concat')


tt1 = newtag()
assert(copytagmethods(tt1, tt) == tt1)
assert(gettagmethod(tt1, 'concat') == f)
assert(gettagmethod(tt1, 'lt') == f)



print('OK')

return 12
