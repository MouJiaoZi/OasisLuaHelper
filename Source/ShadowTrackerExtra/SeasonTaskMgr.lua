---@meta

---@class FPlayerTaskDetail
---@field TaskID number
---@field Process number
---@field ExtInfo string
FPlayerTaskDetail = {}


---@class FTaskTableInfo
---@field TaskType number
---@field TargetProcess number
---@field TaskParam1 string
---@field TaskParam2 string
FTaskTableInfo = {}


---赛季挑战
---@class ASeasonTaskMgr: ATaskPoolObjBase
---@field FiltRealTimeTaskTypeList ULuaArrayHelper<number>
---@field CouncilReelTaskSet ULuaSetHelper<number>
---@field TaskTableInfoMap ULuaMapHelper<number, FTaskTableInfo>
---@field TableParamCache ULuaMapHelper<number, FTaskParameterCache>
---@field TaskShowTypeCache ULuaMapHelper<number, number>
local ASeasonTaskMgr = {}

---@param InTaskID number
---@param ParamsArr ULuaArrayHelper<number>
---@return boolean
function ASeasonTaskMgr:GetIntParamsFromCacheData(InTaskID, ParamsArr) end

---@param InTaskID number
---@param ParamsArr ULuaArrayHelper<string>
---@return boolean
function ASeasonTaskMgr:GetStrParamsFromCacheData(InTaskID, ParamsArr) end

---@param InTaskID number
---@param StringParam string
---@param StringParamSec string
---@return boolean
function ASeasonTaskMgr:GetTaskParamsFromDataTableBlueprint(InTaskID, StringParam, StringParamSec) end

---@param TaskID number
---@return number
function ASeasonTaskMgr:GetTaskTypeFormDataTable(TaskID) end

---@param TaskID number
---@return number
function ASeasonTaskMgr:GetTargetProgressFormDataTable(TaskID) end

---@param TaskType number
---@return number
function ASeasonTaskMgr:GetShowTaskTypeFormDataTable(TaskType) end

---@param InTaskID number
---@return boolean
function ASeasonTaskMgr:CheckReelTaskByTaskID(InTaskID) end

---@param InTaskID number
---@return boolean
function ASeasonTaskMgr:CheckEscapeTaskByTaskID(InTaskID) end

---@param InTaskID number
---@return boolean
function ASeasonTaskMgr:CheckEscapeSeasonTaskByTaskID(InTaskID) end

---@param InTaskID number
---@return boolean
function ASeasonTaskMgr:CheckEscapeTaskNeedFinishedTips(InTaskID) end

---@param InTaskID number
---@return boolean
function ASeasonTaskMgr:CheckEscapeTaskNeedPickupTips(InTaskID) end

---@param InTaskID number
function ASeasonTaskMgr:GetEscapeTaskNeedPickupTipsItems(InTaskID) end

---@param TaskType number
---@return boolean
function ASeasonTaskMgr:IsRealTimeComputingTask(TaskType) end
