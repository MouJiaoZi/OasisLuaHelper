---@meta

---@class AEliteProjectile_MeleeBase: AEliteProjectile
---@field MeleeDamageTypeClass UDamageType
---@field MeleeDamageSubType EMeleeDamageSubType
---@field ItemType number
---@field SpecificItemID number
---@field bSpawnPickUp boolean
---@field SpawnPickUpIngoredTag string
---@field MaxDetectTheFirstNon_PawnObjectTimes number
---@field bHasFirstBounce boolean
---@field bCOLLISION_WheelCollision_Block boolean
local AEliteProjectile_MeleeBase = {}

---@param HitResult FHitResult
---@param HitDirection FVector
---@return number
function AEliteProjectile_MeleeBase:TakeMeleeGrenadeHitDamage(HitResult, HitDirection) end

---@param HitResult FHitResult
function AEliteProjectile_MeleeBase:PlayHitHurtAppearance(HitResult) end
