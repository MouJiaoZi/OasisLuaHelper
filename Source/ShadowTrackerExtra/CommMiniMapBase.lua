---@meta

---@class FMiniMapRuntimeItemDetail
---@field ItemType ECommMiniMapItemType
---@field WidgetItemList ULuaArrayHelper<UCommMiniMapItemBase>
---@field MapItemRealTimeInfoList ULuaArrayHelper<FMiniMapRealTimeInfo>
---@field WaitForTriggerRefresh boolean
---@field ItemTemplateId number
FMiniMapRuntimeItemDetail = {}


---@class UCommMiniMapBase: UUAEUserWidget
---@field CommMiniMapBridgeClass UCommMiniMapBridge
---@field MiniMapType ECommMiniMapType
---@field MapWindowHalfExtent number
---@field MapWindowExtent number
---@field SpeedLowerLimitList ULuaArrayHelper<number>
---@field DynamicScaleFactorList ULuaArrayHelper<number>
---@field ScaleTotalLerpTime number
---@field MaskCircleMaxUV number
---@field MaskCircleUVRadius FVector2D
---@field MiniMapInitSizeMinimum number
---@field ChangedDetectTolerance number
---@field MiniMapStandardPoint FMiniMapStandardPointInfo
---@field CurrentMapDynamicScale number
---@field LineMaxLength number
---@field LevelToMapScale number
---@field MapAdjustOffset FVector2D
---@field MapCanvasAlignOffset FVector2D
---@field MiniMapSize number
---@field MapStandardScale number
---@field MapMaxScale number
---@field MapMaxAddScale number
---@field MapInitializeSize number
---@field KeyActorRuntimeInfoCache FMiniMapRealTimeInfo
---@field KeyActorInfoCache FActorTypeItemInfo
---@field ForceRefreshData boolean
---@field NeedCenterActorInfoWidgets ULuaArrayHelper<UCommMiniMapItemBase>
---@field MiniMapRuntimeItems ULuaMapHelper<number, FMiniMapRuntimeItemDetail>
---@field CustomMiniMapItems ULuaMapHelper<number, FMiniMapRuntimeItemDetail>
---@field ActorTypeItemInfo FActorTypeItemInfo
---@field CircleTypeItemInfo FCircleTypeItemInfo
---@field LineTypeItemInfo FLineTypeItemInfo
---@field MapItemRealTimeInfoCache FMiniMapRealTimeInfo
---@field KeyActorSpeed number
---@field KeyActorSpeedCache number
---@field TargetMapDynamicScale number
---@field LastTargetMapDynamicScale number
---@field LastLevelToMapScale number
---@field ScaleElapsedLerpTime number
---@field MapAdjustOffsetCache FVector2D
---@field SameRefreshDataCache ULuaMapHelper<UFunction, number>
---@field ExternalCreatedItems ULuaMapHelper<UCommMiniMapItemBase, FVector>
local UCommMiniMapBase = {}

---@return number
function UCommMiniMapBase:GetCurrentMapScale() end

---@return number
function UCommMiniMapBase:GeRealMapScaleValue() end

---@param ScaleFactor number
---@param UpdatePivot boolean
---@param OperType ECommMiniMapScaleType
function UCommMiniMapBase:AdjustMiniMapSize(ScaleFactor, UpdatePivot, OperType) end

---@param MoveOffset FVector2D
---@param MapSize FVector2D
---@param MapAlignment FVector2D
---@return FVector2D
function UCommMiniMapBase:MoveMiniMap(MoveOffset, MapSize, MapAlignment) end

function UCommMiniMapBase:ProcessKeyActorLock() end

---@return number
function UCommMiniMapBase:GetMiniMapStandardScale() end

---@param NeedUpdatePivot boolean
function UCommMiniMapBase:OnMiniMapResize(NeedUpdatePivot) end

---@param AdjustSize FVector2D
---@param AdjustAlignment FVector2D
---@param UpdatePivot boolean
function UCommMiniMapBase:OnMiniMapResizeBlueprint(AdjustSize, AdjustAlignment, UpdatePivot) end

function UCommMiniMapBase:OnInitBlueprint() end

---@param ItemRef UCommMiniMapItemBase
function UCommMiniMapBase:OnInitBlueprintItem(ItemRef) end

---@param AdjustOffset FVector2D
---@param MapAlignOffset FVector2D
function UCommMiniMapBase:OnAdjustMapOffsetBlueprint(AdjustOffset, MapAlignOffset) end

function UCommMiniMapBase:OnProcessReconnectionBlueprint() end

---@param KeyActorInfo FActorTypeItemInfo
function UCommMiniMapBase:OnProcessKeyActorLockBlueprint(KeyActorInfo) end

---@param Velocity number
---@return number
function UCommMiniMapBase:GetScaleFactorByVelocity(Velocity) end

---@param MapSize number
---@return FVector2D
function UCommMiniMapBase:GetMiniMapAlignmentBound(MapSize) end

---@param UniqueID number
---@param InRealTimeInfo FMiniMapRealTimeInfo
function UCommMiniMapBase:PostRefreshEvent(UniqueID, InRealTimeInfo) end

---@param UniqueID number
---@param EventInfo FCustomEventInfo
function UCommMiniMapBase:PostUpdateEvent(UniqueID, EventInfo) end

---@param UniqueID number
---@param TemplateId number
---@param ItemType ECommMiniMapItemType
---@return boolean
function UCommMiniMapBase:AddMiniMapItem(UniqueID, TemplateId, ItemType) end

---@param UniqueID number
---@return boolean
function UCommMiniMapBase:RemoveMiniMapItem(UniqueID) end

---@param PointLocationInLevel FVector
---@return FVector2D
function UCommMiniMapBase:ConvertToMapLocation(PointLocationInLevel) end

function UCommMiniMapBase:ForceRefreshMiniMap() end

---@param NewItem UCommMiniMapItemBase
---@param Location FVector
function UCommMiniMapBase:AddOrUpdateExternalCreatedItem(NewItem, Location) end

---@param NeedRemovedItem UCommMiniMapItemBase
function UCommMiniMapBase:RemoveExternalCreatedItem(NeedRemovedItem) end

function UCommMiniMapBase:OnApplicationHasReactivated() end

function UCommMiniMapBase:OnApplicationHasReactivatedBlueprint() end
