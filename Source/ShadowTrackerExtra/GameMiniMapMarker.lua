---@meta

---@class EMiniMarkRange
---@field Self number
---@field Teamate number
---@field Everyone number
EMiniMarkRange = {}


---@class FMarkSyncDetail
---@field InstanceID number
---@field StateID number
---@field TemplateID number
---@field Coordination FVector
---@field ItemType ECommMiniMapItemType
---@field ChangeBit boolean
FMarkSyncDetail = {}


---@class FMarkObjectDetail
---@field IntanceIdList ULuaArrayHelper<number>
FMarkObjectDetail = {}


---@class UGameMiniMapMarker: UActorComponent
---@field MarkerObjectMapClearTime number
---@field MarkIntanceId number
---@field MarkerObjectMapping ULuaMapHelper<UObject, FMarkObjectDetail>
---@field MiniMapBridgeList ULuaArrayHelper<UGameMiniMapBridge>
---@field PendingSyncDataList ULuaArrayHelper<FMarkSyncDetail>
---@field PendingAddMarkList ULuaMapHelper<UCommMiniMapItemBase, FVector>
local UGameMiniMapMarker = {}

---@param MarkRange EMiniMarkRange
---@param SyncData FMarkSyncDetail
---@param PlayerState ASTExtraPlayerState
function UGameMiniMapMarker:AddMiniMapMark(MarkRange, SyncData, PlayerState) end

---@param MarkRange EMiniMarkRange
---@param SyncData FMarkSyncDetail
---@param PlayerState ASTExtraPlayerState
function UGameMiniMapMarker:UpdateMiniMapMark(MarkRange, SyncData, PlayerState) end

---@param WorldObject UObject
---@param TemplateId number
---@param Location FVector
---@param StateID number
---@param MarkIndex number
function UGameMiniMapMarker:AddMiniMapMarkGlobally(WorldObject, TemplateId, Location, StateID, MarkIndex) end

---@param InstanceId number
---@param TemplateId number
---@param Location FVector
---@param StateID number
function UGameMiniMapMarker:AddMiniMapMarkGloballyByID(InstanceId, TemplateId, Location, StateID) end

---@param WorldObject UObject
---@param Location FVector
---@param StateID number
---@param MarkIndex number
function UGameMiniMapMarker:UpdateMiniMapMarkGlobally(WorldObject, Location, StateID, MarkIndex) end

---@param InstanceId number
---@param Location FVector
---@param StateID number
function UGameMiniMapMarker:UpdateMiniMapMarkGloballyByID(InstanceId, Location, StateID) end

---@param WorldObject UObject
---@param PlayerState ASTExtraPlayerState
---@param TemplateId number
---@param Location FVector
---@param StateID number
---@param MarkIndex number
function UGameMiniMapMarker:AddMiniMapMarkTeammately(WorldObject, PlayerState, TemplateId, Location, StateID, MarkIndex) end

---@param PlayerState ASTExtraPlayerState
---@param InstanceId number
---@param TemplateId number
---@param Location FVector
---@param StateID number
function UGameMiniMapMarker:AddMiniMapMarkTeammatelyByID(PlayerState, InstanceId, TemplateId, Location, StateID) end

---@param WorldObject UObject
---@param PlayerState ASTExtraPlayerState
---@param Location FVector
---@param StateID number
---@param MarkIndex number
function UGameMiniMapMarker:UpdateMiniMapMarkTeammately(WorldObject, PlayerState, Location, StateID, MarkIndex) end

---@param PlayerState ASTExtraPlayerState
---@param InstanceId number
---@param Location FVector
---@param StateID number
function UGameMiniMapMarker:UpdateMiniMapMarkTeammatelyByID(PlayerState, InstanceId, Location, StateID) end

---@param WidgetItem UCommMiniMapItemBase
---@param Location FVector
function UGameMiniMapMarker:AddOrUpdateClientMiniMapMarkDirectly(WidgetItem, Location) end

---@param WidgetItem UCommMiniMapItemBase
function UGameMiniMapMarker:RemoveClientMiniMapMarkDirectly(WidgetItem) end

---@return number
function UGameMiniMapMarker:GetUniqueInstanceId() end

---@param SyncData FMarkSyncDetail
function UGameMiniMapMarker:RefreshMiniMapLocally(SyncData) end
