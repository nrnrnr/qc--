print('testando i/o')
file = tmpname()
otherfile = tmpname()

assert(setlocale('C', 'all') == 'C')

readfrom()
writeto()
assert(_INPUT == _STDIN and _OUTPUT == _STDOUT)

remove(file)
assert(dofile(file) == nil)
assert(readfrom(file) == nil)
assert(type(writeto(file)) == 'userdata')
assert(_OUTPUT ~= _STDOUT)

assert(seek(_OUTPUT) == 0)
assert(write("alo alo"))
assert(seek(_OUTPUT) == strlen("alo alo"))
assert(seek(_OUTPUT, "cur", -3) == strlen("alo alo")-3)
assert(write("joao"))
assert(seek(_OUTPUT, "end") == strlen("alo joao"))

assert(seek(_OUTPUT, "set") == 0)

assert(write('"álo"', "{a}\n", "second line\n", "third line \n"))
assert(write('çfourth_line', "\n\n"))
assert(writeto())
assert(_INPUT == _STDIN and _OUTPUT == _STDOUT)
print('+')

assert(rename(file, otherfile))
assert(rename(file, otherfile) == nil)

assert(appendto(otherfile))
assert(write("another line with an integer: 3450\n"));
assert(writeto())

assert(rename(otherfile, file))
assert(readfrom(file))
assert(read('{"}[^"]*{"}') == 'álo')
assert(read('%}.') == nil)
assert(read('%{.%}'))
assert(read('{%s*}[^\n]*{\n}') == "second line")
assert(read('%d%d*') == nil)
x = seek(_INPUT)
assert(read('[^\n]*\n') == "third line \n")
assert(seek(_INPUT, "set", x))
assert(read('[^\n]*\n') == "third line \n")
assert(read('x') == nil)
assert(read('ç') == "ç")
assert(read'*w' == "fourth_line")
assert(seek(_INPUT, "cur", -strlen"fourth_line"))
assert(read() == "fourth_line")
assert(read() == "")
assert(read('[^:]*:'))
assert(read('%d%d*') == nil)
assert(tonumber(read('%s*%d%d*')) == 3450)
assert(read('.') == '\n')
assert(read('.') == nil)
assert(read() == nil)
assert(read('.*') == '')
print('+')
assert(readfrom())
assert(remove(file))

t = '0123456789'
i=-1
while (i=i+1)<12 do t = t..t end
l = strlen(t)
assert(l == 10*2^12)

writeto(file)
write("alo\n")
writeto()
f = appendto(file)

assert(writeto(f))
assert(write(' ' .. t .. ' '))
assert(write(';', 'end of file\n'))
flush(f); flush()
writeto()
print('+')

assert(readfrom(file))
assert(read() == "alo")
assert(read('[^;]*') == ' '..t..' ')
assert(read('*a') == ';end of file\n')
assert(readfrom())

assert(remove(file))
print('+')

x1 = "string\n\n\\com \"\"''coisas [[estranhas]] ]]'"
assert(writeto(file))
assert(write(format("x2 = %q\n-- comentário sem EOL no final", x1)))
assert(writeto())
assert(dofile(file))
assert(x1 == x2)
print('+')
assert(remove(file))
assert(remove(file) == nil)
assert(remove(otherfile) == nil)

assert(writeto(file))
assert(write("qualquer coisa\n"))
assert(write("mais qualquer coisa"))
assert(writeto())
assert(writeto(otherfile))
assert(write("outra coisa\n\0\1\3\0\0\0\0\255\0"))
assert(writeto())

filehandle = readfrom(file)
otherfilehandle = readfrom(otherfile)
assert(filehandle and otherfilehandle and filehandle ~= otherfilehandle)
assert(type(filehandle) == "userdata")
readfrom(filehandle)
assert(read'*l' == "qualquer coisa")
_INPUT = otherfilehandle
assert(read() == "outra coisa")
assert(read(filehandle, '*l') == "mais qualquer coisa")
_INPUT = filehandle
readfrom()  -- close filehandle
readfrom(otherfilehandle)
assert(read('A?%z?[\1-\5]*%z') == "\0\1\3\0")
assert(read('%S%U[^\n]\255%s') == "\0\0\0\255")
assert(read('*a') == "\0")
assert(otherfilehandle == _INPUT)
readfrom()  -- close otherfilehandle
assert(remove(file))
assert(remove(otherfile))
assert(_INPUT == _STDIN)

assert(writeto(file))
write[[
123.4	-56e-2  not a number
second line
third line
a_word   another_word
and the rest of the file
]]
assert(writeto())
assert(readfrom(file))
a,b,c,d,e,f,g,h = read('*n', '*n', '*l', '*l', '*l', '*w', '*w', '*a')
assert(readfrom())
assert(type(a) == 'number' and a==123.4 and b==-56e-2)
assert(d=='second line' and e=='third line')
assert(f=='a_word' and g=='another_word')
assert(h==[[
and the rest of the file
]])
assert(remove(file))

settagmethod(tag(_INPUT), 'gettable', read)
settagmethod(tag(_OUTPUT), 'settable', function(f, _, a) write(f,a) end)
x = writeto(file);
y = writeto(otherfile);
x.n, y.n = "abcdef", "012345";
_OUTPUT = x
writeto()
_OUTPUT = y
writeto()

f1 = readfrom(file)
f2 = readfrom(otherfile)
assert(f1 and f2)
assert(f1['.'] == 'a' and f2['.'] == '0')
assert(f1['..'] == 'bc' and f2['..'] == '12')
assert(f1['*a'] == 'def' and f2['.*'] == '345')
_INPUT = f1; readfrom()
_INPUT = f2; readfrom()


meses = { 'janeiro', 'fevereiro', 'março', 'abril',
'maio', 'junho', 'julho', 'agosto',
'setembro', 'outubro', 'novembro', 'dezembro' }

dias = {'domingo', 'segunda', 'terça', 'quarta', 'quinta', 'sexta', 'sábado'}
assert(writeto())
d = date('%d')
m = tonumber(date('%m'))
a = date('%Y')
ds = date('%w') + 1
h = date('%H')
min = date('%M')
s = date('%S')
write(format('%s\n', date()))
write(format('teste feito no dia %2.2d de %s de %4d (%s)',
          d, meses[m], a, dias[ds]))
write(format(', as %2.2dh%2.2dm%2.2ds\n', h, min, s))
write(format('%s\n', _VERSION))
