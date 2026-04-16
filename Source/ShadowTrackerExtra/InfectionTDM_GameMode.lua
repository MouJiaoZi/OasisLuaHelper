---@meta

---生化团竞, feishen, 20200714
---@class AInfectionTDM_GameMode: ABRGameModeTeam_DeathMatch
---@field bSelfRadialDamageEnabled boolean
---@field bSendEscapeBattleResultWhenPrePlayerExit boolean
local AInfectionTDM_GameMode = {}

---@param NewPlayer AController
function AInfectionTDM_GameMode:RestartPlayer(NewPlayer) end

---@param PlayerKey number
---@param PlayerType string
function AInfectionTDM_GameMode:NotifyPrePlayerExit(PlayerKey, PlayerType) end

---@param Player APlayerController
function AInfectionTDM_GameMode:EnvolveToAdvancedInfected(Player) end
