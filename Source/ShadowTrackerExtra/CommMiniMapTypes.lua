---@meta

---@class ECommMiniMapItemType
---@field ECT_Actor number @Actor
---@field ECT_Line number @Line
---@field ECT_Circle number @Circle
---@field ECT_MaskCircle number @Mask Circle
---@field ECT_VirtualObject number @Virtual Object
ECommMiniMapItemType = {}


---@class ECommMiniMapRefreshType
---@field ArbitraryDataChanged number @任意变更
---@field StateChanged number @状态变化
---@field CustomRefresh number @主动刷新
ECommMiniMapRefreshType = {}


---@class ECommMiniMapItemLayerType
---@field ItemLayer number
---@field MapLayer number
ECommMiniMapItemLayerType = {}


---@class ECommMiniMapType
---@field Small number
---@field Large number
ECommMiniMapType = {}


---@class ECommMiniMapScaleType
---@field ECM_Multiple number @Multiple
---@field ECM_Add number @Add
ECommMiniMapScaleType = {}


---@class FMiniMapShownItemConfig
---@field UniqueID number
---@field ItemType ECommMiniMapItemType
---@field ItemTemplateId number
---@field ItemNumber number
---@field BindRefreshFunctionName string
---@field BindInitFunctionName string
---@field WaitForTriggerRefresh boolean
FMiniMapShownItemConfig = {}


---@class FMiniMapItemTemplateDetail
---@field ItemTemplatePath string
FMiniMapItemTemplateDetail = {}


---@class FMiniMapRealTimeInfo
---@field ItemIndex number
---@field TargetLocation FVector
---@field TargetRotateAngle number
---@field StateID number
---@field TargetProcess number
---@field NeedCalRotation boolean
---@field TargetStartLocation FVector
---@field TargetEndLocation FVector
---@field IsOutOfRange boolean
---@field NeedCalOutOfRange boolean
FMiniMapRealTimeInfo = {}


---@class FWidgetItemInitInfo
---@field ItemIndex number
---@field IntParam number
---@field FloatParam number
---@field BoolParam boolean
---@field StringParam string
FWidgetItemInitInfo = {}


---@class FBaseTypeItemInfo
---@field TargetCoord FVector2D
---@field TargetRotation number
---@field StateID number
FBaseTypeItemInfo = {}


---@class FCommTypeItemInfo
---@field MapCenterToTarget FVector
---@field TargetRadius number
---@field TargetTranslation FVector2D
FCommTypeItemInfo = {}


---@class FActorTypeItemInfo
---@field MapCenterToTarget FVector
---@field IsOutOfRange boolean
FActorTypeItemInfo = {}


---@class FCircleTypeItemInfo
---@field TargetRadius number
FCircleTypeItemInfo = {}


---@class FLineTypeItemInfo
---@field TargetProcess number
---@field TargetLength number
FLineTypeItemInfo = {}


---@class FMiniMapStandardPointInfo
---@field LevelBoundExtent number
---@field EachTileExtent number
---@field LevelName string
---@field FakeEdgeExtent number
---@field LevelLandScapeCenter FVector
---@field RotateAngle number
FMiniMapStandardPointInfo = {}


---@class FCustomEventInfo
---@field StateID number
---@field ItemIndex number
---@field Coordination FVector
---@field ItemType ECommMiniMapItemType
FCustomEventInfo = {}
