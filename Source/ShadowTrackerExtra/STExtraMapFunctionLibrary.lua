---@meta

---@class EMapType
---@field ENTIREMAP number
---@field MINIMAP number
EMapType = {}


---@class EPlayerOperation
---@field None number
---@field Parachute number
---@field Shooting number
---@field Driving number
EPlayerOperation = {}


---@class FCircleInfoInMap
---@field WhiteCircleCenter FVector2D
---@field BlueCircleCenter FVector2D
---@field WhiteCircleRadius number
---@field BlueCircleRadius number
FCircleInfoInMap = {}


---@class USTExtraMapFunctionLibrary: UBlueprintFunctionLibrary
local USTExtraMapFunctionLibrary = {}

---@param WorldContextObject UObject
---@return number
function USTExtraMapFunctionLibrary:GetLevelLandscapeBounds(WorldContextObject) end

---@param WorldContextObject UObject
---@return number
function USTExtraMapFunctionLibrary:GetLevelLandscapeBoundsWithoutFakeTile(WorldContextObject) end

---@param WorldContextObject UObject
---@return FVector2D
function USTExtraMapFunctionLibrary:GetLandscapeMidPoint(WorldContextObject) end

---@param PointLocationInLevel FVector
---@param LevelLandScapeCenter FVector
---@param LevelToMapScale number
---@return FVector
function USTExtraMapFunctionLibrary:MapCenterToPointVector(PointLocationInLevel, LevelLandScapeCenter, LevelToMapScale) end

---@param PointLocInLevel FVector2D
---@param LevelLandScapeCenter FVector
---@param LevelToMapScale number
---@return FVector2D
function USTExtraMapFunctionLibrary:MapCenterToPointVector2D(PointLocInLevel, LevelLandScapeCenter, LevelToMapScale) end

---@param MapCanvas UCanvasPanelSlot
---@param MapCenterToPlayer FVector2D
---@param RotateAngle number
---@param MiniMapWindowHalfSize number
---@param MapImageSize number
---@return FVector2D
function USTExtraMapFunctionLibrary:AdjustMapPosition(MapCanvas, MapCenterToPlayer, RotateAngle, MiniMapWindowHalfSize, MapImageSize) end

---@param PC ASTExtraPlayerController
---@param PlayerMarkerPanel UPanelWidget
---@param PlayerCoord FVector2D
---@param PlayerOperation EPlayerOperation
---@param RotateAngle number
---@param selfArrow UPanelWidget
---@param isEntireMap boolean
function USTExtraMapFunctionLibrary:DrawPlayerMarker(PC, PlayerMarkerPanel, PlayerCoord, PlayerOperation, RotateAngle, selfArrow, isEntireMap) end

---@param PC ASTExtraPlayerController
---@param PlayerMarkerPanelSlot UGridSlot
---@param PlayerCoord FVector2D
---@param PlayerMarkerImagePanel UPanelWidget
---@param PlayerOperation EPlayerOperation
---@param RotateAngle number
function USTExtraMapFunctionLibrary:DrawPlayerMarkerInGrid(PC, PlayerMarkerPanelSlot, PlayerCoord, PlayerMarkerImagePanel, PlayerOperation, RotateAngle) end

---@param WhiteCircleRadius number
---@param PlayerCoord FVector2D
---@param WhiteCircleCoord FVector2D
---@return boolean
function USTExtraMapFunctionLibrary:IsNeedDrawGuideLine(WhiteCircleRadius, PlayerCoord, WhiteCircleCoord) end

---@param InContext FPaintContext
---@param DashSize number
---@param DashColor FLinearColor
---@param MapWindowExtent number
---@param MapImageExtent number
---@param WhiteCircleCenter FVector2D
---@param PlayerCoord FVector2D
---@param MapType EMapType
---@param LineThickness number
---@param bAntiAlias boolean
---@param bCheckPlayerIconInMinimapCenter boolean
---@param PlayerToMapCenter FVector2D
function USTExtraMapFunctionLibrary:DrawGuideLine(InContext, DashSize, DashColor, MapWindowExtent, MapImageExtent, WhiteCircleCenter, PlayerCoord, MapType, LineThickness, bAntiAlias, bCheckPlayerIconInMinimapCenter, PlayerToMapCenter) end

---@param InContext FPaintContext
---@param CircleCenter FVector2D
---@param CircleColor FLinearColor
---@param CircleRadius number
---@param MapWindowExtent number
---@param PlayerCoord FVector2D
---@param MapType EMapType
---@param bAntiAlias boolean
function USTExtraMapFunctionLibrary:DrawCircle(InContext, CircleCenter, CircleColor, CircleRadius, MapWindowExtent, PlayerCoord, MapType, bAntiAlias) end

---@param CirclePositionInWorld FVector
---@param LevelLandScapeCenter FVector
---@param LevelToMapScale number
---@param RotateAngle number
---@return FVector2D
function USTExtraMapFunctionLibrary:GetCircleMapLocation(CirclePositionInWorld, LevelLandScapeCenter, LevelToMapScale, RotateAngle) end

---根据输入的PlayerController获取需要在地图上显示的玩家世界坐标，考虑玩家在飞机上/在载具上/在观战等通用情况 目前内部逻辑照搬自 FMapRealTimeInfo::ImportMapRealTimeInfo 中获得玩家位置
---@param PC ASTExtraPlayerController
---@param OutLocation FVector
---@return boolean
function USTExtraMapFunctionLibrary:GetPlayerLocation(PC, OutLocation) end

---对于带有一定角度的俯视地图，将世界坐标转换为地图坐标
---@param WorldLocation FVector
---@param CameraTransform FTransform
---@param CameraFOVAngle number
---@param MapImageSize FVector2D
---@return FVector2D
function USTExtraMapFunctionLibrary:ProjectPerspectiveMapLocation(WorldLocation, CameraTransform, CameraFOVAngle, MapImageSize) end

---对于带有一定角度的俯视地图，将地图坐标转换为世界坐标
---@param MapLocation FVector2D
---@param CameraTransform FTransform
---@param CameraFOVAngle number
---@param OutWorldOrigin FVector
---@param OutWorldDirection FVector
---@param NearClipPlane number
---@param FarClipPlane number
function USTExtraMapFunctionLibrary:DeprojectPerspectiveMapLocation(MapLocation, CameraTransform, CameraFOVAngle, OutWorldOrigin, OutWorldDirection, NearClipPlane, FarClipPlane) end

---对于带有一定角度的俯视地图，计算玩家与地图标记间的距离，不考虑Z轴
---@param PlayerController ASTExtraPlayerController
---@param MarkAlig FVector2D
---@param CameraTransform FTransform
---@param CameraFOVAngle number
---@param NearClipPlane number
---@param FarClipPlane number
---@return number
function USTExtraMapFunctionLibrary:CalcMarkDistForPerspMap(PlayerController, MarkAlig, CameraTransform, CameraFOVAngle, NearClipPlane, FarClipPlane) end

---@param PosInWorld FVector2D
---@param LevelLandScapeCenter FVector
---@param LevelToMapScale number
---@param RotateAngle number
---@return FVector2D
function USTExtraMapFunctionLibrary:GetEntireMapPos(PosInWorld, LevelLandScapeCenter, LevelToMapScale, RotateAngle) end

---@param PositionInWorld FVector
---@param LevelLandScapeCenter FVector
---@param LevelToMapScale number
---@param RotateAngle number
---@param MapType EMapType
---@param MapWindowExtent number
---@param PlayerCoord FVector2D
---@return FVector2D
function USTExtraMapFunctionLibrary:GetMapLocation(PositionInWorld, LevelLandScapeCenter, LevelToMapScale, RotateAngle, MapType, MapWindowExtent, PlayerCoord) end

---@param PC APlayerController
---@param PositionInWorld FVector
---@return number
function USTExtraMapFunctionLibrary:GetDistanceToPlayer(PC, PositionInWorld) end

---@param InContext FPaintContext
---@param DashSize number
---@param DashColor FLinearColor
---@param MapWindowExtent number
---@param MapImageExtent number
---@param MapCenterToPlayer FVector
---@param EndCoord FVector2D
---@param PlayerCoord FVector2D
---@param RouteVelocity FVector2D
---@param LineThickness number
---@param bAntiAlias boolean
function USTExtraMapFunctionLibrary:DrawAirplaneRouteInMiniMap(InContext, DashSize, DashColor, MapWindowExtent, MapImageExtent, MapCenterToPlayer, EndCoord, PlayerCoord, RouteVelocity, LineThickness, bAntiAlias) end

---@param InContext FPaintContext
---@param DashSize number
---@param DashColor FLinearColor
---@param MapWindowExtent number
---@param MapImageExtent number
---@param MiniMapWindowExtent number
---@param MiniMapImageExtent number
---@param MapCenterToPlayer FVector
---@param StartCoord FVector2D
---@param EndCoord FVector2D
---@param LineThickness number
---@param bAntiAlias boolean
function USTExtraMapFunctionLibrary:DrawAirplaneRouteInEntiremap(InContext, DashSize, DashColor, MapWindowExtent, MapImageExtent, MiniMapWindowExtent, MiniMapImageExtent, MapCenterToPlayer, StartCoord, EndCoord, LineThickness, bAntiAlias) end

---@param PC ASTExtraPlayerController
---@param GS ASTExtraGameStateBase
---@param LevelLandScapeCenter FVector
---@param LevelToMapScale number
---@param RotateAngle number
---@param CacheMapInfo FMapRealTimeInfo
---@param isEntireMap boolean
---@param bCalPlaneRouteData boolean
---@return FMapRealTimeInfo
function USTExtraMapFunctionLibrary:GetMapRealTimeInfo(PC, GS, LevelLandScapeCenter, LevelToMapScale, RotateAngle, CacheMapInfo, isEntireMap, bCalPlaneRouteData) end

---@param InMiniMapPath string
function USTExtraMapFunctionLibrary:SetCurMiniMapPath(InMiniMapPath) end

---@return string
function USTExtraMapFunctionLibrary:GetCurMiniMapPath() end

---修改大小地图的图片，以及对应配置
---@param PC ASTExtraPlayerController
---@param MapPath string
---@param CenterPos FVector
---@param MapSizeAndTileSize number
---@param MapScale number
---@param bDontClearTeammateMarks boolean
---@return boolean
function USTExtraMapFunctionLibrary:ChangeMapResource(PC, MapPath, CenterPos, MapSizeAndTileSize, MapScale, bDontClearTeammateMarks) end

---恢复模式的默认地图
---@param WorldContextObject UObject
---@return boolean
function USTExtraMapFunctionLibrary:RestoreDefaultMap(WorldContextObject) end

---@param InContext FPaintContext
---@param PlayerPosList ULuaArrayHelper<FVector>
---@param MapSize FVector2D
---@param LevelLandScapeCenter FVector
---@param LevelToMapScale number
---@param LineColor FLinearColor
---@param StartIndex number
---@param MapType EMapType
---@param PlayerCoord FVector2D
---@param LayerOffset number
---@param FixedThickness number
function USTExtraMapFunctionLibrary:DrawPlayerItineraryInMap(InContext, PlayerPosList, MapSize, LevelLandScapeCenter, LevelToMapScale, LineColor, StartIndex, MapType, PlayerCoord, LayerOffset, FixedThickness) end

---@param InContext FPaintContext
---@param CircleCenter FVector2D
---@param CircleColor FLinearColor
---@param CircleRadius number
---@param MapWindowExtent number
---@param PlayerCoord FVector2D
---@param MapType EMapType
---@param Interval number
---@param bAntiAlias boolean
function USTExtraMapFunctionLibrary:DrawCircleDottedLine(InContext, CircleCenter, CircleColor, CircleRadius, MapWindowExtent, PlayerCoord, MapType, Interval, bAntiAlias) end

---@param InContext FPaintContext
---@param CircleCenter FVector2D
---@param CircleColor FLinearColor
---@param CircleRadius number
---@param Interval number
---@param bAntiAlias boolean
---@param Thickness number
function USTExtraMapFunctionLibrary:DrawCircleCustom(InContext, CircleCenter, CircleColor, CircleRadius, Interval, bAntiAlias, Thickness) end

---@param InputVector FVector2D
---@param RotateAngle number
---@return FVector2D
function USTExtraMapFunctionLibrary:GetRotatedVector2D(InputVector, RotateAngle) end

---@param TeamMateStateArray ULuaArrayHelper<ASTExtraPlayerState>
---@param TeamMateInfoGridArray ULuaArrayHelper<UPanelWidget>
---@param LevelLandscapeCenter FVector
---@param CorrectMapScale number
---@param RotateAngle number
---@param myPS ASTExtraPlayerState
---@param ArrowImageArray ULuaArrayHelper<UImage>
---@param MapAdjustOffset FVector2D
---@param MapWindowHalfExtent number
---@param OutOfRangeTeammateIndex ULuaArrayHelper<number>
---@param isEntireMap boolean
function USTExtraMapFunctionLibrary:UpdateTeamMateLocAndRot(TeamMateStateArray, TeamMateInfoGridArray, LevelLandscapeCenter, CorrectMapScale, RotateAngle, myPS, ArrowImageArray, MapAdjustOffset, MapWindowHalfExtent, OutOfRangeTeammateIndex, isEntireMap) end

---@param TeamMateStateArray ULuaArrayHelper<ASTExtraPlayerState>
---@param PlayerInfoWidgetArray ULuaArrayHelper<UWidget>
---@param LevelLandscapeCenter FVector
---@param CorrectMapScale number
---@param RotateAngle number
---@param myPS ASTExtraPlayerState
---@param PlayerRotWidgetArray ULuaArrayHelper<UWidget>
---@param MapAdjustOffset FVector2D
---@param MapWindowHalfExtent number
---@param OutOfRangeTeammateIndex ULuaArrayHelper<number>
---@param isEntireMap boolean
---@param PlayerWidgetLocList ULuaArrayHelper<FVector2D>
---@param UAVInfoWidgetArray ULuaArrayHelper<UMapVehicleIconWidget>
---@param UAVRotWidgetArray ULuaArrayHelper<UWidget>
---@param bCircleMiniMap boolean
---@param bPerpspectiveMap boolean
---@param CameraTransform FTransform
---@param CameraFOVAngle number
---@param MapImageSize FVector2D
function USTExtraMapFunctionLibrary:UpdatePlayersLocAndRot(TeamMateStateArray, PlayerInfoWidgetArray, LevelLandscapeCenter, CorrectMapScale, RotateAngle, myPS, PlayerRotWidgetArray, MapAdjustOffset, MapWindowHalfExtent, OutOfRangeTeammateIndex, isEntireMap, PlayerWidgetLocList, UAVInfoWidgetArray, UAVRotWidgetArray, bCircleMiniMap, bPerpspectiveMap, CameraTransform, CameraFOVAngle, MapImageSize) end

---@param PlayerInfoWidgetArray ULuaArrayHelper<UWidget>
---@param LevelLandscapeCenter FVector
---@param CorrectMapScale number
---@param RotateAngle number
---@param myPS ASTExtraPlayerState
---@param PlayerRotWidgetArray ULuaArrayHelper<UWidget>
---@param MapAdjustOffset FVector2D
---@param MapWindowHalfExtent number
---@param OutOfRangeTeammateIndex ULuaArrayHelper<number>
---@param isEntireMap boolean
---@param PlayerWidgetLocList ULuaArrayHelper<FVector2D>
function USTExtraMapFunctionLibrary:UpdatePlayersLocAndRotByData(PlayerInfoWidgetArray, LevelLandscapeCenter, CorrectMapScale, RotateAngle, myPS, PlayerRotWidgetArray, MapAdjustOffset, MapWindowHalfExtent, OutOfRangeTeammateIndex, isEntireMap, PlayerWidgetLocList) end

---@param myPS ASTExtraPlayerState
---@param rot FRotator
function USTExtraMapFunctionLibrary:CheckVehicleRotException(myPS, rot) end

---@param PC APlayerController
---@param TargetPoint FVector
---@return number
function USTExtraMapFunctionLibrary:CalPlayerRotationToPointDelYaw(PC, TargetPoint) end

---@param StartPos FVector
---@param EndPos FVector
---@param MakerInMap FVector
---@return FVector
function USTExtraMapFunctionLibrary:CalcVerticalLinePointPos(StartPos, EndPos, MakerInMap) end

---@param PC APlayerController
---@param LevelLandScapeExtent number
---@param MarkerInMap FVector2D
---@param LevelLandscapeCenter FVector
---@param RotateAngle number
---@param bUseRotateAngle boolean
---@return number
function USTExtraMapFunctionLibrary:CalPlayerToMarkerDist(PC, LevelLandScapeExtent, MarkerInMap, LevelLandscapeCenter, RotateAngle, bUseRotateAngle) end

---@return number
function USTExtraMapFunctionLibrary:GetAlivePlayerNumber() end

---@param isbig boolean
function USTExtraMapFunctionLibrary:GameThreadSetBigCore(isbig) end

---@param isbig boolean
function USTExtraMapFunctionLibrary:RnederThreadSetBigCore(isbig) end

---@param Quality number
function USTExtraMapFunctionLibrary:TApmSetQuality(Quality) end

---@param PC APlayerController
---@param GS ASTExtraGameStateBase
---@return boolean
function USTExtraMapFunctionLibrary:IsPlayerOutSafeZone(PC, GS) end

---@param PC APlayerController
---@param MarkerAlign FVector
---@param LevelLandscapeExtent number
---@param LandscapeCenter FVector
---@param DelYaw number
---@param Dist number
function USTExtraMapFunctionLibrary:CalPlayerToMarkerDelYawAndDist(PC, MarkerAlign, LevelLandscapeExtent, LandscapeCenter, DelYaw, Dist) end

---@param TargetPoint FVector
---@param ContextObject UObject
---@return FVector2D
function USTExtraMapFunctionLibrary:FindPointInWhichLandscape(TargetPoint, ContextObject) end

---@param LeftRouteSlot UCanvasPanelSlot
---@param PassedRouteSlot UCanvasPanelSlot
---@param FlyingProcess number
---@param RouteTotalLengthInMap number
---@param MapScale number
---@param TopOffset number
---@param BottomOffset number
---@param bIsWar boolean
function USTExtraMapFunctionLibrary:SetLeftRouteLength(LeftRouteSlot, PassedRouteSlot, FlyingProcess, RouteTotalLengthInMap, MapScale, TopOffset, BottomOffset, bIsWar) end

---@param LevelLoc FVector
---@param LevelLandscapeCenter FVector
---@param LevelToMapScale number
---@param RotateAngle number
---@return FVector2D
function USTExtraMapFunctionLibrary:ChgLevelLocToMapOffset(LevelLoc, LevelLandscapeCenter, LevelToMapScale, RotateAngle) end

---@param LevelLoc FVector
---@param LevelLandscapeCenter FVector
---@param LevelToMapScale number
---@param RotateAngle number
---@param PlayerController APlayerController
---@param MiniMapWindowExtent number
---@param MapAdjustOffset FVector2D
---@param Offset FVector2D
---@return boolean
function USTExtraMapFunctionLibrary:ChgLevelLocToMapOffsetDockInMiniMap(LevelLoc, LevelLandscapeCenter, LevelToMapScale, RotateAngle, PlayerController, MiniMapWindowExtent, MapAdjustOffset, Offset) end

---@param Target APawn
---@param LevelLandscapeCenter FVector
---@param LevelToMapScale number
---@param RotatedAngle number
---@param ImageExtent number
---@param MapWindowExtent number
---@return FVector2D
function USTExtraMapFunctionLibrary:CalMapTranslation(Target, LevelLandscapeCenter, LevelToMapScale, RotatedAngle, ImageExtent, MapWindowExtent) end

---@param TargetLoc FVector
---@param LevelLandScapeCenter FVector
---@param LevelToMapScale number
---@param RotatedAngle number
---@return FVector2D
function USTExtraMapFunctionLibrary:CalMapItemOffset(TargetLoc, LevelLandScapeCenter, LevelToMapScale, RotatedAngle) end

---@param InContext FPaintContext
---@param DashSize number
---@param DashColor FLinearColor
---@param Start FVector
---@param End FVector
---@param MapImageExtent number
---@param LineThickness number
---@param bAntiAlias boolean
function USTExtraMapFunctionLibrary:DrawDash(InContext, DashSize, DashColor, Start, End, MapImageExtent, LineThickness, bAntiAlias) end

function USTExtraMapFunctionLibrary:GetCirclePointsLineList() end

---@param World UWorld
---@param InLocation FVector
---@param InCollisionBox FVector
---@param HoverHeight number
---@param FlyHeight number
---@param ValidLocationActorTag string
---@return boolean
function USTExtraMapFunctionLibrary:ValidateLandingLocation(World, InLocation, InCollisionBox, HoverHeight, FlyHeight, ValidLocationActorTag) end

---@param WorldContext UObject
---@param WorldCorners ULuaArrayHelper<FVector>
---@param InColor FColor
---@param RadiusOrLineWidth number
---@param bRecolorOrBlending boolean
---@param AddMarkFlag EAddMarkFlag
function USTExtraMapFunctionLibrary:MakeMapMarkGraph(WorldContext, WorldCorners, InColor, RadiusOrLineWidth, bRecolorOrBlending, AddMarkFlag) end

---@param AddMarkFlag EAddMarkFlag
function USTExtraMapFunctionLibrary:ClearMapMarkGraph(AddMarkFlag) end

---开关小地图上的指定类型音效图标
---@param WorldContext UObject
---@param InFlag EVoiceVisualizationFlag
---@param bIsEnable boolean
function USTExtraMapFunctionLibrary:SetVoiceVisualization(WorldContext, InFlag, bIsEnable) end

---获取小地图上指定类型音效图标的开关状态
---@param WorldContext UObject
---@param InFlag EVoiceVisualizationFlag
---@return boolean
function USTExtraMapFunctionLibrary:IsVoiceVisualizationFlagEnable(WorldContext, InFlag) end

---动态添加自定义音效图标
---@param WorldContext UObject
---@param InActor AActor
---@param PosVector FVector
---@param ShowTime number
---@param InBrush FSlateBrush
function USTExtraMapFunctionLibrary:AddDynamicVoiceIcon(WorldContext, InActor, PosVector, ShowTime, InBrush) end
