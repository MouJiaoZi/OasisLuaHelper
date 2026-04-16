---@meta

---@class AClientLaserAimingActor: AActor
---@field ParticleParameterName string
---@field LaserLength number
---@field bDebugLines boolean
---@field MaxLaserTraceDistance number
---@field IgnoredObjects ULuaArrayHelper<UObject>
---@field aimData FLaserAimingActorInitData
---@field StartLocation FVector
---@field EndLocation FVector
---@field LookAtVector FRotator
local AClientLaserAimingActor = {}

function AClientLaserAimingActor:DestroyLaserActor() end

---@param initData FLaserAimingActorInitData
function AClientLaserAimingActor:InitLaserActor(initData) end

function AClientLaserAimingActor:OnRep_AimData() end
