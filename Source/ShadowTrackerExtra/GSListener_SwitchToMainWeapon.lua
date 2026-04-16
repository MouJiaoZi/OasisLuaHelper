---@meta

---@class UGSListener_SwitchToMainWeapon: USTNewbieGuideSuccessListenerBase
---@field CheckWeaponSlot ESurviveWeaponPropSlot
local UGSListener_SwitchToMainWeapon = {}

---@param TargetSlot ESurviveWeaponPropSlot
function UGSListener_SwitchToMainWeapon:OnCurUsingWeaponChange(TargetSlot) end
