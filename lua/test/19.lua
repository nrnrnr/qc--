print('testando strings e strlib')

assert('alo' < 'alo1')
assert('' < 'a')
assert('alo\0alo' < 'alo\0b')
assert('alo\0alo\0\0' > 'alo\0alo\0')
assert('alo' < 'alo\0')
assert('\0' < '\1')
assert('\0\0' < '\0\1')
print('+')

assert(strsub("123456789",2,4) == "234")
assert(strsub("123456789",7) == "789")
assert(strsub("123456789",7,6) == "")
assert(strsub("123456789",7,7) == "7")
assert(strsub("123456789",0,0) == "")
assert(strsub("123456789",-10,10) == "123456789")
assert(strsub("123456789",1,9) == "123456789")
assert(strsub("123456789",-10,-20) == "")
assert(strsub("123456789",-1) == "9")
assert(strsub("123456789",-4) == "6789")
assert(strsub("123456789",-6, -4) == "456")
assert(strsub("\000123456789",3,5) == "234")
assert(strsub("\000123456789",8) == "789")
print('+')

assert(strfind("123456789", "345") == 3)
a,b = strfind("123456789", "345")
assert(strsub("123456789", a, b) == "345")
assert(strfind("1234567890123456789", "345", 3) == 3)
assert(strfind("1234567890123456789", "345", 4) == 13)
assert(strfind("1234567890123456789", "346", 4) == nil)
assert(strfind("1234567890123456789", ".45", -9) == 13)
assert(strfind("", "") == 1)
assert(strfind('', 'aaa', 1) == nil)
assert(strfind('alo(.)alo', '(.)', 1, 1) == 4)
print('+')

assert(strlen("") == 0)
assert(strlen("\0\0\0") == 3)
assert(strlen("1234567890") == 10)

assert(strbyte("a") == 97)
assert(strbyte("á") > 127)
assert(strbyte("\0") == 0)
assert(strbyte("\0\0alo\0x", -1) == strbyte('x'))
assert(strbyte("ba", 2) == 97)
assert(strbyte("\n\n", 2) == 10)
assert(strchar() == "")
assert(strchar(0, 255, 0) == "\0\255\0")
assert(strchar(0, strbyte("á"), 0) == "\0á\0")
print('+')

assert(strupper("ab\0c") == "AB\0C")
assert(strlower("\0ABCc%$") == "\0abcc%$")
assert(strrep('teste', 0) == '')
assert(strrep('tés\00tê', 2) == 'tés\0têtés\000tê')
assert(strrep('', 10) == '')
assert(strlen(strrep('a', 2000)) == 2000)

assert(type(tostring(nil)) == 'string')
assert(type(tostring(12)) == 'string')
assert(strfind(tostring{}, 'table'))
assert(strfind(tostring(print), 'function'))
assert(tostring(1234567890123) == '1234567890123')
assert(strlen(tostring('\0')) == 1)
print('+')

x = '"ílo"\n\\'
assert(format('%q%s', x, x) == '"\\"ílo\\"\\\n\\\\""ílo"\n\\')
assert(format("%c%c%x", strbyte("á"), strbyte("b"), 140) == "áb8c")
assert(format('') == "")
assert(format("%c",34)..format("%c",48)..format("%c",90)..format("%c",100) ==
       format("%c%c%c%c", 34, 48, 90, 100))
assert(format("%s is not %s", 'not be', 'be') == 'not be is not be')
assert(format("%%%d %010d", 10, 23) == "%10 0000000023")
assert(tonumber(format("%f", 10.3)) == 10.3)
x = format('"%-50s"', 'a')
assert(strlen(x) == 52)
assert(strsub(x, 1, 4) == '"a  ')

assert(format("-%.20s.20s", strrep("%", 2000)) == "-"..strrep("%", 20)..".20s")
assert(format('"-%20s.20s"', strrep("%", 2000)) ==
       format("%q", "-"..strrep("%", 2000)..".20s"))

assert(format("-%2$s-%1$2d-", 2, "alo") == "-alo- 2-")
assert(format("-%1$s-%1$2d-", 2, "alo") == "-2- 2-")

assert(dostring("a = 1\n--comentário sem EOL no final"))


--locale 'ptb':         for MS-Windows
--locale 'ISO-8859-1':  for Linux

if not setlocale('ptb', "collate") 
   and not setlocale('ISO-8859-1', "collate") then
  print("locale not supported")
else
  assert("alo" < "álo" and "álo" < "amo")
end

if not setlocale('ptb', "ctype") 
   and not setlocale('ISO-8859-1', "ctype") then
  print("locale not supported")
else
  assert(gsub("áéíóú", "%a", "x") == "xxxxx")
  assert(gsub("áÁéÉ", "%l", "x") == "xÁxÉ")
  assert(gsub("áÁéÉ", "%u", "x") == "áxéx")
  assert(strupper"áÁé{xuxu}ção" == "ÁÁÉ{XUXU}ÇÃO")
end

print('OK')


