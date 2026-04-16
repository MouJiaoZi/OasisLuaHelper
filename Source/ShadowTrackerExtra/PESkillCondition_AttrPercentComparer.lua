---@meta

---该类继承自 UPESkillConditionBase，用于检查两个属性的百分比是否满足特定条件。
---@class UPESkillCondition_AttrPercentComparer: UPESkillConditionBase
---@field GameAttributeB FGameAttributeContainer
---@field CompareOperation ECompareOperation
---@field CompareValue FFloatGetter
---@field GameAttributeA FGameAttributeContainer
---@field Comparer FAttrPercentComparer
local UPESkillCondition_AttrPercentComparer = {}
