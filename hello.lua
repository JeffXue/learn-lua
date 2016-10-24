print ("hello world")
print(type("hello world"))
print(type(print))
print(type(true))
print(type(360.0))
print(type(nil))

local number
print(num) --> 输出: nil, 表示无效值


--> nil和false为假, 其他值均为真 包括0和空字符串


local str1 = 'hello world'
local str2 = "hello lua"
local str3 = [["add\name", 'hello']]
local str4 = [=[string hava a [[]].]=]
print(str1)
print(str2)
print(str3)
print(str4)

--> 三种方式表示字符串:
-- 单引号
-- 双引号
-- 长括号[[]]

--> 字符串特性
-- 字符串是不可改变的值
-- 创建相同的lua字符串并不会引入新的动态内存分配
-- 内容相同的lua字符串不会占用多份存储空间
-- 已经创建好的lua字符串之间的相等性比较时时O(1)时间度的开销



local corp = {
    web = "www.google.com",
    telephone = "12345678",
    staff = {"jack", "scott", "gary"},
    100876,
    100191,
    [10] = 360,
    ["city"] = "beijing"
}

print(corp.web)
print(corp["telephone"])
print(corp[2])
print(corp["city"])
print(corp.staff[1])
print(corp[10])
--> table类型是实现了一种抽象的关联数组
-- table通常实现为一个哈希表，一个数组，或者两者的混合


local function foo()
    print("in the function")
    -- dosomething()
    local x = 10
    local y = 20
    return x + y
end

local a = foo

print(a())
--> 函数也是一种数据类型


print(1 + 2)
print(5 / 10)
print(5.0 / 10)
print(2 ^ 10)
print(1357 %  2)
--> 算术运算符

--> 不等于运算符写法为: ~=

--> 逻辑运算符： and  or  not

print("hello" .. "world")
--> 连接两个字符串，使用操作符“..”(两个点)
-- 字符串连接运算符几乎总会创建一个新的字符串，很多这样的连接操作会导致性能损耗，推荐使用table和table.concat()来进行很多字符串的拼接

x = 10
if x > 0 then
    print("x is a positive number")
elseif x < -10 then
    print("x is less then -10")
else
    print("x is a non-positive number")
end
--> if 结构


x = 1
sum = 0
while x <= 5 do
    sum = sum + x
    x = x + 1
end
print(sum)
--> while循环
-- 没有类似continue这样的控制语句
-- 提供break 跳出当前循环


x = 10
repeat 
    print(x)
    x = x - 1
until x < 0
--> repeat控制语句 类似do-while


for i = 1, 5 do
    print(i)
end

for i = 1, 10, 2 do
    print(i)
end
--> for循环

local a = {"a", "b", "c", "d"}
for i, v in ipairs(a) do
    print("index:", i, " value: ", v)
end

for k in pairs(a) do
    print(k)
end
--> 泛型for

-- return 主要用于从函数中返回结果, 只能写在语句的块的最后

