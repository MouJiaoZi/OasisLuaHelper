---@meta

---@class AWarGameMode: ABattleRoyaleGameModeTeam
---@field WinTeamID number
---@field MatchDurationTime number
---@field WinScore number
---@field Score_MakeOtherGotoNearDeath number
---@field Score_RescueOthers number
---@field Score_TeamAllDeath number
---@field Score_Kill number
---@field FlyToWhiteCircleRadius number
local AWarGameMode = {}

---@param InScore number
function AWarGameMode:CheckAndGotoMatchEnd(InScore) end

---@param NewDurationTime number
function AWarGameMode:SetMatchDurationTime(NewDurationTime) end

---@param PlayerKey number
---@param bAI boolean
function AWarGameMode:RespawnPlayer(PlayerKey, bAI) end

---@param TeamID number
---@return boolean
function AWarGameMode:IsWinTeam(TeamID) end
