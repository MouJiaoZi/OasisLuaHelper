---@meta

---手枪武器槽位
---@class UWeaponSlot_SubWeapon: UWeaponSlotBase
---@field ShouldEquipMainWeaponSlotFirstly boolean
local UWeaponSlot_SubWeapon = {}

---@param InWeaponMgr UWeaponManagerComponent
---@param InMainLogicSlot1Name string
---@param bOutNeedPutDownOldWeapon boolean
---@param bOutAutoUse boolean
---@param bOutSocket string
---@return boolean
function UWeaponSlot_SubWeapon:IsSwitchMeleeWeaponToShootWeapon(InWeaponMgr, InMainLogicSlot1Name, bOutNeedPutDownOldWeapon, bOutAutoUse, bOutSocket) end
