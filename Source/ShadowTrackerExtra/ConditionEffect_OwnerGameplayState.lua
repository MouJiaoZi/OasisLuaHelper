---@meta

---GameplatTag状态判断
---@class UConditionEffect_OwnerGameplayState: UConditionEffect
---@field OwnerStateFatalList ULuaArrayHelper<FGameplayTag>
---@field OwnerStateAtLeastNeedList ULuaArrayHelper<FGameplayTag>
---@field OwnerWeaponStateFatalList ULuaArrayHelper<EFreshWeaponStateType>
---@field OwnerWeaponStateAtLeastNeedList ULuaArrayHelper<EFreshWeaponStateType>
local UConditionEffect_OwnerGameplayState = {}
