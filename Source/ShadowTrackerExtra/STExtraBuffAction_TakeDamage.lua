---@meta

---@class FBATakeDamageInstanceStruct
FBATakeDamageInstanceStruct = {}


---@class USTExtraBuffAction_TakeDamage: USTExtraBuffAction
---@field IntervalTime number
---@field DamageValue number
---@field DamageTypeClass UDamageType
---@field PreSetDamageTypeTags ULuaArrayHelper<string>
---@field bUseRadialDamage boolean
---@field ItemID number
---@field ExplosionRadius number
---@field bUseDynamicModifierValue boolean
---@field DynamicModifierValue number
---@field DynamicModifierValueGetter FUTFloatPropertyGetter
local USTExtraBuffAction_TakeDamage = {}
