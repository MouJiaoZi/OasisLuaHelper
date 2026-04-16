---@meta

---@class FCarRacingFinPlayerInfo
---@field PlayerUID number
---@field Rank number
---@field TimeCost number
---@field BestTimeCost number
---@field NewBest boolean
---@field PlayerName string
---@field VehicleSkinID number
FCarRacingFinPlayerInfo = {}


---@class FCarRacingFinInfos
---@field bisOver boolean
---@field Data ULuaArrayHelper<FCarRacingFinPlayerInfo>
FCarRacingFinInfos = {}


---@class ACarRacingGameState: ASTExtraGameStateBase
---@field DSGameDurationTime number
---@field PlayerFinishRepInfos FCarRacingFinInfos
---@field LeaderBoard FCarRacingLeaderBoard
local ACarRacingGameState = {}

---@return number
function ACarRacingGameState:GetClientInterpolatedGameDurationTime() end

---@return number
function ACarRacingGameState:GetDSGameModeState() end

---@param NewGameDurationTimeSeconds number
function ACarRacingGameState:SetGameDurationTimeSeconds(NewGameDurationTimeSeconds) end

function ACarRacingGameState:DoRepPlayerFinishRepInfos() end

---@param InLeaderBoard FCarRacingLeaderBoard
function ACarRacingGameState:UpdateLeaderBoard(InLeaderBoard) end

function ACarRacingGameState:OnRep_LeaderBoard() end

function ACarRacingGameState:OnRep_PlayerFinishRepInfos() end
