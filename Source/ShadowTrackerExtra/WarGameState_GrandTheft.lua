---@meta

---@class AWarGameState_GrandTheft: AWarGameState
local AWarGameState_GrandTheft = {}

---@param TargetPlayerState ASTExtraPlayerState
---@return number
function AWarGameState_GrandTheft:LoseScore(TargetPlayerState) end

---@param InstigatorPlayerState ASTExtraPlayerState
---@param ChangedScore number
---@param Reason EWarScoreChangeReason
---@return number
function AWarGameState_GrandTheft:UpdateTeamScore(InstigatorPlayerState, ChangedScore, Reason) end

---@param InstigatorPlayerState ASTExtraPlayerState
---@param Reason EWarScoreChangeReason
function AWarGameState_GrandTheft:NotifyTeamScoreChanged(InstigatorPlayerState, Reason) end

function AWarGameState_GrandTheft:UpdateGlobalRepParam() end
