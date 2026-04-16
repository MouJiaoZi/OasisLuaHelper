---@meta

---@class UProjectileActionEffect_LaunchNewProjectile: UProjectileActionEffectBase
---@field ProjectileTemplate AUniversalProjectileCore
---@field ProjectileNum FIntGetter
---@field SplitDirectionType EProjectileSplitDirectionType
---@field SubProjectileParamsOverride FSubProjectileParamsOverrideNew
---@field SplitType EProjectileSplitType
---@field RingData FSplitProjectileRingData
---@field FanData FSplitProjectileFanData
---@field ConeData FSplitProjectileConeData
local UProjectileActionEffect_LaunchNewProjectile = {}

---@param Owner AActor
---@param InTransform FTransform
function UProjectileActionEffect_LaunchNewProjectile:SpawnCustomFunc(Owner, InTransform) end
