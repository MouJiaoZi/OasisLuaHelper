---@meta

---@class USTExtraFRCCarAnimInstance: USTVehicleAnimInstance
---@field C_CameraRotator FRotator
---@field InterpRotSpeedInSimulate number
local USTExtraFRCCarAnimInstance = {}

---@param NewState EFreshWeaponStateType
function USTExtraFRCCarAnimInstance:HandlePlayerWeaponStateChanged(NewState) end
