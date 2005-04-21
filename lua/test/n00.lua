$debug 1

function f() 
  return 1, 2
end

function g()
  return f()
end

x, y = g()

print('testing multi-result call and return')
assert(x == 1 and y == 2)

x, y, z, w = g()
assert(x == 1 and y == 2 and not z and not w)


function h(x, y, z)
  return x, y, z
end

x, y, z = h(3, f())
assert(x == 3 and y == 1 and z == 2)

x, y, z = h(f(), 3)
assert(x == 1 and y == 3 and z == nil)


print('OK')

