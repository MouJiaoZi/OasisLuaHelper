---@meta

---武器槽位基类
---@class UWeaponSlotBase: UObject
---@field SlotUIType number
---@field bCanDisuse boolean
---@field bUpdateLastUseDiffSlotWeaponSlotWhenSwitchToThisSlot boolean
---@field bUpdateLastUseNoneGrenadeWeaponSlotWhenSwitchToThisSlot boolean
---@field bNeedCreateWhenCanNotEquip boolean
---@field bNeedSwitchWhenCreateAndUseSameSlotWeapon boolean
---@field bHideWeaponAfterDisuse boolean
---@field bResetIsPressingFireBtnWhenSwitch boolean
---@field bForceSwitchWhenUseAfterSpawn boolean
---@field SwitchAnimType number
local UWeaponSlotBase = {}

---@param StateType EFreshWeaponStateType
---@param Slot ESurviveWeaponPropSlot
---@return EMonsterPoseType
function UWeaponSlotBase:GetWeaponAnimTypeBySlot(StateType, Slot) end

---@param TargetLogicSocket string
---@param InWeaponMgr UWeaponManagerComponent
---@return string
function UWeaponSlotBase:CheckAndOverrideTargetLogicSocket(TargetLogicSocket, InWeaponMgr) end

---@return boolean
function UWeaponSlotBase:IsLocked() end
