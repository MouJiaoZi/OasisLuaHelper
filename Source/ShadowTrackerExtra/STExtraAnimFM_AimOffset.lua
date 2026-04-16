---@meta

---@class USTExtraAnimFM_AimOffset: UAnimFunctionModule_ObjInstanceBP
---@field AORotInterpSpeed number
---@field AxisInterpMode boolean
---@field AOStartLocation FVector
---@field AORotOrig FRotator
---@field AORotLerped FRotator
---@field TargetLocationWS FVector
---@field bHasValidAOTarget boolean
local USTExtraAnimFM_AimOffset = {}

---@param AnimInstance UAnimInstanceBase
---@return FVector
function USTExtraAnimFM_AimOffset:GetAOTargetLocationWS(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
---@return boolean
function USTExtraAnimFM_AimOffset:HasValidAOTarget(AnimInstance) end
