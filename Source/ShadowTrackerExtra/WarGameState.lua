---@meta

---@class FWarGameTeamScore
---@field TeamID number
---@field TeamRank number
---@field TeamScore number
FWarGameTeamScore = {}


---@class FScoreChangeValue
---@field Score_RescueOthers number
---@field Score_Kill number
FScoreChangeValue = {}


---@class AWarGameState: ASTExtraGameStateBase
---@field ScoreChangeValue FScoreChangeValue
---@field PersistentOriginRadius number
---@field MatchLeftTimeRepPeriod number
---@field GameModeWinScore number
---@field MatchLeftTime number
---@field RespawnLeftTime number
---@field ResetRespawnLeftTime boolean
---@field TeamCount number
---@field LastRespawnTimeUpdateTimeSecond number
local AWarGameState = {}

function AWarGameState:SetLastRespawnTimeUpdateTimeSecond() end

function AWarGameState:OnRep_MatchLeftTime() end

function AWarGameState:OnRep_RespawnLeftTime() end

function AWarGameState:OnRep_TeamCount() end

function AWarGameState:OnRep_WinScore() end

function AWarGameState:UpdateRespawnCountDownUI() end

function AWarGameState:OnRep_LastRespawnTimeUpdateTimeSecond() end
