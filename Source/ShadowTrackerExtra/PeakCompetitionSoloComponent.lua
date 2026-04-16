---@meta

---@class UPeakCompetitionSoloComponent: UGameModeBaseComponent
---@field NameIndex number
---@field SoloPeakPlayerName ULuaMapHelper<number, FPeakCompetitionSoloPlayerName>
---@field SoloPeakBattleCombat ULuaMapHelper<number, number>
local UPeakCompetitionSoloComponent = {}

---@param PlayerKey number
---@param PlayerName string
function UPeakCompetitionSoloComponent:SetPeakSoloPlayerName(PlayerKey, PlayerName) end

---@param PlayerKey number
---@return string
function UPeakCompetitionSoloComponent:GetPeakSoloPlayerName(PlayerKey) end

---@param PlayerKey number
---@return string
function UPeakCompetitionSoloComponent:GetPlayerName(PlayerKey) end

---@param SelfPlayerState ASTExtraPlayerState
---@param TeammateUID number
---@param TeammateName string
---@return boolean
function UPeakCompetitionSoloComponent:GetTeammateSoloName(SelfPlayerState, TeammateUID, TeammateName) end

---@param PlayerKey number
---@param SoloPeakBattleCombatValue number
function UPeakCompetitionSoloComponent:SetSoloPeakBattleCombat(PlayerKey, SoloPeakBattleCombatValue) end

---@param PlayerKey number
---@return number
function UPeakCompetitionSoloComponent:GetSoloPeakBattleCombat(PlayerKey) end
