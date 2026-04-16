---@meta

---Lua代理
--- - 使用 Add(callable, obj) 绑定可调用对象
--- - 使用 Remove(callable, obj) 解绑可调用对象
--- - 使用 Broadcast(...) 触发委托
---@class Delegate
local Delegate = {}

---绑定可调用对象
---第一个参数为可调用对象（函数），第二个参数为定义了对应函数的表实例
---例：Delegate:Add(self.foo, self)
---生效范围：服务器&客户端
function Delegate:Add(...) end

---移除可调用对象
---第一个参数为可调用对象（函数），第二个参数为定义了对应函数的表实例
---例：Delegate:Remove(self.foo, self)
---生效范围：服务器&客户端
---@return nil
function Delegate:Remove(...) end

---移除可调用对象（函数）上绑定的所有监听函数
---例：Delegate:RemoveAll()
---生效范围：服务器&客户端
---@param Callable function @【可选】可调用对象（函数）
function Delegate:RemoveAll(Callable) end

---广播调用监听此委托的所有函数
---例：Delegate:Broadcast(param1, param2 ...)
---生效范围：服务器&客户端
function Delegate:Broadcast(...) end