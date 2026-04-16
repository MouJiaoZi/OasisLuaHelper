---@meta

---@class FAirdropConfigDelegate : ULuaMulticastDelegate
FAirdropConfigDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Order: FAirDropOrder) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAirdropConfigDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Order FAirDropOrder
function FAirdropConfigDelegate:Broadcast(Order) end


---@class UAirdropFactory: UObject
---@field Order FAirDropOrder
---@field AirdropConfigComplete FAirdropConfigDelegate
local UAirdropFactory = {}

---@return boolean
function UAirdropFactory:Spawn() end
