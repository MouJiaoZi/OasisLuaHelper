---@meta

---@class APVEProjectileSimple: AActor, IObjectPoolInterface
---@field ObjectPoolSize number
---@field IgonreChannel ULuaArrayHelper<ECollisionChannel>
---@field ApplyDamageActorClass ULuaArrayHelper<AActor>
---@field HitDamage number
---@field DamageClass UDamageType
---@field CloseSimulateCollison boolean
local APVEProjectileSimple = {}

---@param _ImpactResult FHitResult
function APVEProjectileSimple:OnImpact(_ImpactResult) end

function APVEProjectileSimple:OnProjectileDestroy() end

---@param TagActor AActor
---@param HitResult FHitResult
function APVEProjectileSimple:CauseDamage(TagActor, HitResult) end

---@param ImpactResult FHitResult
function APVEProjectileSimple:ResumMoveAndIgonre(ImpactResult) end
