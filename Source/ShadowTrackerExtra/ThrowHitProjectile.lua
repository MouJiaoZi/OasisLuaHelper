---@meta

---@class FThrowHitProjectileRepMovement
---@field LinearVelocity FVector
---@field Location FVector
---@field Rotation FRotator
---@field LocationQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated location vector. You should only need to change this from the default if you see visual artifacts.
---@field VelocityQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated velocity vectors. You should only need to change this from the default if you see visual artifacts.
---@field RotationQuantizationLevel ERotatorQuantization @Allows tuning the compression level for replicated rotation. You should only need to change this from the default if you see visual artifacts.
FThrowHitProjectileRepMovement = {}


---@class AThrowHitProjectile: AActor, IUAESkillInterface
---@field bAimVelocity boolean
---@field PawnMotionContributionMultiplier FVector @This multiplier determine how much pawn motion will affect final throw velocity (X - side, Y - forward)
---@field DisappearTime number
---@field bShouldShowPredictLine boolean
---@field bApplyHitDamage boolean
---@field DamageTypeClass UDamageType
---@field bHasFirstBounce boolean
---@field ThrowHitProjectileRepMovement any
---@field CurrentSkillGUID number
---@field bBegunFlying boolean
local AThrowHitProjectile = {}

---@param Hit FHitResult
---@param MoveDelta FVector
function AThrowHitProjectile:HandleProjectilePassedThroughSomething(Hit, MoveDelta) end

---@param bInReplicateMovement boolean
function AThrowHitProjectile:SetReplicateMovement(bInReplicateMovement) end

---@param SkillEventType EUAESkillEvent
---@param SkillOwner AActor
function AThrowHitProjectile:SkillCustomEvent(SkillEventType, SkillOwner) end

---@param SkillIndex number
---@param StopReason UTSkillStopReason
function AThrowHitProjectile:SkillStopEvent(SkillIndex, StopReason) end

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AThrowHitProjectile:HandleProjectileBounce(ImpactResult, ImpactVelocity) end

---@param HitResult FHitResult
function AThrowHitProjectile:HandleProjectileStop(HitResult) end

---@param HitResult FHitResult
---@param HitDirection FVector
---@return number
function AThrowHitProjectile:TakeMeleeGrenadeHitDamage(HitResult, HitDirection) end

---@param HitResult FHitResult
function AThrowHitProjectile:PlayHitHurtAppearance(HitResult) end

function AThrowHitProjectile:OnRep_ReplicatedMovement() end

function AThrowHitProjectile:OnRep_BegunFlying() end
