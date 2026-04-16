---@meta

---任务配置组件
---@class UTaskConfigComponent: UActorComponent
---@field TaskMgrClassList ULuaArrayHelper<AUniversalTaskMgr>
---@field DefaultTaskMgrPath string
---@field TaskMgrList ULuaArrayHelper<AUniversalTaskMgr>
---@field IsCreatingPlayerBornTask boolean
local UTaskConfigComponent = {}

function UTaskConfigComponent:CreateAllTaskManager() end

---@param TaskMgrTypeClass UClass
---@return boolean
function UTaskConfigComponent:HasTypeofTaskMgr(TaskMgrTypeClass) end
