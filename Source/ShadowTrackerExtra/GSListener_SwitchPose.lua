---@meta

---@class UGSListener_SwitchPose: USTNewbieGuideSuccessListenerBase
---@field bCheckLastPose boolean
---@field bCheckNewPose boolean
---@field LastPose ESTEPoseState
---@field NewPose ESTEPoseState
local UGSListener_SwitchPose = {}

---@param InLastPose ESTEPoseState
---@param InNewPose ESTEPoseState
function UGSListener_SwitchPose:OnCharacterPoseChange(InLastPose, InNewPose) end
