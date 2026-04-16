---@meta

---生化团竞, feishen, 20200714
---@class FHideAndSeek_RoundConfig
---@field TotalRound number
---@field SelectCampTime number
---@field HidingTime number
---@field HuntingTime number
---@field RoundSwitchTime number
FHideAndSeek_RoundConfig = {}


---@class UHideAndSeek_GameModeStateFighting: UBRGameModeStateFighting_DeathMatch
---@field RoundConfig FHideAndSeek_RoundConfig
local UHideAndSeek_GameModeStateFighting = {}

function UHideAndSeek_GameModeStateFighting:LuaEnter() end

function UHideAndSeek_GameModeStateFighting:LuaExit() end

function UHideAndSeek_GameModeStateFighting:LuaExecute() end

---@param Stage number
---@param Time number
function UHideAndSeek_GameModeStateFighting:GM_SetStageTime(Stage, Time) end
