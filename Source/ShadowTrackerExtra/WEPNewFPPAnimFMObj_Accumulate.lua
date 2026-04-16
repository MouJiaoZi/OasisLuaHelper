---@meta

---@class UWEPNewFPPAnimFMObj_Accumulate: UAnimFunctionModule_ObjInstance
---@field AccumulateRate number
---@field bAccumulateRate boolean
local UWEPNewFPPAnimFMObj_Accumulate = {}

---@param AnimInstance UAnimInstanceBase
---@param DeltaSeconds number
function UWEPNewFPPAnimFMObj_Accumulate:UpdateWeaponAccumulate(AnimInstance, DeltaSeconds) end

---@param AnimInstance UAnimInstanceBase
---@return boolean
function UWEPNewFPPAnimFMObj_Accumulate:GetIsNewFPPAnimInstance(AnimInstance) end
