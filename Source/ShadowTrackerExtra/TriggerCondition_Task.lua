---@meta

---@class UTriggerCondition_Task: UTriggerCondition
---@field TaskConditionType ETaskConditionType @Task condition type
---@field bActive boolean @whether the condition is alive
---@field bIsConfigurable boolean @whether the condition should get default parameters form data table
local UTriggerCondition_Task = {}

---Whether the condition is satisfied
---@param Event UTriggerEvent
---@return boolean
function UTriggerCondition_Task:IsSatisfy(Event) end

---whether the condition is belonging to the given type
---@param InTaskConditionType ETaskConditionType
---@return boolean
function UTriggerCondition_Task:IsSameCondition(InTaskConditionType) end

---Using variable set to fill in the condition
---@param InDataSource UVariableSet
---@return boolean
function UTriggerCondition_Task:FillDataSource(InDataSource) end

---Directly set condition parameter
---@param Value number
function UTriggerCondition_Task:SetConditionParam(Value) end

---Directly set condition target parameter
---@param Value number
function UTriggerCondition_Task:SetTargetParam(Value) end

---Decide whether the condition should be actived
---@param InDataSource UVariableSet
---@return boolean
function UTriggerCondition_Task:ActiveCondition(InDataSource) end

---Decide whether the condition should be deactived
---@param InDataSource UVariableSet
---@return boolean
function UTriggerCondition_Task:DeactiveCondition(InDataSource) end

---Compare value with condition parameter and return result
---@param InDataSource UVariableSet
---@return boolean
function UTriggerCondition_Task:CompareParam(InDataSource) end
