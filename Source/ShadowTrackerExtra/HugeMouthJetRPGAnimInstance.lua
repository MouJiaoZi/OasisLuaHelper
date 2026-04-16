---@meta

---@class UHugeMouthJetRPGAnimInstance: UVehWeaponAnimInstanceBase
---@field bCameraIgnoreVehicleRot boolean
---@field bUseBPCalculation boolean
---@field JetUpZThreshold number
---@field LerpScale number
local UHugeMouthJetRPGAnimInstance = {}

---@param JetRot FRotator
---@param LookRot FRotator
---@return FRotator
function UHugeMouthJetRPGAnimInstance:CalculateFinalRot(JetRot, LookRot) end
