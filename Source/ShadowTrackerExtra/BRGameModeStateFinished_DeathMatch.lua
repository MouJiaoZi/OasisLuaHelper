---@meta

---@class UBRGameModeStateFinished_DeathMatch: UGameModeStateFinishedTeam
---@field DelaySendTime number
---@field TimeDilation number
---@field SlomoTime number
---@field bSendResult boolean
---@field bSlomoStart boolean
---@field bNeedSendGameOver boolean
---@field StarStatTime number
local UBRGameModeStateFinished_DeathMatch = {}

---@param DeltaTime number
function UBRGameModeStateFinished_DeathMatch:SlomoExecute(DeltaTime) end
