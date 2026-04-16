---@meta

---根据事件跳转到目标状态
---@class UPESkillTask_StateBranch: UPESkillTaskBase
---@field EventContainerList FPESkillEventContainerList
---@field StateName string
local UPESkillTask_StateBranch = {}

---@param InEvent UPESkillEventBase
function UPESkillTask_StateBranch:OnSkillEventActivateCallBack(InEvent) end
