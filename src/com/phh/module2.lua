---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by gientech.
--- DateTime: 2023/3/8 17:30
---
---如果该模块自身有返回值，且模块加载成功，那么require 的返回值就是该模块的返回值
---如果模块没有返回值，如果require加载模块成功，就返回ture
---require 内部将返回值储存在：package.loaded表中。（即：package.loaded[xxx]中）
require("com.phh.module1")

print(testA)
print(a_local) --nil

require("com.phh.module1")

print(package.loaded["com.phh.module1"])        --module1
--卸载已经执行过的脚本
package.loaded["com.phh.module1"] = nil
print(package.loaded["com.phh.module1"])        --nil

--require 执行一个脚本时  可以在脚本最后返回一个外部希望获取的内容
local testLA = require("com.phh.module1")
print(testLA)