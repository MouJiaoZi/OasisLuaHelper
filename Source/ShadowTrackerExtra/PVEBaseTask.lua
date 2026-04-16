---@meta

---PVE 任务基类
---@class UPVEBaseTask: UObject
---@field GameInstanceId number
local UPVEBaseTask = {}

---@param InstanceId number
function UPVEBaseTask:Execute(InstanceId) end

---@param InstanceId number
---@return boolean
function UPVEBaseTask:LuaExecute(InstanceId) end
