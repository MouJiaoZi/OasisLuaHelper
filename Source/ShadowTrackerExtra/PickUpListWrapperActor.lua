---@meta

---@class APickUpListWrapperActor: APickUpWrapperActor
---@field PickUpDataList ULuaArrayHelper<FPickUpItemData>
---@field OnPickUpDataListChanged FOnPickUpDataListChangedDelegate
---@field PickUpFailedCountCache number
---@field LastPickUpFailedTime number
---@field bUseDataListDoRepMode boolean
---@field bUseModifyCountRPC boolean
---@field bDestroyAfterEmpty boolean
---@field bAutoRecoverData boolean
---@field AutoRecoverDataInterval number
---@field OnBoxEmptyDelegate FOnBoxEmptyDelegate
---@field OnWrapperEmpty FOnWrapperEmptyDelegate
---@field CachePickUpDataList ULuaArrayHelper<FPickUpItemData>
---@field OnSomeonePickItem64 FOnSomeonePickItemDelegate64
---@field OnSomeOnePickItem64WithItemID FOnSomeonePickItemDelegate64WithItemID
---@field BoxType EPickUpBoxType
local APickUpListWrapperActor = {}

function APickUpListWrapperActor:GetDataList() end

---@param DataList ULuaArrayHelper<FPickUpItemData>
function APickUpListWrapperActor:SetDataListOnServer(DataList) end

---@param DataList ULuaArrayHelper<FPickUpItemData>
function APickUpListWrapperActor:AddDataListOnServer(DataList) end

---@param AdditionalData FBattleItemAdditionalData
---@param InSpecificID number
function APickUpListWrapperActor:AddAdditionalDataInPickUpDataList(AdditionalData, InSpecificID) end

---@param Index number
function APickUpListWrapperActor:RemoveAdditionalDataInFinalPickUpData(Index) end

---@return FPickUpWrapperItem
function APickUpListWrapperActor:GetFinalPickUpData() end

---@param Pawn AActor
---@param ItemInstanceID number
---@param PickUpCount number
function APickUpListWrapperActor:HandleModifyItemDataNotPickUpOnServer(Pawn, ItemInstanceID, PickUpCount) end

---@param ItemInstanceID number
function APickUpListWrapperActor:HandleRemoveItemDataOnServer(ItemInstanceID) end

---@param PickUpOwner AActor
---@param AdditionalParam number
---@param pickCount number
function APickUpListWrapperActor:DoPickUp(PickUpOwner, AdditionalParam, pickCount) end

---@param InstanceID number
---@param OutData FPickUpItemData
---@return boolean
function APickUpListWrapperActor:GetItemDataByInstanceID(InstanceID, OutData) end

function APickUpListWrapperActor:PostChangePickUpDataListOnServer() end

function APickUpListWrapperActor:ClearActorFlag() end

function APickUpListWrapperActor:FlushDataListRepOnServerExtra() end

---@param AdditionalParam number
---@return FItemDefineID
function APickUpListWrapperActor:GetWrapperDefineID(AdditionalParam) end

function APickUpListWrapperActor:BP_LifeSpanExpired() end

---@param NewValue boolean
function APickUpListWrapperActor:OnForceHideRareLevelEffectChange(NewValue) end

---@param NewValue boolean
function APickUpListWrapperActor:SetFastDistBasedNetRelevancy(NewValue) end

---@param OwnerTarget AActor
---@param AdditionalParam number
---@param pickCount number
---@return boolean
function APickUpListWrapperActor:FinishPickedUp(OwnerTarget, AdditionalParam, pickCount) end

---@param ItemInstanceID number
---@param RetCount number
function APickUpListWrapperActor:RPC_Broadcast_NotifyAllClientsModifyCount(ItemInstanceID, RetCount) end

---@param DataList ULuaArrayHelper<FPickUpItemData>
function APickUpListWrapperActor:RPC_Broadcast_ForceSyncAllData(DataList) end

function APickUpListWrapperActor:OnRep_PickUpDataList() end

---@param PlayerKey number
function APickUpListWrapperActor:TlogRecordPickUpPlayer(PlayerKey) end

function APickUpListWrapperActor:DoAutoRecoverDataOnServer() end
