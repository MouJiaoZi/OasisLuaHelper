---@meta

---@class ERangeShape
---@field Sphere number @球形
---@field Cone number @锥形
ERangeShape = {}


---@class UProjectileActionEffect_RangeEffectBase: UProjectileActionEffectBase
---@field ShapeType ERangeShape
---@field ConeAngle FFloatGetter
---@field Radius FFloatGetter
---@field ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field MatchType EProjectileMatchType
---@field Filters ULuaArrayHelper<UUniversalProjectileFilter>
local UProjectileActionEffect_RangeEffectBase = {}

---@param TargetData FPESkillTargetData
function UProjectileActionEffect_RangeEffectBase:ReceiveInRangeTarget(TargetData) end

---@param Location FVector
---@param Direction FVector
function UProjectileActionEffect_RangeEffectBase:GetRangeResult(Location, Direction) end
