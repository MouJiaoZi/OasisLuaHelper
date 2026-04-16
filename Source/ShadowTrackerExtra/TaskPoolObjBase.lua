---@meta

---@class ATaskPoolObjBase: AUniversalTaskMgr
---@field bHasLoadBornTask boolean
local ATaskPoolObjBase = {}

---@param EnableTriggersName ULuaArrayHelper<string>
function ATaskPoolObjBase:OnEventCenterCreated(EnableTriggersName) end

---@return boolean
function ATaskPoolObjBase:CreatePlayerBornTaskFormDataTable() end
