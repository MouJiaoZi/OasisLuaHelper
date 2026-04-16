---@meta

---@class FWeaponReconnectReplicateDataWrapper
---@field WeaponReconnectReplicateData FWeaponReconnectReplicateData
FWeaponReconnectReplicateDataWrapper = {}


---@class UCharacterWeaponManagerComponent: UWeaponManagerComponent
---@field AttachCheckInterval number
---@field AttachCheckDistance number
---@field RefreshUIIntervalAfterReconnect number
---@field RefreshUITimesAfterReconnect number
---@field ReconnectWeaponSlotList ULuaArrayHelper<ESurviveWeaponPropSlot>
---@field WeaponReconnectStuckAutoRecoverInterval number
---@field CurClientWeaponRecoverStuckOpTime number
---@field ReconnectHandle FTimerHandle
---@field CurUIRefreshTimes number
---@field CurUIRefreshInterval number
---@field bHasReconnect boolean
---@field PreWeaponReconnectReplicateDataWrapperList ULuaArrayHelper<FWeaponReconnectReplicateDataWrapper>
---@field WeaponReconnectReplicateDataWrapperList ULuaArrayHelper<FWeaponReconnectReplicateDataWrapper>
---@field DelayCheckWeaponTimerHandle FTimerHandle
---@field UpdateBagLevelItemIDList ULuaArrayHelper<FItemDefineID>
---@field CheckHasAnyGrenadeTimer number
---@field CurAttachCheckInterval number
---@field CurReconnectProcessTime number
---@field CurForceStopWeaponReconnectTime number
---@field ForceStopWeaponReconnectInterval number
---@field bHasHandledBackpackComponentInit boolean
---@field OnDisconnectToClientOnServerDelegate FOnDisconnectToClientOnServerDelegate
---@field OnReconnectToClientOnServerDelegate FOnReconnectToClientOnServerDelegate
local UCharacterWeaponManagerComponent = {}

---@return number
function UCharacterWeaponManagerComponent:GetBagLevel() end

function UCharacterWeaponManagerComponent:HandleBackpackComponentInit() end

function UCharacterWeaponManagerComponent:ClearAllInventoryData() end

function UCharacterWeaponManagerComponent:OnReconnectOnServer() end

function UCharacterWeaponManagerComponent:OnRecoverOnServer() end

function UCharacterWeaponManagerComponent:OnReconnectOnClient() end

---@param ClientSlotDataList ULuaArrayHelper<FWeaponSlotData>
---@return boolean
function UCharacterWeaponManagerComponent:CheckClientInventoryDataOrReconnectOnServer(ClientSlotDataList) end

function UCharacterWeaponManagerComponent:OnDisconnectToClientOnServer() end

---@param Door APUBGDoor
---@param DoorState number
function UCharacterWeaponManagerComponent:HandlePlayerOpenDoor(Door, DoorState) end

function UCharacterWeaponManagerComponent:LocalUpdateDataWhenBagChanged() end

function UCharacterWeaponManagerComponent:ForceUpdateWeaponPoseByBagLevelOnServer() end

---@param DefineID FItemDefineID
---@param OperationType EBattleItemOperationType
---@param Reason number
function UCharacterWeaponManagerComponent:UpdateDataWhenBagChangedOnServer(DefineID, OperationType, Reason) end

function UCharacterWeaponManagerComponent:UGCUpdateDataWhenBagChangedOnServer() end

function UCharacterWeaponManagerComponent:UpdateDataWhenFinishPickInitialItemOnServer() end

function UCharacterWeaponManagerComponent:UpdateDataWhenFinishDelayUseInitialItemOnServer() end

---@param ID FItemDefineID
function UCharacterWeaponManagerComponent:UpdateLogicWhenBackpackRemoveItemOnServer(ID) end

function UCharacterWeaponManagerComponent:DelayCheckWeaponPostItemHandleRemoved() end

---@param Data FWeaponReconnectReplicateDataWrapper
function UCharacterWeaponManagerComponent:DoRecoverWeapon(Data) end

---@param Slot ESurviveWeaponPropSlot
---@param OpIndex number
function UCharacterWeaponManagerComponent:BuildWeaponReconnectData(Slot, OpIndex) end

function UCharacterWeaponManagerComponent:ForceClearClientCreateWeaponCache() end

function UCharacterWeaponManagerComponent:ForceClearClientCreateWeaponCacheFinishToServer() end
