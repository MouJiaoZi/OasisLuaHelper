---@meta

---@class USTExtraSixWingAnimInstance: USTExtraVehicleAnimInstance
---@field RealAimRotationInterp number
---@field bDisableOverTurnScopeFlip boolean
---@field RealAimRotation FRotator
---@field Item_R_ScopeRealRotation FRotator
---@field bIsFlip boolean
---@field bIsTurning boolean
---@field bTriggerOverTurnLeft boolean
---@field ScopeAimRotationToAnim FRotator
---@field ScopeAimRotation FRotator
local USTExtraSixWingAnimInstance = {}

---@param OutPutTransform FTransform
function USTExtraSixWingAnimInstance:GetVehicleNoPitchTransform(OutPutTransform) end
