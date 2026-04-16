---@meta

---@class ULuaMulticastDelegate @UE 多播委托基类，用于绑定多个回调函数
local ULuaMulticastDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback function @回调函数，如果绑定了 Obj，则 Obj 作为回调第一个参数传入
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function ULuaMulticastDelegate:Add(Callback, Obj)
end

---添加回调，Func && Obj 共同作为 Key 去重，同 Func 不同 Obj 会共存
---@param Callback function @回调函数，Obj 作为回调第一个参数传入
---@param Obj any @绑定对象，作为回调第一个参数传入
---@return number @回调引用
function ULuaMulticastDelegate:AddInstance(Callback, Obj)
end

---移除指定回调
---@param Callback function @要移除的回调函数
---@param Obj any @可选的绑定对象
function ULuaMulticastDelegate:Remove(Callback, Obj)
end

---移除所有 Lua 绑定
function ULuaMulticastDelegate:RemoveAll()
end

---移除所有绑定（C++/BP/Lua）
---@param bDonotKeepThis boolean @是否不保留当前对象的回调
function ULuaMulticastDelegate:Clear(bDonotKeepThis)
end

---触发 Lua 广播
---@param ... any @委托参数
function ULuaMulticastDelegate:Broadcast(...)
end

---触发所有广播（C++/BP/Lua）
---@param ... any @委托参数
function ULuaMulticastDelegate:BroadcastAll(...)
end
