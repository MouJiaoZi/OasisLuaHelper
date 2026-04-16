---@meta

---@class UWeaponsCompanionEquipDelegate: UObject
---@field TempIsEquip boolean
---@field TempAttachHandle UBackpackWeaponAttachHandle
local UWeaponsCompanionEquipDelegate = {}

---@param isEquip boolean
---@param attachHandle UBackpackWeaponAttachHandle
function UWeaponsCompanionEquipDelegate:OnWeaponEquipOrUnEuip(isEquip, attachHandle) end

---@param newWeapon ASTExtraWeapon
function UWeaponsCompanionEquipDelegate:SetWeapon(newWeapon) end
