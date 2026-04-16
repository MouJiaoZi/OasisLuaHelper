---@meta

---@class FSMCSyncStartMoveData
---@field OpIdex number
---@field bIsMoving boolean
---@field ServerMoveDis number
FSMCSyncStartMoveData = {}


---@class FSplineMovementStateDelegate : ULuaMulticastDelegate
FSplineMovementStateDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsMove: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSplineMovementStateDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsMove boolean
function FSplineMovementStateDelegate:Broadcast(bIsMove) end


---@class USplineMovementComponent: UActorComponent
---@field bLoop boolean
---@field bEnableReplicatedMovement boolean
---@field bUseNearestSplineTarget boolean
---@field RouteSplineActorTag string
---@field bResetLocationWhenStop boolean
---@field CurMoveDistance number
---@field bIsMoving boolean
---@field bUpdateLocOnRep boolean
---@field DistanceBase number
---@field DistanceThreshold number
---@field SmoothSpeedRate number
---@field bSmooth boolean
---@field bNormal boolean
---@field bKeepRotationYaw boolean
---@field bKeepRotationRoll boolean
---@field bKeepRotationPitch boolean
---@field SyncStartMoveData FSMCSyncStartMoveData
---@field ServerOriginLoc FVector
---@field SplineMovementState FSplineMovementStateDelegate
local USplineMovementComponent = {}

---@param DeltaTime number
function USplineMovementComponent:UpdateMove(DeltaTime) end

---@param OldData FSMCSyncStartMoveData
function USplineMovementComponent:OnRep_SyncStartMoveData(OldData) end

---@param OldLoc FVector
function USplineMovementComponent:OnRep_ServerOriginLoc(OldLoc) end

function USplineMovementComponent:TryFindNearestSplineTarget() end

---@param Target AActor
function USplineMovementComponent:SetRouteSplineActor(Target) end

function USplineMovementComponent:StartMoveOnServer() end

function USplineMovementComponent:LocalStartMove() end

function USplineMovementComponent:LocalStopMove() end

---@param CurMoveDistanceDS number
---@param CurMoveDistanceClient number
function USplineMovementComponent:SetSmoothSpeedRate(CurMoveDistanceDS, CurMoveDistanceClient) end
