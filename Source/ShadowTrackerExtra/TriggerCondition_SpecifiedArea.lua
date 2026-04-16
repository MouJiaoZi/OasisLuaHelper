---@meta

---@class UTriggerCondition_SpecifiedArea: UTriggerCondition_Task
---@field SpecifiedTriggerAreaType ETaskTriggerAreaType @Specified task area type of this condition, waiting for designer to add in the future
local UTriggerCondition_SpecifiedArea = {}

---Get task area type from variable set
---@param InDataSource UVariableSet
---@param outTriggerAreaType ETaskTriggerAreaType
---@return boolean
function UTriggerCondition_SpecifiedArea:GetTriggerAreaTypeFromData(InDataSource, outTriggerAreaType) end

---Directly set task area type
---@param TriggerAreaType ETaskTriggerAreaType
function UTriggerCondition_SpecifiedArea:SetTriggerAreaType(TriggerAreaType) end
