---@meta

---@class EBotChannelState
---@field None number
---@field Open number
---@field Running number
---@field Close number
EBotChannelState = {}


---@class EBotChannelCloseCode
---@field Normal number
---@field StateTimeout number
---@field ChangeMLAIFail number
---@field DepositTimeout number
---@field DepositFail number
---@field InvalidChannel number
EBotChannelCloseCode = {}


---@class UBotChannel: UBotBaseChannel
---@field Controller AController
---@field BotModeComponent UBotModeComponent
---@field BotConnection UBotConnection
---@field PlayerKey number
---@field ChannelTimeout number
---@field LastSendTime number
---@field LastSuccessTime number
---@field ChannelState EBotChannelState
---@field CloseCode EBotChannelCloseCode
local UBotChannel = {}

---@param InBotConnection UBotConnection
---@param InController AController
---@return boolean
function UBotChannel:Init(InBotConnection, InController) end

---@param InBotConnection UBotConnection
---@param InController AController
---@param InPlayerKey number
---@return boolean
function UBotChannel:InitWithPlayerKey(InBotConnection, InController, InPlayerKey) end

---@param DeltaTime number
function UBotChannel:Tick(DeltaTime) end

---@param Code EBotChannelCloseCode
---@return boolean
function UBotChannel:Close(Code) end

---@param Now number
function UBotChannel:UpdateSendTime(Now) end

---@param Now number
function UBotChannel:UpdateSuccessTime(Now) end

---@return boolean
function UBotChannel:IsAI() end

---@param bForceRunning boolean
---@return boolean
function UBotChannel:SetRunning(bForceRunning) end

---@return boolean
function UBotChannel:StateRequest() end

---@return boolean
function UBotChannel:AllocRequest() end

function UBotChannel:DestroyRequest() end

function UBotChannel:OnPersistentErrors() end
