---@meta

---@class UUNGCondition_IsInSomePoseForXSec: USTNewbieGuideConditionBase
---@field ActiveTime number
---@field CheckState ESTEPoseState
local UUNGCondition_IsInSomePoseForXSec = {}

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function UUNGCondition_IsInSomePoseForXSec:OnPlayerStateChange(LastPose, NewPose) end
