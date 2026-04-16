---@meta

---@class FAINavStateData
---@field CurrentTargetWaypointIdx number
---@field TargetPosition FVector
---@field StartPosition FVector
FAINavStateData = {}


---@class FVehicleAINavStateChangedDelegate : ULuaMulticastDelegate
FVehicleAINavStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AutoNavStateChange: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAINavStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param AutoNavStateChange boolean
function FVehicleAINavStateChangedDelegate:Broadcast(AutoNavStateChange) end


---@class FVehicleAINavStateAllowableDistanceChangedDelegate : ULuaMulticastDelegate
FVehicleAINavStateAllowableDistanceChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AllowableDistance: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAINavStateAllowableDistanceChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param AllowableDistance number
function FVehicleAINavStateAllowableDistanceChangedDelegate:Broadcast(AllowableDistance) end


---@class UVehicleAIComponent: UVehicleComponent
---@field VehicleAINavStateChangedDelegate FVehicleAINavStateChangedDelegate
---@field VehicleAINavStateAllowableDistanceChangedDelegate FVehicleAINavStateAllowableDistanceChangedDelegate
---@field bEnableAutoDrive boolean
---@field AutoDriver_AINavStateData FAINavStateData
---@field AutoDriver_EnableNoDriver boolean
---@field AutoDriver_MaxAllowableDistanceSquared number
---@field CheckAllowableDistanceInter number
---@field AutoDrive_RouteList ULuaArrayHelper<FVector>
---@field AutoDrive_BestWaypoint ULuaArrayHelper<number>
local UVehicleAIComponent = {}

function UVehicleAIComponent:OnRep_AutoDriver_AINavStateData() end

---@param TargetPosition FVector
function UVehicleAIComponent:ServerSetAutoDriverTarget(TargetPosition) end

---@return number
function UVehicleAIComponent:GetCurrentTargetWaypointIdx() end

---@return FVector
function UVehicleAIComponent:GetAutoDriveTarget() end

---@return boolean
function UVehicleAIComponent:IsAutoDriving() end

---@return boolean
function UVehicleAIComponent:HasAutoDriveTarget() end

---@return boolean
function UVehicleAIComponent:CanAutoDriving() end

---@return boolean
function UVehicleAIComponent:AllowableDistanceAutoDriving() end

---@return boolean
function UVehicleAIComponent:CanAutoDrivingNoDriver() end

function UVehicleAIComponent:StopAutoDriving() end

---@return boolean
function UVehicleAIComponent:StartAutoDriving() end

function UVehicleAIComponent:EndAutoDriving() end
