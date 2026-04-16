---@meta

---@class UTriggerCondition_KillPlayer: UTriggerCondition_Task
---@field SpecifiedKillCount number @Specified kill count, actually is task process from server
---@field TargetKillingCount number @Specified kill count, actually is task process from server
---@field InitProcess number
local UTriggerCondition_KillPlayer = {}

---Get kill count from variable set
---@param InDataSource UVariableSet
---@param outKillCount number
---@return boolean
function UTriggerCondition_KillPlayer:GetKillCountFromData(InDataSource, outKillCount) end

function UTriggerCondition_KillPlayer:UpdateTaskProcess() end
