---@meta

---俯视大地图相关配置，目前在刺激战场PlayerController上设置
---@class FPerspectiveEntireMapConfig
---@field CameraFOVAngle number
---@field CameraTransform FTransform
---@field MapResource string
---@field MinScaleValue number
---@field MaxScaleValue number
FPerspectiveEntireMapConfig = {}


---大地图
---@class UEntireMapWidget: UMapWidgetBase
---@field RotateAngleC number
---@field MapImageExtentC number
---@field MapWindowExtentC number
---@field PlayerInfoBPArrayC ULuaArrayHelper<UWidget>
---@field LevelToMapScaleC number
---@field CorrectLevelToMapScaleC number
---@field LevelLandScapeCenterC FVector
---@field MapAdjustOffsetC FVector2D
---@field PlayerInfoRotWidgetArrayC ULuaArrayHelper<UWidget>
---@field ImageBlueCircleScale number
---@field bIsSpecialAirlineScaleC boolean
---@field MapRealTimeInfoC FMapRealTimeInfo
---@field CacheMapRealTimeInfoC FMapRealTimeInfo
---@field OutOfRangeTeammateIndexArray ULuaArrayHelper<number>
---@field bMapDynamicScaleDirty boolean
---@field bDrawOrHideAirDropPathDirty boolean
---@field SeasonTaskWidgetSoftPtr USeasonTaskWidget
---@field CampToolWidgetSoftPtr UCampToolWidget
---@field ActionWidgetSoftPtr UUAEUserWidget
---@field EscapeTaskWidgetSoftPtr UUAEUserWidget
---@field SeasonTaskUISettings FSeasonTaskUISettings
---@field bForceOpenAllExUI boolean
---@field bIsDrawAirDropFlightPathBackup boolean
---@field AirDropIndex number
---@field bPerspectiveMap boolean
---@field CameraTransform FTransform
---@field CameraFOVAngle number
---@field PerspectiveMapImageSize FVector2D
local UEntireMapWidget = {}

---@param Context FPaintContext
function UEntireMapWidget:CustomPaint(Context) end

function UEntireMapWidget:MapResizeC() end

function UEntireMapWidget:RepositionItemOnMapC() end

function UEntireMapWidget:ReCalMapInfoC() end

function UEntireMapWidget:UpdateMarkerDistanceC() end

function UEntireMapWidget:TickCircleC() end

function UEntireMapWidget:UpdatePlayersLocAndRotC() end

function UEntireMapWidget:UpdateAirIconC() end

function UEntireMapWidget:UpdateLeftRouteLengthC() end

function UEntireMapWidget:TellMarkUIsEnterEntireMap() end

---@param Context FPaintContext
---@param Tint FLinearColor
function UEntireMapWidget:DrawMovePathByTrackPoints(Context, Tint) end

function UEntireMapWidget:UpdateTrackPoints() end

function UEntireMapWidget:InitMapExtendManager() end

---@param inExtendType EMapExUIType
---@return boolean
function UEntireMapWidget:IsEnableExUI(inExtendType) end

---@return boolean
function UEntireMapWidget:IsEnableInRoomMode() end

function UEntireMapWidget:SetupExUIParentSlot() end

function UEntireMapWidget:OnInitializeExtendUI() end

---@return boolean
function UEntireMapWidget:IsTableDataEnableCampToolUI() end

---@return boolean
function UEntireMapWidget:IsEnableCampToolUI() end

---@param bShow boolean
function UEntireMapWidget:ChangeVerticalLineState(bShow) end

---@param bShow boolean
function UEntireMapWidget:ChangeAirLineState(bShow) end

---@param MapSize FVector2D
function UEntireMapWidget:ChangeEntireMapSize(MapSize) end

---@param bIsShow boolean
function UEntireMapWidget:SetVisibleButtonOnEntireMap(bIsShow) end

---@param fAlpha number
function UEntireMapWidget:SetEntireMapMaskAlpha(fAlpha) end

---@return FVector2D
function UEntireMapWidget:GetMapCurSizeCPP() end
