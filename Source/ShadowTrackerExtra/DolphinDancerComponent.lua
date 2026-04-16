---@meta

---@class FStateChange : ULuaMulticastDelegate
FStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: EDolphinDancerState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param State EDolphinDancerState
function FStateChange:Broadcast(State) end


---@class UDolphinDancerComponent: UActorComponent
---@field State_C EDolphinDancerState
---@field PoseState_C EDolphinDancerPoseState
---@field MaxVelocity_C FVector
---@field TransformedVelocity_C FVector
---@field LastFrameTransformedVelocity_C FVector
---@field LastFrameTransformedVelocityNormal_C FVector
---@field TransformedVelocityLength_C number
---@field SprintSpeedThreshold_C number
---@field bIsBrake_C boolean
---@field BrakeSpeed_C number
---@field FOVCastTime_C number
---@field LerpAlpha_C number
---@field CurBlendWeight number
---@field CurFov_C FFOVStruct
---@field SprintFov_C FFOVStruct
---@field BoostFov_C FFOVStruct
---@field CameraData FCameraOffsetData
---@field Empty FFOVStruct
---@field bIsSlideWater_C boolean
---@field bEffectHide_C boolean
---@field bLastFrameEffectHide_C boolean
---@field EffectCacheList_C ULuaArrayHelper<UParticleSystemComponent>
---@field WaterTags ULuaArrayHelper<string>
---@field EffectSpeedInRange FVector2D
---@field EffectSpeedScaleOutRange FVector2D
---@field EffectSpeedSpawnOutRange FVector2D
---@field RTPCName string
---@field RTPCInRange FVector2D
---@field RTPCOutRange FVector2D
---@field RTPCInterpolationTimeMs number
---@field BrakeTimestemp_C number
---@field Now_C number
---@field IdleTimestemp_C number
---@field IdleInterval_C number
---@field NextIdleInterval_C number
---@field DelayReinitSubAnim_C boolean
---@field StateChange_C FStateChange
---@field SurfSkillClass AUTSkill
---@field KeepSurfSkillClasses ULuaArrayHelper<AUTSkill>
---@field bEnableSurfEnergy boolean
---@field MaxSurfEnergy number
---@field SurfEnergyTimeCost number
---@field SurfEnergyMoveCost number
---@field SurfEnergyJumpCost number
---@field SurfEnergyThreshold number
---@field SurfEnergy number
---@field DeltaEnergyThreshold number
---@field TickDeltaEnergy number
---@field bInSurfState boolean
---@field LastLocation FVector
---@field LastEnergy number
local UDolphinDancerComponent = {}

function UDolphinDancerComponent:InitOwner() end

---@param DeltaTime number
---@return boolean
function UDolphinDancerComponent:LogicTick(DeltaTime) end

function UDolphinDancerComponent:InitAKCom() end

function UDolphinDancerComponent:InitVelocity() end

function UDolphinDancerComponent:CheckJump() end

function UDolphinDancerComponent:PostJumpSoundAndEffect() end

function UDolphinDancerComponent:CheckBrake() end

function UDolphinDancerComponent:CheckFOV() end

function UDolphinDancerComponent:CheckWaterEffect() end

---@param DeltaTime number
function UDolphinDancerComponent:UpdateFOV(DeltaTime) end

---@param BlendWeight number
function UDolphinDancerComponent:UpdateFOVModify(BlendWeight) end

function UDolphinDancerComponent:EffectSpeed() end

function UDolphinDancerComponent:EndSurf() end

---@return boolean
function UDolphinDancerComponent:LerpToNormal() end

---@return number
function UDolphinDancerComponent:GetCurFov() end

function UDolphinDancerComponent:ReinitCameraManager() end

function UDolphinDancerComponent:ReInit_SubAnim() end

---@param State EDolphinDancerState
function UDolphinDancerComponent:SetState(State) end

---@param State EDolphinDancerState
function UDolphinDancerComponent:OnStateChange_C(State) end

function UDolphinDancerComponent:OnRep_StateNotify() end

function UDolphinDancerComponent:CalcBrake() end

function UDolphinDancerComponent:CalcIdle() end

---@param InCostValue number
---@param bReplicateImmediately boolean
function UDolphinDancerComponent:CostSurfEnergy(InCostValue, bReplicateImmediately) end

---@return number
function UDolphinDancerComponent:GetSurfEnergyPercent() end

---@return number
function UDolphinDancerComponent:GetSurfEnergyJumpCost() end

function UDolphinDancerComponent:StopSurfSkill() end

function UDolphinDancerComponent:InitEnergy() end

function UDolphinDancerComponent:EnterSurfState() end

function UDolphinDancerComponent:LeaveSurfState() end

function UDolphinDancerComponent:OnRep_SurfEnergy() end

---@return boolean
function UDolphinDancerComponent:ShouldDistanceCostEnergy() end

---@return boolean
function UDolphinDancerComponent:ShouldTimeCostEnergy() end

function UDolphinDancerComponent:OnSurfEnergyChange() end

function UDolphinDancerComponent:BP_OnSurfEnergyChange() end

---@param DeltaTime number
function UDolphinDancerComponent:TickSurfEnergy(DeltaTime) end
