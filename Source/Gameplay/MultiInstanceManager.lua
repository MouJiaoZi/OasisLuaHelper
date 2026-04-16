---@meta

---@class FInstanceBaseInfo
---@field InstanceID number
---@field NumPlayers number
---@field NoPlayerTimer number
FInstanceBaseInfo = {}


---@class FInstancePlayerInfo
---@field InstanceID number
---@field UID number
---@field PlayerKey number
FInstancePlayerInfo = {}


---@class UInstanceBaseConfig: UObject
local UInstanceBaseConfig = {}


---@class UMultiInstanceManager: UGameModeBaseComponent
---@field OnInstanceAddedDelegate FOnInstanceAddedDelegate
---@field OnInstanceDataReceivedDelegate FOnInstanceDataReceivedDelegate
---@field OnInstanceRemovedDelegate FOnInstanceRemovedDelegate
---@field OnPlayerRegisteredDelegate FOnPlayerRegisteredDelegate
---@field OnPlayerUnregisteredDelegate FOnPlayerUnregisteredDelegate
---@field InstanceInfos ULuaArrayHelper<FInstanceBaseInfo>
---@field PlayerInfos ULuaArrayHelper<FInstancePlayerInfo>
local UMultiInstanceManager = {}

---@param InstanceID number
---@param InstanceInfo FInstanceBaseInfo
function UMultiInstanceManager:AddInstance(InstanceID, InstanceInfo) end

---@param InstanceID number
---@param Config UInstanceBaseConfig
function UMultiInstanceManager:ReceiveInstanceData(InstanceID, Config) end

---@param InstanceID number
---@param Reason string
function UMultiInstanceManager:RemoveInstance(InstanceID, Reason) end

---@param InstanceID number
---@param UID number
---@param PlayerInfo FInstancePlayerInfo
function UMultiInstanceManager:RegisterPlayer(InstanceID, UID, PlayerInfo) end

---@param InstanceID number
---@param UID number
function UMultiInstanceManager:UnregisterPlayer(InstanceID, UID) end

---@param InstanceID number
---@return boolean
function UMultiInstanceManager:HasInstance(InstanceID) end

---@param UID number
---@param InstanceID number
---@return boolean
function UMultiInstanceManager:HasPlayer(UID, InstanceID) end

---@param InstanceID number
---@return FInstanceBaseInfo
function UMultiInstanceManager:GetInstanceInfo(InstanceID) end

---@param UID number
---@return FInstancePlayerInfo
function UMultiInstanceManager:GetPlayerInfo(UID) end

function UMultiInstanceManager:GetInstanceInfos() end

function UMultiInstanceManager:GetPlayerInfos() end
