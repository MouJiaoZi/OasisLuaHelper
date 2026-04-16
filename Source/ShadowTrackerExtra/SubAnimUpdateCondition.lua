---@meta

---@class USubAnimUpdateCondition: UObject
---@field Enable boolean
---@field CachedNeedUpdate boolean
local USubAnimUpdateCondition = {}

---@param AnimInstance UAnimInstanceBase
---@return boolean
function USubAnimUpdateCondition:NeedUpdate(AnimInstance) end

---@param AnimInstance UAnimInstanceBase
---@return boolean
function USubAnimUpdateCondition:NeedUpdate_Internal(AnimInstance) end
