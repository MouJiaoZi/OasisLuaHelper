---@meta

---武器槽位管理类
---@class UWeaponSlotManager: UObject
---@field WeaponSlotsClassConfig ULuaMapHelper<ESurviveWeaponPropSlot, UWeaponSlotBase>
---@field WeaponSlotsDataMap ULuaMapHelper<ESurviveWeaponPropSlot, UWeaponSlotBase>
local UWeaponSlotManager = {}

---@param Slot ESurviveWeaponPropSlot
---@param Weapon ASTExtraWeapon
---@return number
function UWeaponSlotManager:GetWeaponSlotUIType(Slot, Weapon) end
