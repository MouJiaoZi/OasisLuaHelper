---@meta

---该类用于定义一个基于概率的技能条件，通过设置生效概率来决定条件是否满足。
---@class UPESkillCondition_Probability: UPESkillConditionBase
---@field Probability FFloatGetter
local UPESkillCondition_Probability = {}

---@return boolean
function UPESkillCondition_Probability:CheckCondition() end
