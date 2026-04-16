---@meta

---小地图显示项接口
---@class UCommMiniMapItemBase: UUAEUserWidget
---@field LayerType ECommMiniMapItemLayerType
---@field IsNeedPostCenterActorInfo boolean
---@field IsScaleSelfAdaptive boolean
---@field CacheCoordination FVector
local UCommMiniMapItemBase = {}

---@param InitInfo FWidgetItemInitInfo
function UCommMiniMapItemBase:InitializeWidgetItem(InitInfo) end

---@param ParentSlot UCanvasPanelSlot
---@param InitMapSize FVector2D
function UCommMiniMapItemBase:InitializeCanvasSetting(ParentSlot, InitMapSize) end

---@param RefreshType ECommMiniMapRefreshType
---@param RealTimeInfo FActorTypeItemInfo
function UCommMiniMapItemBase:UpdateWidgetItemActor(RefreshType, RealTimeInfo) end

---@param RefreshType ECommMiniMapRefreshType
---@param RealTimeInfo FCircleTypeItemInfo
function UCommMiniMapItemBase:UpdateWidgetItemCircle(RefreshType, RealTimeInfo) end

---@param RefreshType ECommMiniMapRefreshType
---@param RealTimeInfo FLineTypeItemInfo
function UCommMiniMapItemBase:UpdateWidgetItemLine(RefreshType, RealTimeInfo) end

---@param AdjustSize FVector2D
---@param ScaleFactor number
---@param LastCoordination FVector
function UCommMiniMapItemBase:OnMiniMapResize(AdjustSize, ScaleFactor, LastCoordination) end

---@param EventInfo FCustomEventInfo
function UCommMiniMapItemBase:OnUpdateEventInfo(EventInfo) end

---@param RealTimeInfo FActorTypeItemInfo
function UCommMiniMapItemBase:OnUpdateMiniMapCenterActorInfo(RealTimeInfo) end

---@param LocationInLevel FVector
---@return FVector2D
function UCommMiniMapItemBase:ConvertToMapLocation(LocationInLevel) end

---@param Coord FVector
function UCommMiniMapItemBase:SetOriginalCoordination(Coord) end

---@return FVector
function UCommMiniMapItemBase:GetLastOriginalCoordination() end

---@return ECommMiniMapType
function UCommMiniMapItemBase:GetOwnerMiniMapType() end

---@return number
function UCommMiniMapItemBase:GetOwnerMiniMapSize() end

---@return number
function UCommMiniMapItemBase:GetOwnerMiniMapScale() end
