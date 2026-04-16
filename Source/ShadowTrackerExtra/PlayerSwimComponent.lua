---@meta

---@class FPlayerEnterWater : ULuaSingleDelegate
FPlayerEnterWater = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerEnterWater:Bind(Callback, Obj) end

---执行委托
function FPlayerEnterWater:Execute() end


---@class FPlayerLeaveWater : ULuaSingleDelegate
FPlayerLeaveWater = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerLeaveWater:Bind(Callback, Obj) end

---执行委托
function FPlayerLeaveWater:Execute() end


---@class FOnPlayerTouchWater : ULuaMulticastDelegate
FOnPlayerTouchWater = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsEnter: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerTouchWater:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsEnter boolean
function FOnPlayerTouchWater:Broadcast(IsEnter) end


---@class UPlayerSwimComponent: UActorComponent
---@field OnPlayerTouchWater FOnPlayerTouchWater
---@field SwimWaterSufaceOffset number
---@field OnVehicleWaterSufaceOffset number
---@field DistoVolume number
---@field UpdateMeshZOffsetWithTheWaves number
---@field MaxBreathAmount number
---@field DrowningHurtHight number
---@field BreathVauleChangeoffset number
---@field OpBreathVauleChangeoffset number
---@field BreathConsumeScale number
---@field ExtraBreathConsume number
---@field ExtraBreathConsumeScale number
---@field BreathDeltaTime number
---@field MaxSpeedScaleHeightOffset number
---@field MinSpeedScale number
---@field MaxCrouchWaterHeight number
---@field MaxProneWaterHeight number
---@field DeadInWaterLocZOffset number
---@field RollMaxAngle number
---@field UpdateMeshZWithTheWavesInterpolationSpeed number
---@field UpdateMeshZWithTheWavesRatio number
---@field bIsUpdatingMeshZ boolean
---@field bEnableConsumeBreathAmount boolean
---@field FixPlayerSwimHigherThanSurfaceThreshold number
---@field bDiedInWaterSurface boolean
local UPlayerSwimComponent = {}

---@param WaterObject AWaterSwimActor
---@param bForce boolean
function UPlayerSwimComponent:EnterWater(WaterObject, bForce) end

---@param WaterObject AWaterSwimActor
function UPlayerSwimComponent:LeaveWater(WaterObject) end

---@param IgnoreKey string
function UPlayerSwimComponent:IgnoreBreathConsume(IgnoreKey) end

---@param IgnoreKey string
function UPlayerSwimComponent:RemoveIgnoreBreathConsume(IgnoreKey) end

---@param WaterObj AWaterSwimActor
---@param bInWater boolean
function UPlayerSwimComponent:ServerEnterWater(WaterObj, bInWater) end

---@param NewVolume APhysicsVolume
function UPlayerSwimComponent:PhysicsVolumeChange(NewVolume) end

function UPlayerSwimComponent:UpdateIgnoreBreathConsume() end

---@return boolean
function UPlayerSwimComponent:IsInNoWaterVolume() end

function UPlayerSwimComponent:EnterWater_BluePrint() end

function UPlayerSwimComponent:SetPawnStateToSwim() end

function UPlayerSwimComponent:UpdateSwimCollisionHeightCpp() end

---@return number
function UPlayerSwimComponent:CalcWaterToPlayerHeightOffset() end

---@return boolean
function UPlayerSwimComponent:IsUnderWater() end

---@return ESurviveWeaponPropSlot
function UPlayerSwimComponent:GetCachedWeaponSlot() end
