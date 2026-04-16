---@meta

---主武器槽位
---@class UWeaponSlot_MainWeapon: UWeaponSlotBase
local UWeaponSlot_MainWeapon = {}

---@param InWeaponMgr UWeaponManagerComponent
---@param InMainLogicSlot1Name string
---@param bOutNeedPutDownOldWeapon boolean
---@param bOutAutoUse boolean
---@param bOutSocket string
---@return boolean
function UWeaponSlot_MainWeapon:IsSwitchMeleeWeaponToShootWeapon(InWeaponMgr, InMainLogicSlot1Name, bOutNeedPutDownOldWeapon, bOutAutoUse, bOutSocket) end
