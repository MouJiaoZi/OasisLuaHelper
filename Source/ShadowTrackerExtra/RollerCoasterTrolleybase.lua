---@meta

---@class FOnDeparture : ULuaMulticastDelegate
FOnDeparture = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Coaster: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeparture:Add(Callback, Obj) end

---触发 Lua 广播
---@param Coaster AActor
function FOnDeparture:Broadcast(Coaster) end


---@class FOnExitEnd : ULuaSingleDelegate
FOnExitEnd = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnExitEnd:Bind(Callback, Obj) end

---执行委托
function FOnExitEnd:Execute() end


---@class ARollerCoasterTrolleybase: AActivityBaseActor
---@field CacheCharacters ULuaArrayHelper<AActor>
---@field bTickRTPCVelocity boolean
---@field VelocityMinMap number
---@field VelocityMaxMap number
---@field TrolleyMaxSpeed number
---@field CheckRTPCTime number
---@field RTPCVelocityName string
---@field bEnableCheckCollide boolean
---@field bCheckCollide boolean
---@field CheckTime number
---@field OnExitEndEvent FOnExitEnd
---@field OnDepartureEvent FOnDeparture
local ARollerCoasterTrolleybase = {}

function ARollerCoasterTrolleybase:TestDeparture() end

function ARollerCoasterTrolleybase:CheckCollide() end
