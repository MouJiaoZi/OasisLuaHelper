---@meta

---@class UGameplayTask_SetCharMaterial: UUAEGameplayTask
---@field IncludeChildren boolean
---@field CacheChildren ULuaSetHelper<AActor>
local UGameplayTask_SetCharMaterial = {}

---@param InWeapon ASTExtraWeapon
function UGameplayTask_SetCharMaterial:PostEquipNewWeapon(InWeapon) end
