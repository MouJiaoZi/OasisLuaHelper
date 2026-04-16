---@meta

---@class FLaserAimingOffsetData
---@field ActorTemplate AActor
---@field ActorOffset FVector
FLaserAimingOffsetData = {}


---@class FLaserAimingActorInitData
---@field TargetOffset FVector
---@field SourceOffset FVector
---@field AttachTargetSocketName string
---@field AttachSocketName string
FLaserAimingActorInitData = {}


---@class ALaserAimingActor: AUAERegionActor
---@field ParticleParameterName string
---@field LaserLength number
---@field AimWithoutTarget boolean
---@field bUsePercentLength boolean
---@field ParticleColorParameterName string
---@field LaserColor FVector
---@field bDebugLines boolean
---@field bStaticTrace boolean
---@field MaxLaserTraceDistance number
---@field AimingOffsetData ULuaArrayHelper<FLaserAimingOffsetData>
---@field IgnoredObjects ULuaArrayHelper<UObject>
---@field rep_AimData FLaserAimingActorInitData
---@field bInit boolean
---@field aimData FLaserAimingActorInitData
---@field EndLocation FVector
---@field lookAtVector FRotator
local ALaserAimingActor = {}

---@param initData FLaserAimingActorInitData
function ALaserAimingActor:MulticastInitLaserActor(initData) end

function ALaserAimingActor:DestroyLaserActor() end

---@param initData FLaserAimingActorInitData
function ALaserAimingActor:InitLaserActor(initData) end

function ALaserAimingActor:OnRep_AimData() end
