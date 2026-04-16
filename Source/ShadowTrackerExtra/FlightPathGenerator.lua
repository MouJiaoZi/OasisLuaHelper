---@meta

---@class FAirpathGenerateCompleteDelegate : ULuaMulticastDelegate
FAirpathGenerateCompleteDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, order: FAirDropOrder) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAirpathGenerateCompleteDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param order FAirDropOrder
function FAirpathGenerateCompleteDelegate:Broadcast(order) end


---@class UFlightPathGenerator: UObject
---@field Departure FVector
---@field Destination FVector
---@field DropLoc FVector
---@field PreDropLength number
---@field FlyingHeight number
---@field FlyingSpeed number
---@field AirDropOrder FAirDropOrder
---@field AirpathGenerateComplete FAirpathGenerateCompleteDelegate
local UFlightPathGenerator = {}

---@return EExecuteAirDropOrderResult
function UFlightPathGenerator:MakeFlightPath() end
