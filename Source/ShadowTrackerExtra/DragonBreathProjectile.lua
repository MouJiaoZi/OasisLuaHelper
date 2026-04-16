---@meta

---@class FDragonBreathRepMovement
---@field LinearVelocity FVector
---@field Location FVector
---@field Rotation FRotator
---@field LocationQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated location vector. You should only need to change this from the default if you see visual artifacts.
---@field VelocityQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated velocity vectors. You should only need to change this from the default if you see visual artifacts.
---@field RotationQuantizationLevel ERotatorQuantization @Allows tuning the compression level for replicated rotation. You should only need to change this from the default if you see visual artifacts.
FDragonBreathRepMovement = {}


---@class ADragonBreathProjectile: AActor
---@field InitalLife number
---@field bUseCustomSpread boolean
---@field EnableEffectOpDeviceLevel number
---@field OffsetRotations ULuaArrayHelper<FRotator>
---@field FirstCircleNums number
---@field TotalCircleNums number
---@field ShowHitEffectMaxCircleIdxOp number
---@field ProjectileVelocitySpread number
---@field ProjectileVerticalSpread number
---@field ProjectileHorizontalSpread number
---@field MaxTraceDistance number
---@field MaxFlyingDistanceSquared number
---@field CapsuleSize FVector2D
---@field DamageValue number
---@field DamageTypeClass UDamageType
---@field MaxValidHitTime number
---@field bNeedDrawDebug boolean
---@field bForceHitAddBuff boolean
---@field BuffApplyRadius number
---@field BuffNameArray ULuaArrayHelper<string>
---@field AvailableApplyDamageActorClassList ULuaArrayHelper<AActor>
---@field bDisableSimulateHitEffect boolean
---@field HitSoundInterval number
---@field bHitSomething boolean
---@field bShowHitEffect boolean
---@field DragonBreathRepMovement any
local ADragonBreathProjectile = {}

---@param Damage number
---@param HitActor AActor
function ADragonBreathProjectile:OnCauseDamage(Damage, HitActor) end

---@param ImpactResult FHitResult
function ADragonBreathProjectile:HandleProjectileStop(ImpactResult) end

---@param Hit FHitResult
---@param MoveDelta FVector
function ADragonBreathProjectile:HandleProjectilePassedThroughSomething(Hit, MoveDelta) end

function ADragonBreathProjectile:OnRep_ReplicatedMovement() end

function ADragonBreathProjectile:OnRep_HitSomething() end

function ADragonBreathProjectile:BPHandleShowHitEffect() end

---@param OwnerCharacter ASTExtraCharacter
---@param TargetCharacter ASTExtraCharacter
---@return boolean
function ADragonBreathProjectile:CanApplyDamageAndEffect(OwnerCharacter, TargetCharacter) end

---@param OwnerCharacter ASTExtraCharacter
---@param TargetActor AActor
---@return boolean
function ADragonBreathProjectile:CanApplyDamageAndEffectForNoCharacter(OwnerCharacter, TargetActor) end

---@param bInReplicateMovement boolean
function ADragonBreathProjectile:SetReplicateMovement(bInReplicateMovement) end
