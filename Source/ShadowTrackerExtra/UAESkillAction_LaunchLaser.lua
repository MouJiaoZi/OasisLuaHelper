---@meta

---@class FSALaserLaunchInstanceStruct
---@field LaserParticle UParticleSystemComponent
---@field LaserShootMuzzleParticle UParticleSystemComponent
---@field TickDurationTimeInvokedArray ULuaArrayHelper<number>
---@field SceneComponentToAttach USceneComponent
---@field PickedResultTargets ULuaArrayHelper<FUTSkillPickedTarget>
FSALaserLaunchInstanceStruct = {}


---@class UUAESkillAction_LaunchLaser: UUAESkillActionBP
---@field HitPointInfoKey FUAEBlackboardKeySelector
---@field LaserStartPointInfoKey FUAEBlackboardKeySelector
---@field HitActorInfoKey FUAEBlackboardKeySelector
---@field HitBodyPart FUAEBlackboardKeySelector
---@field HitActionFunctionName string
---@field DamageUpdateTickDelta number
---@field ClientUploadHitInfoDelta number
---@field AttachSocketName string
---@field ParticleAttachSocketName string
---@field SourceOffset FVector
---@field TickDurationTimeArray ULuaArrayHelper<number>
local UUAESkillAction_LaunchLaser = {}

---@param InUTSkillManagerComponent UUTSkillManagerComponent
---@return number
function UUAESkillAction_LaunchLaser:GetCurrentDamageIndex(InUTSkillManagerComponent) end

---@param LaserLineParticle UParticleSystemComponent
---@param CurrentDamageIndex number
function UUAESkillAction_LaunchLaser:ChangeLaserParticleStateByTime(LaserLineParticle, CurrentDamageIndex) end
