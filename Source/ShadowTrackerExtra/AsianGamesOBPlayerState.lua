---@meta

---@class AAsianGamesOBPlayerState: ASTExtraOBState
local AAsianGamesOBPlayerState = {}

---@param TeamChangeStageInfo FTeamChangeStageInfo
function AAsianGamesOBPlayerState:ClientRPC_TeamChangeStage(TeamChangeStageInfo) end

---@param TeamChangeStageInfo FTeamChangeStageInfo
function AAsianGamesOBPlayerState:Receive_ClientRPC_TeamChangeStage(TeamChangeStageInfo) end

---@param TeamChangeStageInfo FTeamChangeStageInfo
function AAsianGamesOBPlayerState:OnTeamChangeStage(TeamChangeStageInfo) end
