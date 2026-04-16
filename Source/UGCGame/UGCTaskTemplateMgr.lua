---@meta

---@class FUGCTaskInfo
---@field TaskID number
---@field TaskType number
---@field Progress number
---@field TaskState EUGCTaskState
FUGCTaskInfo = {}


---@class AUGCTaskTemplateMgr: AUniversalTaskMgr, IUGCGamePartGlobalActorInterface
---@field TaskConfigMap ULuaMapHelper<number, FUGCTaskConfig>
---@field TaskLineConfigMap ULuaMapHelper<string, FUGCTaskLineConfig>
---@field TaskInstanceMap ULuaMapHelper<number, UUGCTaskBase>
---@field UniversalTaskMap ULuaMapHelper<UUniversalTask, UUGCTaskBase>
---@field PercentTaskLineResetTime ULuaMapHelper<string, number>
local AUGCTaskTemplateMgr = {}

---@param TaskID number
---@return boolean
function AUGCTaskTemplateMgr:GetIsTemplateFormGamePartConfig(TaskID) end

---@param TaskID number
---@return string
function AUGCTaskTemplateMgr:GetTemplatePathByTaskID(TaskID) end

---@param Task UUGCTaskBase
function AUGCTaskTemplateMgr:CreateUniversalTask(Task) end
