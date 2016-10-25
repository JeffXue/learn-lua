--> 一个代码模块就是一个程序库，可以通过require来加载，这个调用会返回一个由模块函数组成的table


local fp = require("my")
fp.greeting()

-- 对于需要导出给外部使用的公共模块，处于安全考虑，是要避免全局变量的出现

--> lua字符串内部用来标识各个组成字节的下标是从1开始的
-- string.sub(str, 3, 7)

print(string.byte("abc", 1, 3))
print(string.byte("abc", 3))
print(string.byte("abc"))
-- string.byte 只返回整数

print(string.char(96, 97, 98))
print(string.char())
print(string.char(65, 66))


print(string.upper("Hello Lua"))
print(string.lower("Hello Lua"))
print(string.upper("Hello Lua")) --> 使用此函数是不推荐的，应使用#运算符来获取lua字符串的长度

local find = string.find
print(find("abc cba", "ab"))
print(find("abc cba", "ab", 2)) -- 从索引为2的位置开始匹配字符串：ab
print(find("abc cba", "ba", -1)) -- 从索引为7的位置开始匹配字符串：ba
print(find("abc cba", "ba", -3)) -- 从索引为6的位置开始匹配字符串：ba
print(find("abc cba", "(%a+)", 1)) -- 从索引为1处匹配最长连续且只含字母的字符串
print(find("abc cba", "(%a+)", 1, true)) --从索引为1的位置开始匹配字符串：(%a+)

print(string.format("%.4f", 3.1415926)) -- 保留4位小数
print(string.format("%d %x %o", 31, 31, 31))-- 十进制数31转换成不同进制
d = 29; m = 7; y = 2015 -- 一行包含几个语句，用；分开
print(string.format("%s %02d/%02d/%d", "today is:", d, m, y))

print(string.match("hello lua", "lua"))
print(string.match("lua lua", "lua", 2)) --匹配后面那个lua
print(string.match("lua lua", "hello"))
print(string.match("today is 27/7/2015", "%d+/%d+/%d+"))

s = "hello world from Lua"
for w in string.gmatch(s, "%a+") do --匹配最长连续且只含字母的字符串
    print(w)
end

t = {}
s = "from=world, to=Lua"
for k, v in string.gmatch(s, "(%a+)=(%a+)") do --匹配两个最长连续a且只含字母的
    t[k] = v --字符串，它们之间用等号连接
end
for k, v in pairs(t) do
    print (k,v)
end

print(string.rep("abc", 3)) --拷贝3次"abc"

print(string.sub("Hello Lua", 4, 7))
print(string.sub("Hello Lua", 2))
print(string.sub("Hello Lua", 2, 1)) --看到返回什么了吗
print(string.sub("Hello Lua", -3, -1))

print(string.gsub("Lua Lua Lua", "Lua", "hello"))
print(string.gsub("Lua Lua Lua", "Lua", "hello", 2)) 

print(string.reverse("Hello Lua")) --> output: auL olleH


--> table库
