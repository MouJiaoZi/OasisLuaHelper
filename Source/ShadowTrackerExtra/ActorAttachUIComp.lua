---@meta

---@class UActorAttachUIComp: UActorComponent, IObjectPoolInterface
---@field UIClass UActorPositionWidget
---@field BShowMiniMapUI boolean
---@field MiniMapUIIcon number
---@field RangeType EMarkDispatchRange
---@field SquredDistanceOfSwitchingVisibility number
---@field AlertID number
local UActorAttachUIComp = {}

---@param InActorPositionWidgetClass UActorPositionWidget
function UActorAttachUIComp:SetActorPositionWidgetClass(InActorPositionWidgetClass) end
