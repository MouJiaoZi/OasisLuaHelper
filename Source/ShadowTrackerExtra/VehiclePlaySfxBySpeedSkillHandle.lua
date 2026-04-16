---@meta

---@class FSpeedToSfx
---@field SpeedThreshold number
FSpeedToSfx = {}


---@class FVehiclePlaySfxBySpeedSkillPostEvent : ULuaMulticastDelegate
FVehiclePlaySfxBySpeedSkillPostEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehiclePlaySfxBySpeedSkillPostEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param ID number
function FVehiclePlaySfxBySpeedSkillPostEvent:Broadcast(ID) end


---@class UVehiclePlaySfxBySpeedSkillHandle: UVehicleSkillBaseHandle
---@field SfxConfigList ULuaArrayHelper<FSpeedToSfx>
---@field PlaySfxCD number
---@field StopTickWhenEngineStop boolean
---@field CheckInterval number
---@field CheckTimer number
---@field ClientCDTimer number
---@field CurSfxIndex number
---@field VehiclePlaySfxBySpeedSkillPostEvent FVehiclePlaySfxBySpeedSkillPostEvent
local UVehiclePlaySfxBySpeedSkillHandle = {}

---@return number
function UVehiclePlaySfxBySpeedSkillHandle:CheckShouldPlaySfx() end

---@param NewSfxIndex number
function UVehiclePlaySfxBySpeedSkillHandle:HandleNewSfxIndex(NewSfxIndex) end
