---@meta

---@class ACarRacingGameMode: ASTExtraGameFramework
---@field GameDurationTimeSeconds number
local ACarRacingGameMode = {}

---@param NewGameDurationTimeSeconds number
function ACarRacingGameMode:SetGameDurationTimeSeconds(NewGameDurationTimeSeconds) end

---@return number
function ACarRacingGameMode:GetGameDurationTimeSeconds() end

function ACarRacingGameMode:SetupGameModeLevels() end
