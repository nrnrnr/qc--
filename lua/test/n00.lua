$debug 1

function f() 
  return 1, 2
end

function g()
  return f()
end

function gg()
  return g(), f()
end

x, y = g()

print('testing multi-result call and return')
assert(x == 1 and y == 2)

x, y, z, w = g()
assert(x == 1 and y == 2 and not z and not w)


function h(x, y, z)
  return x, y, z
end

function i(x)
  return x, f()
end

function j(x)
  return f(), x
end

x, y, z = h(3, f())
assert(x == 3 and y == 1 and z == 2)

x, y, z = h(f(), 3)
assert(x == 1 and y == 3 and z == nil)

x, y, z = i(99)
assert(x == 99 and y == 1 and z == 2)

x, y, z = j(99)
assert(x == 1 and y == 99 and z == nil)

x, y, z, w = gg()
assert(x == 1 and y == 1 and z == 2 and w == nil)


print('OK')

