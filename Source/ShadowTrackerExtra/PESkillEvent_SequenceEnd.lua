---@meta

---@class UPESkillEvent_SequenceEnd: UPESkillEventBase
---@field bOnlyFinished boolean
local UPESkillEvent_SequenceEnd = {}

---@param bIsStop boolean
---@param StateName string
function UPESkillEvent_SequenceEnd:OnSequenceStopOrFinished(bIsStop, StateName) end
