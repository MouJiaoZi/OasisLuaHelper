---@meta

---@class ASTExtraExplosiveActor: AActor
---@field BaseDamage number
---@field MinimumDamage number
---@field DamageInnerRadius number
---@field DamageOuterRadius number
---@field DamageFreeRadius number
---@field DamageFalloff number
---@field DamageTypeClass UDamageType
---@field ExplosionEffectTemplate ASTExtraExplosionEffect
---@field DrawExplodeVisibleTraceDebugLine boolean
local ASTExtraExplosiveActor = {}

---@param InstigatorPawn APawn
---@param DamageCauser AActor
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param Origin FVector
---@param bReplicateToClients boolean
function ASTExtraExplosiveActor:Explode(InstigatorPawn, DamageCauser, IgnoreActors, Origin, bReplicateToClients) end
