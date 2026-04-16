---@meta

---@class ERCRCheckGapType
---@field Up number
---@field Down number
---@field Left number
---@field Right number
---@field Forward number
---@field Back number
ERCRCheckGapType = {}


---@class FBuildingSearchPathLink
---@field WayPointList ULuaArrayHelper<FVector>
---@field targetSpotIndex number
FBuildingSearchPathLink = {}


---@class FBuildingSearchPath
---@field itemPosLinkList ULuaArrayHelper<FBuildingSearchPathLink>
---@field buildingPartIndext number
FBuildingSearchPath = {}


---@class FRCRCheckDrawInfo
---@field DebugDrawLineTime number
---@field DebugDrawLineThickness number
---@field DebugDrawLineColor FColor
FRCRCheckDrawInfo = {}


---@class FRCRBoxFaceData
---@field RelativeMin FVector
---@field MaxDistance number
---@field MaxBoxLoc FVector
FRCRBoxFaceData = {}


---@class FRCRCheckGapData
---@field bHitBuilding boolean
---@field RCRBoxIndex number
---@field RCRBoxName string
---@field RCRBoxLoc FVector
---@field StartLoc FVector
---@field EndLoc FVector
---@field GapDistance number
---@field CheckGapType ERCRCheckGapType
FRCRCheckGapData = {}


---@class FRCRCheckEmbeddedData
---@field RCRBoxIndex number
---@field RCRBoxName string
---@field RCRBoxLoc FVector
---@field InnerStartLoc FVector
---@field OuterStartLoc FVector
---@field EndLoc FVector
---@field EmbeddedWallThickness number @内陷墙面厚度
---@field EmbeddedDistance number @内陷距离
---@field CheckType ERCRCheckGapType
FRCRCheckEmbeddedData = {}


---@class FRCRCheckBoxData
---@field RCRBoxIndex number
---@field RCRBoxName string
---@field Box FBox
---@field GapDistance number
FRCRCheckBoxData = {}


---@class ASTExtraHouseActor: AUAEHouseActor, IActorHiddenInterface
---@field itemSpotPosList ULuaArrayHelper<FVector>
---@field searchPathList ULuaArrayHelper<FBuildingSearchPath>
---@field cornerPointList ULuaArrayHelper<FVector>
---@field centerPoint FVector
---@field isAddInAIList boolean
---@field bEnableRCR boolean
---@field RCRHouseId number
---@field BoundingExtent FVector
---@field BoundingBox FBox
---@field RCRBoxInfoList ULuaArrayHelper<FRCRBox>
---@field RCRBoxGraph FRCRBoxGraph
---@field Triangulation FRCRTriangulationResult
---@field IconID number @add by feishen, 20210715
---@field bIgnoreUndergroundCheck boolean
---@field GapCheckRCRBoxNames ULuaArrayHelper<string> @未配置时，默认检测该建筑内全部RCRBox
---@field GapCheckIgnoreRCRBoxNames ULuaArrayHelper<string> @未配置时，默认检测该建筑内全部RCRBox
---@field DebugDrawSettings ULuaMapHelper<ERCRCheckType, FRCRCheckDrawInfo>
---@field UseMessageBoxSettings ULuaMapHelper<ERCRCheckType, boolean> @未配置时，默认启用弹窗
---@field CheckTypeSettings ULuaMapHelper<ERCRCheckType, boolean> @未配置时，默认单项检测启用，总项检测关闭
---@field bTriggerRCRCheck boolean
---@field GapCheckConfirmDelta number
---@field GapCheckBuildingDistance number
---@field GapCheckRCRBoxDistance number @若不启用RCRBox与RCRBox间检测，可通过配置大值禁用
---@field BuildingWallMaxThickness number
---@field EmbeddedCheckMaxDistance number
---@field EmbeddedCheckConfirmDelta number
---@field RaycastDelta number
---@field GapCheckDelta FVector
---@field BoxCheckMinExtent number
---@field RaycastUp boolean
---@field RaycastDown boolean
---@field RaycastLeft boolean
---@field RaycastRight boolean
---@field RaycastForward boolean
---@field RaycastBack boolean
---@field AllInnerGapData ULuaArrayHelper<FRCRCheckGapData>
---@field AllOuterGapData ULuaArrayHelper<FRCRCheckGapData>
---@field AllEmbeddedData ULuaArrayHelper<FRCRCheckEmbeddedData>
---@field AllBoxData ULuaArrayHelper<FRCRCheckBoxData>
---@field RBBoxComponentList ULuaArrayHelper<URCRBoxComponent>
---@field RCRBoxDefCollisionChannel ECollisionResponse
---@field RCRBoxDefCollision ECollisionEnabled
local ASTExtraHouseActor = {}
