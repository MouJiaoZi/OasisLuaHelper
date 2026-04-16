---@meta

---@class UPESkillTask_CustomLuaTask: UPESkillTaskPeriod
---@field LuaScriptPath string
local UPESkillTask_CustomLuaTask = {}

---@return boolean
function UPESkillTask_CustomLuaTask:TaskSupportRPC_BP() end

function UPESkillTask_CustomLuaTask:InitTask_BP() end

---@return number
function UPESkillTask_CustomLuaTask:GetPlayRate() end
