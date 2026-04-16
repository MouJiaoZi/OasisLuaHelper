---@meta

---@class UGameplayTask_ChangeWeaponAttribute: UUAEGameplayTask
---@field AttrItems ULuaArrayHelper<FPESkillAttributeItem>
---@field CachedWeaponRef AActor
local UGameplayTask_ChangeWeaponAttribute = {}

---@param TargetSlot ESurviveWeaponPropSlot
function UGameplayTask_ChangeWeaponAttribute:OnWeaponEquipStateChange(TargetSlot) end
