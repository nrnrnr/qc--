print('testando declaracoes de funcoes')

assert(type(assert) == type(print))
f = nil
function f (x) return a:x (x) end
assert(type(f) == 'function')
print('+')
a = {i = 10}
self = 20
function a:x (x) return x+self.i end
function a.y (x) return x+self end

assert(a:x(1)+10 == a.y(1))

a.t = {i=-100}
a["t"].x = function (self, a,b) return self.i+a+b end

assert(a.t:x(2,3) == -95)

a = {x=0}
function a:add (x) self.x = self.x+x; return self end
assert(a:add(10):add(20):add(30).x == 60)

print('OK')

