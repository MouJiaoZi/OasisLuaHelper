---@meta

---@class URevivalModeComponent: UGameModeBaseComponent
---@field DynamicBattleRank ULuaMapHelper<number, number> @ģʽҶ̬
local URevivalModeComponent = {}

---@param PlayerState ASTExtraPlayerState
---@param bIsPlayerAlive boolean
function URevivalModeComponent:OnPlayerEscape(PlayerState, bIsPlayerAlive) end

function URevivalModeComponent:GetDynamicBattleRankInfoList() end

---@param PlayerKey number
function URevivalModeComponent:AddDynamicRank(PlayerKey) end

---@param PlayerKey number
function URevivalModeComponent:AddDynamicRankWinner(PlayerKey) end

---@param PlayerKey number
function URevivalModeComponent:RemoveDynamicRank(PlayerKey) end

---@param TeamID number
---@return boolean
function URevivalModeComponent:IsAllTeamInRevival(TeamID) end

---@param TeamID number
---@return boolean
function URevivalModeComponent:IsAllTeamWithoutRevivalSign(TeamID) end

---@param TeamID number
---@return boolean
function URevivalModeComponent:IsAllTeamWithoutRevivalState(TeamID) end
