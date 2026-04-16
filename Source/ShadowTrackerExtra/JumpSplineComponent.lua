---@meta

---@class FSyncJumpSplineActorInfo
---@field token number
---@field SyncCurMoveDis number
FSyncJumpSplineActorInfo = {}


---@class FJumpSplineActorInfo
---@field JumpActor AActor
---@field UsedSpline USplineComponent
---@field CurMoveTime number
---@field CurMoveDis number
---@field SkillUID number
---@field TargetKey string
---@field bLaunched boolean
---@field TimeToLost number
---@field token number
FJumpSplineActorInfo = {}


---@class FClienJumpFailed : ULuaMulticastDelegate
FClienJumpFailed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, JumpActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClienJumpFailed:Add(Callback, Obj) end

---触发 Lua 广播
---@param JumpActor AActor
function FClienJumpFailed:Broadcast(JumpActor) end


---@class FClienTriggerJump : ULuaMulticastDelegate
FClienTriggerJump = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, JumpActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClienTriggerJump:Add(Callback, Obj) end

---触发 Lua 广播
---@param JumpActor AActor
function FClienTriggerJump:Broadcast(JumpActor) end


---@class UJumpSplineComponent: UActorComponent
---@field ClienJumpFailed FClienJumpFailed
---@field ClienTriggerJump FClienTriggerJump
---@field SyncLaunchActors ULuaArrayHelper<FSyncJumpSplineActorInfo>
---@field LastSyncLaunchActors ULuaArrayHelper<FSyncJumpSplineActorInfo>
---@field LostRPCActors ULuaArrayHelper<AActor>
---@field bEnable boolean
---@field bBeginPlay boolean
---@field MaxJumpToken number
---@field OwnerSplines ULuaArrayHelper<USplineComponent>
---@field JumpSplineActorInfos ULuaArrayHelper<FJumpSplineActorInfo>
---@field PendingRemoveActors ULuaArrayHelper<AActor>
---@field bUseAutoOverlap boolean
---@field bSuspendOverlap boolean
---@field CheckOverlapInterval number
---@field OverlapComponentName string
---@field SpeedCurveName string
---@field SpeedZCurveName string
---@field JumpTagetName string
---@field skillTemplate AUTSkill
---@field bAutoAdjustMovingTarget number
---@field AdjustMovingTargetThreshold number
---@field LostRPCTime number
---@field bCheckLostRPC boolean
local UJumpSplineComponent = {}

function UJumpSplineComponent:OnRep_SyncLaunchActors() end

function UJumpSplineComponent:OnRep_Enable() end

---@param bSetEnable boolean
function UJumpSplineComponent:SetEnabled(bSetEnable) end

---@param Actor AActor
---@return boolean
function UJumpSplineComponent:CanJumpActor(Actor) end

---@param Actor AActor
---@return boolean
function UJumpSplineComponent:CanJumpActor_BP(Actor) end

---@param NewJumpActorInfo FJumpSplineActorInfo
---@return boolean
function UJumpSplineComponent:AddJumpActor(NewJumpActorInfo) end

---@param Actor AActor
function UJumpSplineComponent:AddOverlapActor(Actor) end

---@param Actor AActor
function UJumpSplineComponent:AddOverlapActor_Internal(Actor) end

---@param NeedRemoveActor AActor
function UJumpSplineComponent:RemoveJumpActor(NeedRemoveActor) end

---@param NewJumpActorInfo FJumpSplineActorInfo
---@param DeltaTime number
function UJumpSplineComponent:UpdateJumpInfo(NewJumpActorInfo, DeltaTime) end

---@param DeltaTime number
function UJumpSplineComponent:ForceUpdateJumpInfo(DeltaTime) end

---@param NewJumpActorInfo FJumpSplineActorInfo
---@param UsedSpline USplineComponent
---@param DeltaTime number
---@return boolean
function UJumpSplineComponent:CalNewJumpTarget(NewJumpActorInfo, UsedSpline, DeltaTime) end

---@param NewJumpActorInfo FJumpSplineActorInfo
---@param functionName string
function UJumpSplineComponent:PrintJumpSplineActorInfo(NewJumpActorInfo, functionName) end

---@param JumpActor AActor
function UJumpSplineComponent:OnJumpFailed(JumpActor) end

---@param PendingActor AActor
function UJumpSplineComponent:AddPendingAndRemoveSyncActor(PendingActor) end

function UJumpSplineComponent:DispatchPendingActors() end

---@param Actor AActor
---@return boolean
function UJumpSplineComponent:PreLaunch(Actor) end
