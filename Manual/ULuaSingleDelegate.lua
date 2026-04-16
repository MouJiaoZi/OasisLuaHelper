---@meta

---@class ULuaSingleDelegate @UE 单播委托基类，用于绑定单个回调函数，后绑定会覆盖先绑定
local ULuaSingleDelegate = {}

---绑定回调函数
---@param Callback function @回调函数，如果绑定了 Obj，则 Obj 作为回调第一个参数传入
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function ULuaSingleDelegate:Bind(Callback, Obj)
end

---解绑回调函数
function ULuaSingleDelegate:UnBind()
end

---执行委托，触发已绑定的回调
---@param ... any @委托参数
function ULuaSingleDelegate:Execute(...)
end
