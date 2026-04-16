---@meta

---@class AVNTargetedProjectileActor: AActor, IPhaseActorInterface
---@field TargetActorOffset FVector
---@field ProjectileLineOffset FVector
---@field bManualTerminated boolean
---@field Speed number
---@field bShouldRotateAlongWithSpline boolean
---@field bShouldAutoTraceToGround boolean
---@field TraceGroundDepth number
---@field bReadyForLaunch boolean
---@field bDrawDebugDots boolean
---@field DebugLineSegments number
local AVNTargetedProjectileActor = {}

---@param _TargetActor AActor
---@param _OwnwePawn AActor
---@param InitLocation FVector
function AVNTargetedProjectileActor:InitActor(_TargetActor, _OwnwePawn, InitLocation) end

function AVNTargetedProjectileActor:TerminateManually() end

---@return FVector
function AVNTargetedProjectileActor:CalcSplineVelocity() end
