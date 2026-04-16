---@meta

---@class UAnimInstanceUpdateCondition: UObject
---@field Enable boolean
local UAnimInstanceUpdateCondition = {}

---@param AnimInstance UAnimInstance
---@param DeltaTime number
---@return boolean
function UAnimInstanceUpdateCondition:NeedUpdate(AnimInstance, DeltaTime) end

---@param AnimInstance UAnimInstance
---@param DeltaTime number
---@return boolean
function UAnimInstanceUpdateCondition:NeedUpdate_Internal(AnimInstance, DeltaTime) end
