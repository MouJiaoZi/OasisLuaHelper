---@meta

---@class EPESkillTargetConditionType
---@field EPESkillTargetConditionType_Valid number @有合法目标
---@field EPESkillTargetConditionType_Invalid number @没有合法目标
EPESkillTargetConditionType = {}


---@class UPESkillCondition_ValidSelectedTargets: UPESkillConditionBase
---@field TargetCondition EPESkillTargetConditionType
local UPESkillCondition_ValidSelectedTargets = {}

---@return boolean
function UPESkillCondition_ValidSelectedTargets:CheckCondition() end
