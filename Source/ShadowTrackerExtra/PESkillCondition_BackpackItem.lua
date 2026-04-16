---@meta

---@class UPESkillCondition_BackpackItem: UPESkillConditionBase
---@field ItemIDWrapper FIntGetter
---@field CompareOperation ECompareOperation
---@field CompareValueWrapper FIntGetter
local UPESkillCondition_BackpackItem = {}

---@return boolean
function UPESkillCondition_BackpackItem:CheckCondition() end
