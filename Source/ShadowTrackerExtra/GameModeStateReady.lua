---@meta

---@class UGameModeStateReady: UGameModeState
---@field AutoGroupParachuteTeamTime number
---@field StopJoinTime number
---@field ForceStartCountDownTime number
---@field bCanSendStopJoin boolean
---@field bShouldStartReadyCountDown boolean
local UGameModeStateReady = {}

function UGameModeStateReady:StopJoin() end
