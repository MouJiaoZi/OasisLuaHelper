---@meta

---@class UTriggerCondition_Operator: UTriggerCondition_Task
---@field ChildConditions ULuaArrayHelper<UTriggerCondition> @Child conditions for this operator, maybe like the structure below And /   \ Cond_1   OR /  \ Cond_2   Cond_3
local UTriggerCondition_Operator = {}

---Add child conditions to operator condition
---@param NewChildCond UTriggerCondition
function UTriggerCondition_Operator:AddChildCondition(NewChildCond) end
