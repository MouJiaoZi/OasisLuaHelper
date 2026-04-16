---@meta

---@class FAirplaneSpawnDelegate : ULuaMulticastDelegate
FAirplaneSpawnDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Airplane: AAirDropPlane) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAirplaneSpawnDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Airplane AAirDropPlane
function FAirplaneSpawnDelegate:Broadcast(Airplane) end


---@class UAirplaneFactory: UObject
---@field Order FAirDropOrder
---@field AirplaneBluePrint AAirDropPlane
---@field DropStrategy UDropStuffStrategy
---@field AirplaneSpawnComplete FAirplaneSpawnDelegate
local UAirplaneFactory = {}

function UAirplaneFactory:Spawn() end

function UAirplaneFactory:HandleLoadPlaneFinished() end
