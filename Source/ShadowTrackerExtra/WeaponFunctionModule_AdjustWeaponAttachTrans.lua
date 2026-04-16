---@meta

---@class UWeaponFunctionModule_AdjustWeaponAttachTrans: UWeaponFunctionModuleBase
local UWeaponFunctionModule_AdjustWeaponAttachTrans = {}

---@param SlotID number
---@param bEquip boolean
function UWeaponFunctionModule_AdjustWeaponAttachTrans:HandleWeaponPartsEquipped(SlotID, bEquip) end

---@param SlotID number
function UWeaponFunctionModule_AdjustWeaponAttachTrans:HandleWeaponResetAttachmentSocket(SlotID) end
