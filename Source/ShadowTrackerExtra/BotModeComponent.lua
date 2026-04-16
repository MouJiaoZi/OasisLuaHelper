---@meta

---@class FCachedState
FCachedState = {}


---@class UBotModeComponent: UBotModeBaseComponent
---@field StateSyncIntervalOnline number
---@field StateSyncIntervalTraining number
---@field BotConnections ULuaArrayHelper<UBotConnection>
---@field ServiceProviders string
---@field CachedStatePerFrame ULuaMapHelper<number, FCachedState>
---@field MLAIModeId number
---@field StateSyncInterval number
---@field bTrainingMode boolean
---@field TrainingModePerFrameLimitMin number
---@field TimerTickRate number
local UBotModeComponent = {}

---@param BotConnection UBotConnection
---@return boolean
function UBotModeComponent:AddBotConnection(BotConnection) end

---@param PlayerKey number
---@return boolean
function UBotModeComponent:IsStateCached(PlayerKey) end

function UBotModeComponent:GetCachedList() end

function UBotModeComponent:OnGameModeInitFinished() end

---@return string
function UBotModeComponent:GetMapName() end

---@param PlayerKey number
function UBotModeComponent:ForceSyncAIState(PlayerKey) end
