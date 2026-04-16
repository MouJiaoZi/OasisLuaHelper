---@meta

---赏金逃猎任务系统
---@class AHunterTaskMgr: AUniversalTaskMgr
---@field TeamDataMgrClass AHunterTaskTeamMgr
---@field AttachedListeners ULuaArrayHelper<UUniversalTaskController>
local AHunterTaskMgr = {}

---@param TaskID number
---@return number
function AHunterTaskMgr:GetTaskType(TaskID) end

---@param Listener UUniversalTaskController
function AHunterTaskMgr:RegisterAttachListeners(Listener) end
