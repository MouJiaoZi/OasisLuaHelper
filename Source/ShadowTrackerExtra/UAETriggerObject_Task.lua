---@meta

---@class UUAETriggerObject_Task: UUAETriggerObject
---@field TaskEventTypes ULuaArrayHelper<ETaskEventType> @Those task event types who can trigger the process of task judgment
---@field RedoTriggerActions ULuaArrayHelper<UTriggerAction> @Redo actions used to reduce collection count when player dropping items
---@field TaskID number @The unique task id
---@field TaskType ETaskType @Task type ETT_Common: a task which is judged in dedicated server ETT_PureCollection : a task which is just collect specified items and report to server
local UUAETriggerObject_Task = {}

---Do redo actions
function UUAETriggerObject_Task:RedoAction() end

---Construct task object, creating conditions and actions, then register them
---@param InTaskID number
---@param InTaskSubType number
---@param InMainConditionParamStr string
---@param InTargetProcess number
---@return boolean
function UUAETriggerObject_Task:ConstructTask(InTaskID, InTaskSubType, InMainConditionParamStr, InTargetProcess) end

---Get event types from blueprint
function UUAETriggerObject_Task:ConstructEvents() end

---Get action types from blueprint
function UUAETriggerObject_Task:ConstructActions() end

---Get redo types from blueprint
function UUAETriggerObject_Task:ConstructRedoActions() end

---@param EventTypes ULuaArrayHelper<ETaskEventType>
function UUAETriggerObject_Task:AddEventTypes(EventTypes) end

---Initialize conditions using data from data table
---@param InTaskSubType number
---@param InMainConditionParamStr string
---@param InTargetProcess number
function UUAETriggerObject_Task:InitConfigurableCondition(InTaskSubType, InMainConditionParamStr, InTargetProcess) end

---Set task process
---@param Process number
---@param Ext_Info string
function UUAETriggerObject_Task:SetTaskProcess(Process, Ext_Info) end

---Active specified conditions and update condition state
---@param InTaskConditionType ETaskConditionType
---@param InDataSource UVariableSet
---@return boolean
function UUAETriggerObject_Task:ActiveCondition(InTaskConditionType, InDataSource) end

---Deactive specified conditions and update condition state
---@param InTaskConditionType ETaskConditionType
---@param InDataSource UVariableSet
function UUAETriggerObject_Task:DeactiveCondition(InTaskConditionType, InDataSource) end

---Check if all conditions are satisfied
---@param Event UTriggerEvent
---@return boolean
function UUAETriggerObject_Task:IsConditionsSatisfy(Event) end

---Notify task trigger to deactive when actions are done
function UUAETriggerObject_Task:NofityTriggerComplete() end
