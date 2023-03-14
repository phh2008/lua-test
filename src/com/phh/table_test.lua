---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by gientech.
--- DateTime: 2023/3/8 17:06
---

print("**********talbe************")
a = { 1, 2, nil, 3, "1231", true, nil }
--lua中 索引从1开始
print(a[1])            --1
print(a[5])            --1231
print(a[6])            --true
print(a[7])            --nil
--#是通用的获取长度的关键字
--计算长度时，末尾的nil会被忽略
print(#a)            --6
print("**********表的一些操作************")
--可以自定义索引
a = { ["name"] = "Canon", ["age"] = 18, ["1"] = 5 }
--访问某个变量 用中括号[]加键 来访问
print(a["name"])
print(a["age"])
print(a["1"])
--还可以类似 .成员变量的形式得到值
print(a.name)
print(a.age)
--虽然可以通过.成员变量的形式得到值 但是数字只能通过[]
print(a["1"])
--修改
a["name"] = "Jason";
print(a["name"])
print(a.name)
--新增
a["sex"] = false
print(a["sex"])
print(a.sex)

print("**********table提供的一些公共方法************")
t1 = { { age = 1, name = "123" }, { age = 2, name = "345" } }
t2 = { name = "Canon", sex = true }

print("**********插入************")
--插入insert
print(#t1)                        --2
table.insert(t1, t2);
print(#t1)                        --3
print(t1[3].name)                --Canon
print("**********移除************")
--删除指定元素
--remove方法 传表进去 会移除最后一个索引的内容
table.remove(t1)                --2
print(t1[1].name)                --123
print(t1[2].name)                --345
print(t1[3])                    --nil

--remove方法 传两个参数 第一个参数 是要移除内容的表
--第二个参数 是要移除内容的索引
table.remove(t1, 1)
print(t1[1].name)                --345
print(#t1)                        --1
print("**********排序************")
t2 = { 5, 2, 7, 9, 5 }
--传入要排序的表 默认 升序排列
table.sort(t2)
for _, v in pairs(t2) do
    print(v)
end                        -- 2 5 5 7 9
print("**********自定义排序************")
--传入两个参数 第一个是用于排序的表
--第二个是 排序规则函数
table.sort(t2, function(a, b)
    return a > b
end)
for _, v in pairs(t2) do
    print(v)
end                        -- 9 7 5 5 2

print("**********拼接************")
tb = { "123", "456", "789", "10101" }
--连接函数 用于拼接表中元素 返回值 是一个字符串
str = table.concat(tb, ",")
print(str)

print("**********迭代器遍历************")
--迭代器遍历 主要是用来遍历表的
--#得到长度 其实并不准确 一般不要用#来遍历表

a = { [0] = 1, 2, [-1] = 3, 4, 5, [5] = 6 }
print("**********ipairs迭代器遍历************")
--ipairs
--ipairs遍历 从索引1开始往后遍历 索引小于等于0的值得不到
--只能找到连续索引的 键 如果中间断序了 它也无法遍历出后面的内容
for k, v in ipairs(a) do
    print("ipairs遍历键值" .. k .. "_" .. v)
end
print("**********ipairs迭代器遍历键************")
for k in ipairs(a) do
    print("ipairs遍历键" .. k)
end

print("**********pairs迭代器遍历************")
--它能够把所有的键都找到 通过键可以得到值
for k, v in pairs(a) do
    print("pairs遍历键值" .. k .. "_" .. v)
end

print("**********pairs迭代器遍历键************")
for k in pairs(a) do
    print("pairs遍历键" .. k)
end
print("**********不能单独遍历值************")
-- 这种写法其实和遍历键值对一样，_是个变量
for _, v in pairs(a) do
    print(_, v)
end

