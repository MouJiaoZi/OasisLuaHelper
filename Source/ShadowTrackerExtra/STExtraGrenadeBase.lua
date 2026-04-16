---@meta

---@class ASTExtraGrenadeBase: AExtraProjectile
---@field TickThreshold number
---@field bIsReadyToThrowGrenade boolean
---@field _hasBeenThrowedOut_CPP boolean
---@field IsTimeOut_CPP boolean
---@field TickDuration_CPP number
---@field SetLocationCountDown_CPP number
---@field BaseOffsetForOwnerPitch_CPP number
---@field MaxOwnerPitchDegree_CPP number
---@field GrenadeInitThrowMode_CPP EThrowGrenadeMode
---@field ViewOffsetRotation_H_CPP FRotator
---@field ViewOffsetRotation_L_CPP FRotator
---@field SpeedForHigh_CPP number
---@field SpeedForLow_CPP number
---@field PawnVelocityEffectVector_CPP FVector
---@field ItemDefineID FItemDefineID
---@field PredictLineActorClass FSoftClassPath
---@field ExplosionTemplate ASTExtraExplosionEffect @effects for explosion
---@field ExplosionTemplateInAir ASTExtraExplosionEffect @effects for explosion
---@field ExplosionTemplateInWater ASTExtraExplosionEffect @effects for explosion in water. If this is empty, not explosion.
---@field GrenadeAvatarID number
---@field MeleeDamageTypeClass UDamageType
---@field MeleeDamageSubType EMeleeDamageSubType
local ASTExtraGrenadeBase = {}

function ASTExtraGrenadeBase:OnRep_GrenadeAvatarID() end

---@param InGrenadeAvatarID number
function ASTExtraGrenadeBase:UpdateGrenadeAvatar(InGrenadeAvatarID) end

---@param DeltaTime number
function ASTExtraGrenadeBase:UpdateRelativePosForOwnerPitch_CPP(DeltaTime) end

---@return FRotator
function ASTExtraGrenadeBase:GetCurRotation_CPP() end

---@return FVector
function ASTExtraGrenadeBase:GetPawnJumpEffectVelocity_CPP() end

---@param Location FVector
function ASTExtraGrenadeBase:MulticastSpawnExplosionEffect(Location) end

---@param Location FVector
function ASTExtraGrenadeBase:CheckUAVNofitySoundTips(Location) end

---@return boolean
function ASTExtraGrenadeBase:IsInWater() end

---@return boolean
function ASTExtraGrenadeBase:IsFoor() end

---@param ExplosionEffect ASTExtraExplosionEffect
function ASTExtraGrenadeBase:ModifyExplosionEffect(ExplosionEffect) end

function ASTExtraGrenadeBase:HandleLoadExplosionEffectFinished() end

---@param HitResult FHitResult
---@param HitDirection FVector
---@return number
function ASTExtraGrenadeBase:TakeMeleeGrenadeHitDamage(HitResult, HitDirection) end

---@param HitResult FHitResult
function ASTExtraGrenadeBase:PlayHitHurtAppearance(HitResult) end

---@param InAlpha number
function ASTExtraGrenadeBase:UpdateProjectileAlpha(InAlpha) end
