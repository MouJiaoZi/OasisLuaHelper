---@meta

---地图旋转模式
---@class EMapRotateMode
---@field RotateAsTargetPoint number
---@field Invalid number
EMapRotateMode = {}


---@class UMinimapWidget: UMapWidgetBase
---@field RotateAngleC number
---@field MapImageExtentC number
---@field MapWindowExtentC number
---@field PlayerInfoBPArrayC ULuaArrayHelper<UWidget>
---@field LevelToMapScaleC number
---@field LevelLandScapeCenterC FVector
---@field MapAdjustOffsetC FVector2D
---@field PlayerInfoRotWidgetArrayC ULuaArrayHelper<UWidget>
---@field ImageBlueCircleScale number
---@field SpeedLowerLimitListC ULuaArrayHelper<number>
---@field DynamicScaleFactorListC ULuaArrayHelper<number>
---@field ScaleElapsedLerpTimeC number
---@field ScaleTotalLerpTimeC number
---@field LastTargetMapDynamicScaleC number
---@field TargetMapDynamicScaleC number
---@field CurMapDynamicScaleC number
---@field CachePawnVelocityC number
---@field CurrentVelocityC number
---@field MapRealTimeInfo FMapRealTimeInfo
---@field CacheMapRealTimeInfo FMapRealTimeInfo
---@field OutOfRangeTeammateIndexArray ULuaArrayHelper<number>
---@field DynamicScaleSpeedTolerance number
---@field EnableTeamArrowIndicator boolean
---@field DegreeThresholdArray ULuaArrayHelper<number>
---@field BasicTeamArrowAngle number
---@field OutOfRangePostionOffset number
---@field AirDropIconID number
---@field AirDropMarkDistance number
---@field bOnlyGetVelocityFromPawn boolean
---@field PlayerIconInMapHalfExtent number
---@field LastArrowDegreeMap ULuaMapHelper<number, number>
---@field bIsDrawAirDropFlightPathBackup boolean
---@field AirDropIndex number
---@field bEnableDynamicScale boolean
---@field MapAdjustLocation FVector2D
---@field bCenteredAtTargetPoint boolean
---@field bLerpToTargetPoint boolean
---@field TargetLocation FVector
---@field LerpCurLocation FVector
---@field LerpSpeed number
---@field LerpTolerance number
---@field bCircleMiniMap boolean
---@field CircleMiniMapRadius number
---@field bRotateMiniMap boolean
---@field MapRotateMode EMapRotateMode
---@field bOrigPivotSaved boolean
---@field OrigPivot FVector2D
local UMinimapWidget = {}

---@param bEnable boolean
function UMinimapWidget:SetEnableDynamicScale(bEnable) end

function UMinimapWidget:MapResizeC() end

function UMinimapWidget:RepositionItemOnMapC() end

function UMinimapWidget:RepositionPlayerItemsInReplay() end

---@param Widget UWidget
---@param bIsInRange boolean
---@param RotDegree number
function UMinimapWidget:HandleTeammateOutOfRangeC(Widget, bIsInRange, RotDegree) end

function UMinimapWidget:ReCalMapInfoC() end

---@param DeltaTime number
function UMinimapWidget:TickDoubleCircleFeature(DeltaTime) end

---@param MiniMapBox UCanvasPanel
function UMinimapWidget:SetMiniMapBoxPanel(MiniMapBox) end

---@param MiniMapPanel UCanvasPanel
---@param ItemPanel UWidget
---@param OutCenter FVector2D
---@param OutItemLoc FVector2D
function UMinimapWidget:GetItemViewportLocation(MiniMapPanel, ItemPanel, OutCenter, OutItemLoc) end

function UMinimapWidget:TickCircleC() end

---@param DeltaTime number
function UMinimapWidget:AdjustMapPositionC(DeltaTime) end

function UMinimapWidget:UpdatePlayersLocAndRotC() end

---@param DeltaSec number
function UMinimapWidget:TickDynamicScaleC(DeltaSec) end

---@param Velocity number
---@return number
function UMinimapWidget:FindScaleFactorByVelocityC(Velocity) end

---@param DeltaSec number
function UMinimapWidget:LerpDynamicScaleC(DeltaSec) end

---@param NewScale number
function UMinimapWidget:ChangeDynamicScaleC(NewScale) end

function UMinimapWidget:ForceDynamicScaleDirty() end

function UMinimapWidget:UpdateAirIconC() end

function UMinimapWidget:UpdateLeftRouteLengthC() end

---@param DeltaTime number
function UMinimapWidget:AdjustMapPositionToTargetPoint(DeltaTime) end

---@param bRotate boolean
---@param InMapRotateMode EMapRotateMode
function UMinimapWidget:SetRotateMiniMap(bRotate, InMapRotateMode) end

---@param DeltaTime number
function UMinimapWidget:TickRotateMiniMap(DeltaTime) end

---@param Angle number
function UMinimapWidget:RotateMiniMapToAngle(Angle) end

---@param Angle number
function UMinimapWidget:RotatePlayerMarksToAngle(Angle) end
