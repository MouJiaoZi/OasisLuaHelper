---@meta

---@class AScoreBoardActor: AActor
local AScoreBoardActor = {}

---@param BlueScore number
---@param RedScore number
function AScoreBoardActor:BP_UpdateDisplay(BlueScore, RedScore) end

function AScoreBoardActor:OnScoreChanged() end

---@return number
function AScoreBoardActor:GetBlueTeamScore() end

---@return number
function AScoreBoardActor:GetRedTeamScore() end
