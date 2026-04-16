---@meta

---@class FVehicleAirStateChangeFly : ULuaMulticastDelegate
FVehicleAirStateChangeFly = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, VehicleStat: UVehicleStatComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAirStateChangeFly:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param VehicleStat UVehicleStatComponent
function FVehicleAirStateChangeFly:Broadcast(PlayerKey, VehicleStat) end


---@class FVehicleAirStateChangeLand : ULuaMulticastDelegate
FVehicleAirStateChangeLand = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, VehicleStat: UVehicleStatComponent, IsInterp: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAirStateChangeLand:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param VehicleStat UVehicleStatComponent
---@param IsInterp boolean
function FVehicleAirStateChangeLand:Broadcast(PlayerKey, VehicleStat, IsInterp) end


---@class UVehicleStatComponent: UVehicleComponent
---@field RollCount number @旋转圈数
---@field RollDegrees number @旋转的角度
---@field InAirTime number @滞空时间
---@field AirControlFTime number @抬头按下时间
---@field AirControlBTime number @压头按下时间
---@field bIsRecording boolean @是否正在进行信息统计
---@field ReachGroundTime number @落地时间
local UVehicleStatComponent = {}

---清理统计信息
function UVehicleStatComponent:ClearStats() end

---开始进行信息统计
function UVehicleStatComponent:BeginRecord() end

---结束信息统计
function UVehicleStatComponent:StopRecord() end
