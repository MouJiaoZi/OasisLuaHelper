---@meta

---@class FDynamicBlockActor
FDynamicBlockActor = {}


---@class UDynamicSpawnComponent: UGameModeBaseComponent
---@field OnIDIPTriggerEnableEvent FOnIDIPEnableTriggersEvent
local UDynamicSpawnComponent = {}

---Called when component is registered and add callback functions to delegates
function UDynamicSpawnComponent:InitDynamicTriggers() end

function UDynamicSpawnComponent:InitDynamicBlocks() end

function UDynamicSpawnComponent:DestroyUnloadableDynamicBlocks() end

---@return boolean
function UDynamicSpawnComponent:CanInitDynamicBlocks() end

---@return boolean
function UDynamicSpawnComponent:HasAnyDynamicBlockActor() end

function UDynamicSpawnComponent:SpawnLevelDirector() end

function UDynamicSpawnComponent:InitAIDataAsset() end

function UDynamicSpawnComponent:InitGenerator() end

function UDynamicSpawnComponent:InitPickupBoxConfigDataAsset() end

function UDynamicSpawnComponent:ForceExitAndDestroyBornLandVehicles() end

---@param PlayerKey number
function UDynamicSpawnComponent:InitUDPMessageSender(PlayerKey) end

---@param InStr string
function UDynamicSpawnComponent:AddUDPMessage(InStr) end

function UDynamicSpawnComponent:GetAllActiveTriggersName() end

---@return string
function UDynamicSpawnComponent:SaveDSGameInfosToIni() end
