---@meta

---@class UTriggerCondition_SpecifiedPlace: UTriggerCondition_Task
---@field SpecifiedTriggerItemType ETaskTriggerItemType @Specified trigger item type of this condition
local UTriggerCondition_SpecifiedPlace = {}

---Get trigger item type from variable set
---@param InDataSource UVariableSet
---@param outTriggerItemType ETaskTriggerItemType
---@return boolean
function UTriggerCondition_SpecifiedPlace:GetTriggerItemTypeFromData(InDataSource, outTriggerItemType) end

---Directly set trigger item type
---@param TriggerItemType ETaskTriggerItemType
function UTriggerCondition_SpecifiedPlace:SetTriggerItemType(TriggerItemType) end
