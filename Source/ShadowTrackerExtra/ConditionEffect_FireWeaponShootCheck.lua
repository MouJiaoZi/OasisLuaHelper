---@meta

---射击条件检查
---@class UConditionEffect_FireWeaponShootCheck: UConditionEffect
---@field Key_bInEmptyFireState FUAEBlackboardKeySelector
---@field Key_bNeedStopFire FUAEBlackboardKeySelector
---@field Key_bSimClientCheckAndStopFire FUAEBlackboardKeySelector
---@field Key_ShootLockIndex FUAEBlackboardKeySelector
---@field Key_ShootLockThreshold FUAEBlackboardKeySelector
---@field SupportSimDelayStopFirePendingStateList ULuaArrayHelper<EFreshWeaponStateType>
local UConditionEffect_FireWeaponShootCheck = {}

---@return boolean
function UConditionEffect_FireWeaponShootCheck:CheckSimulatCanStopFire() end
