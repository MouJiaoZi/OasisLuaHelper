---@meta

---@class UHunterTaskListener: UUniversalTaskController
---@field TaskCompletedTimes ULuaMapHelper<number, number>
local UHunterTaskListener = {}

---@param TaskID number
---@return number
function UHunterTaskListener:GetTaskCompletedTimes(TaskID) end

---@param TaskID number
---@param Picker UObject
---@return boolean
function UHunterTaskListener:OnHandleUseTaskItem(TaskID, Picker) end
