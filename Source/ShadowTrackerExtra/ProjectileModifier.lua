---@meta

---@class EProjectileModifierType
---@field BasePropertyAdd number @基础属性追加
---@field DamageTagAppend number @伤害Tag追加
---@field ReplaceMovementPath number @替换轨迹
---@field ActionAppend number @抛体动作追加
---@field CustomModifier number @自定义方法
EProjectileModifierType = {}


---@class FProjectileModifierWrapper
---@field ProjectileModifierType EProjectileModifierType
---@field ProjectileGravityScale FFloatGetter
---@field Speed FFloatGetter
---@field Scale FVector
---@field MaxSpeed FFloatGetter
---@field MaxDistance FFloatGetter
---@field LifeTime FFloatGetter
---@field DamageTypeTags ULuaArrayHelper<FGameplayTag>
---@field bKeepSpeed boolean
---@field bKeepProjectileScale boolean
---@field EffectWrapperList ULuaArrayHelper<FProjectileEffectWrapper>
---@field TriggerFunction FBindFunctionSelector
FProjectileModifierWrapper = {}


---@class FProjectileModifier
---@field ProjectileModifierList ULuaArrayHelper<FProjectileModifierWrapper>
FProjectileModifier = {}
