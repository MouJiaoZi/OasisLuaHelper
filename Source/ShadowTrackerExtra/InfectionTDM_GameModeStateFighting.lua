---@meta

---生化团竞, feishen, 20200714
---@class FInfectionTDM_RoundConfig
---@field TotalRound number
---@field TotalTime number
---@field TacticalChoiceTime number
---@field ConfrontationTime number
---@field ConflictTime number
---@field DecisiveBattleTime number
---@field RoundSwitchTime number
---@field PlayerNumBecomeSuperman number
---@field DropAmmoTime number
---@field DropFortifierTime number
FInfectionTDM_RoundConfig = {}


---@class UInfectionTDM_GameModeStateFighting: UBRGameModeStateFighting_DeathMatch
---@field RoundConfig FInfectionTDM_RoundConfig
local UInfectionTDM_GameModeStateFighting = {}

function UInfectionTDM_GameModeStateFighting:LuaEnter() end

function UInfectionTDM_GameModeStateFighting:LuaExit() end

function UInfectionTDM_GameModeStateFighting:LuaExecute() end

---@param Stage number
---@param Time number
function UInfectionTDM_GameModeStateFighting:GM_SetStageTime(Stage, Time) end
