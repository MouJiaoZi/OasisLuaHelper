---@meta

---@class EPESkillTeamConditionType
---@field EPESkillTeamConditionType_InTeam number @在队伍中
---@field EPESkillTeamConditionType_NotInTeam number @不在队伍中
EPESkillTeamConditionType = {}


---@class UPESkillCondition_InTeam: UPESkillConditionBase
---@field CompareOperation ECompareOperation
---@field LiveTeamMateCount number
local UPESkillCondition_InTeam = {}

---@return boolean
function UPESkillCondition_InTeam:CheckCondition() end
