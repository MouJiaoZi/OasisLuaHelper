---@meta

---Lua 委托工具
--- - 使用 New() 创建委托
--- - 使用 Add(callable, obj) 绑定可调用对象
--- - 使用 Remove(callable, obj) 解绑可调用对象
--- - 使用 Broadcast(...) 触发委托
---@class UGCDelegateUtility
UGCDelegateUtility = {}

---创建 Lua 委托（纯 Lua 实现）
---@return UGCLuaDelegate @Lua 委托
function UGCDelegateUtility.CreateLuaDelegate() end

---复制 Lua 委托
---@param Delegate UGCLuaDelegate @被复制的 Lua 委托
---@return UGCLuaDelegate @复制出来的新 Lua 委托
function UGCDelegateUtility.CopyLuaDelegate(Delegate) end

---创建虚幻兼容单播委托
---@param Outer UObject @Outer 对象（GC 相关）
---@return ULuaSingleDelegate @虚幻兼容单播委托
function UGCDelegateUtility.CreateUEDelegate(Outer) end

---销毁虚幻兼容单播委托
---@param UEDelegate ULuaSingleDelegate @虚幻兼容单播委托
function UGCDelegateUtility.DestroyUEDelegate(UEDelegate) end