---@meta

---任务管理基类，组织任务列表关系
---@class ATaskPoolObj: ATaskPoolObjBase
---@field TableParamCache ULuaMapHelper<number, FTaskParameterCache>
local ATaskPoolObj = {}

---@param InTaskID number
---@param IntParams ULuaArrayHelper<number>
---@param StringParams ULuaArrayHelper<string>
---@return boolean
function ATaskPoolObj:GetTaskParamsFromDataTableBlueprint(InTaskID, IntParams, StringParams) end
