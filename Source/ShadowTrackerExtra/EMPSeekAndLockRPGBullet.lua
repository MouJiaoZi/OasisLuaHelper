---@meta

---EMP.Spawn后，服务端调用Launch
---@class AEMPSeekAndLockRPGBullet: ASeekAndLockRPGBullet
---@field InitSpeed number
---@field ShootDirectFlyTime number
---@field TurnDirectionRadSpeed number
---@field ExistDuartion number
---@field SearchPeriod number
---@field PickTargetBoxSphereBounds FBoxSphereBounds
---@field bPickTargetUseBoxOrSphere boolean
---@field BuffAffectRadius number
---@field EMPEffectBuffsToCharacter ULuaArrayHelper<string>
---@field EMPEffectBuffsToVehicle ULuaArrayHelper<string>
---@field ScreenIndicatorUIConfig FScreenIndicatorUIConfig
---@field bShowDebugInfo boolean
---@field CandidateVehicles ULuaArrayHelper<AActor>
local AEMPSeekAndLockRPGBullet = {}

---@param InInstigator AActor
---@param Transform FTransform
---@param LockTarget AActor
function AEMPSeekAndLockRPGBullet:SeverLaunch(InInstigator, Transform, LockTarget) end

---@param EffectedActor AActor
---@param InstigatorController AController
function AEMPSeekAndLockRPGBullet:OnEMPEffectActor(EffectedActor, InstigatorController) end

---@param _FinalImpactResult FHitResult
function AEMPSeekAndLockRPGBullet:OnImpact(_FinalImpactResult) end

function AEMPSeekAndLockRPGBullet:OnRep_EMPLockTarget() end

---@param Target AActor
function AEMPSeekAndLockRPGBullet:AddTarget(Target) end

---@param Target AActor
function AEMPSeekAndLockRPGBullet:RemoveTarget(Target) end

---@param OldParam FSeekAndLockRPGBulletLaunchParams
function AEMPSeekAndLockRPGBullet:OnRep_ServerSeekAndLockLaunchParams(OldParam) end

---@param _ImpactResult FHitResult
function AEMPSeekAndLockRPGBullet:RPC_Multicast_EMPOnImpact(_ImpactResult) end
