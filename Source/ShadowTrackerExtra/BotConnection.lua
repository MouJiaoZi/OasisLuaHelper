---@meta

---@class EBotConnectionState
---@field None number
---@field Open number
---@field Running number
---@field Close number
EBotConnectionState = {}


---@class UBotConnection: UBotBaseConnection
---@field BotChannels ULuaArrayHelper<UBotChannel>
---@field BotModeComponent UBotModeComponent
---@field BotType string
---@field ConnectionState EBotConnectionState
local UBotConnection = {}

---@param InBotModeComponent UBotModeComponent
---@param InBotType string
function UBotConnection:Init(InBotModeComponent, InBotType) end

---@param DeltaTime number
function UBotConnection:Tick(DeltaTime) end

---@return boolean
function UBotConnection:Close() end

---@param BotChannel UBotChannel
---@return boolean
function UBotConnection:AddChannel(BotChannel) end

---@param PlayerKey number
---@return boolean
function UBotConnection:RemoveChannel(PlayerKey) end

---@return boolean
function UBotConnection:SetRunning() end

function UBotConnection:StartRequest() end

function UBotConnection:StopRequest() end

---@return number
function UBotConnection:GetBotChannelStat() end
