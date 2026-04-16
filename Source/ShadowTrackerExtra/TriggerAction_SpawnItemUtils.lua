---@meta

---@class ESpawnItemFunction
---@field ESpawnItemFunction_GenerateMonster number @刷僵尸
---@field ESpawnItemFunction_GeneratePickup number @刷物资
---@field ESpawnItemFunction_GenerateVehicle number @刷载具
ESpawnItemFunction = {}


---@class FLocation2HostActor
---@field Location FVector
FLocation2HostActor = {}


---@class FGroupLocationToID
---@field GroupLocation FVector
---@field ID number
FGroupLocationToID = {}


---@class FGroupLocationPercent
---@field Location FVector
---@field Percent number
FGroupLocationPercent = {}


---@class FSecondsSegment
---@field BeginSeconds number
---@field EndSeconds number
FSecondsSegment = {}


---@class FItemGenerateSpawnDatas
---@field ValueCatetory string
---@field AllGenerateSpawnDatas ULuaArrayHelper<FItemGenerateSpawnData>
FItemGenerateSpawnDatas = {}


---@class FSpotTriggerOtherSpot
---@field SrcSpotTag string
---@field DstSpotTag string
FSpotTriggerOtherSpot = {}


---@class FDropItemCfg
---@field DropConfigTablePath string
---@field DropRuleConfigTablePath string
---@field UseDropID boolean
---@field DropID number
---@field UseActorLocation boolean
---@field MaxRandomWeight number
FDropItemCfg = {}


---@class FRepeatItemCfg
---@field RepeatSpawnItemCD number
FRepeatItemCfg = {}


---注意FSpawnItemCfg结构体中已经投入生产的字段禁止修改名称!!!
---@class FSpawnItemCfg
---@field ItemSpawnDataTablePath string
---@field MonsterSpawnDataTablePath string
---@field TreasureBoxTablePath string
---@field CookedFilePath string
---@field SpawnItemFunction ESpawnItemFunction
---@field GenerateSpotCountPerTick number
---@field UseRegionChangedSpawnItem boolean
---@field RegionType ERegionType
---@field SpawnActorCollisionHandlingMethod ESpawnActorCollisionHandlingMethod
---@field SecondsSegmentCondition ULuaArrayHelper<FSecondsSegment>
---@field CloseLineTraceZombie boolean
---@field USeMonsterBornType boolean
---@field MonsterBornType EMonsterBornType
---@field bAISetRelaxMode boolean
---@field AIRelaxMode number
---@field bAISetWarningMode boolean
---@field AIWarningMode number
---@field bAISetCampID boolean
---@field AICampID number
---@field UseLineTrace boolean
---@field LineTraceStartHight number
---@field LineTraceEndHight number
---@field AppearRadiusStart number
---@field AppearRadius number
---@field AppearRadiusSecondLevel number
---@field LineTracePlaceInclude ULuaArrayHelper<string>
---@field LineTracePlaceExclude ULuaArrayHelper<string>
---@field bItemGenerateOffset boolean
---@field ItemGenerateOffset FVector
---@field bUseCookedSpreadPoint boolean
---@field bSpawnLocationZOffset boolean
---@field SpawnLocationZOffset number
---@field UseRandomRotatorYaw boolean
---@field bRandomSpawnRotatorYaw boolean
---@field bSpawnRotatorYaw boolean
---@field ItemSpawnRotatorYaw number
---@field bUseCookedRotator boolean
---@field bUseSpotPercent boolean
---@field UseItemSelfNetCullDistance boolean
---@field bNetCullDistance boolean
---@field NetCullDistance number
---@field DeleteCategoryList ULuaArrayHelper<string>
---@field bGroupNumCtrl boolean
---@field NeedGroupMin number
---@field NeedGroupMax number
---@field bGroupNumCtrlPercent boolean
---@field NeedGroupMinPercent number
---@field NeedGroupMaxPercent number
---@field PercentNeedCareGroupMax boolean
---@field bSpotPerGroupNumCtrl boolean
---@field NeedSpotPerGroupMin number
---@field NeedSpotPerGroupMax number
---@field RandomItemAtItemSpotUseSpotPercent boolean
---@field bExcludeUsedGroup boolean
---@field bExcludeUsedSpot boolean
---@field bNeedInBlueCircle boolean
---@field UseGroupInBlueCircle boolean
---@field bNeedInWhiteCircle boolean
---@field UseGroupInWhiteCircle boolean
---@field UseExcludeAirLine boolean
---@field ExcludeAirLineDistance number
---@field UseIncludeAirLine boolean
---@field IncludeAirLineDistance number
---@field UseItemGeneratorAreaItem boolean
---@field UseItemGeneratorAreaIIDItem boolean
---@field UseSpotTriggerOtherSpot boolean
---@field SpotTriggerOtherSpotList ULuaArrayHelper<FSpotTriggerOtherSpot>
---@field UseCleanUpSpot boolean
---@field bNeedAircraft boolean
---@field AirDropType EAirDropType
---@field DropHeight number
---@field bExpressUseSpotLocation boolean
---@field ExpressUseSpotLocationMinDistance number
---@field ExpressUseSpotLocationMaxDistance number
---@field bExpressItemNumCtrl boolean
---@field ExpressItemNumMin number
---@field ExpressItemNumMax number
---@field bExpressItemNumPerPlayerCtrl boolean
---@field ExpressItemNumPerPlayerTotal number
---@field ExpressItemNumPerPlayer number
---@field bSpawnExpressItemPerPlayerCD boolean
---@field SpawnExpressItemPerPlayerCD number
---@field bSupplementExpressItemCD boolean
---@field SupplementExpressItemCD number
---@field bExpressReplaceZombie boolean
---@field bAISpawnExpressItem boolean
---@field bAttachToHostActor boolean
---@field bCaculateRelativeTransform boolean
---@field bAttachToHostActorIsStatic boolean
---@field UseSpawnTogetherClass boolean
---@field IsTogetherItemSameAsMainItem boolean
---@field UseDropLifeTime boolean
---@field DropLifeTime number
---@field UseDropItem boolean
---@field DropItemCfg FDropItemCfg
---@field UseRepeatItem boolean
---@field RepeatItemCfg FRepeatItemCfg
---@field FuelPercentMax number
---@field ActiveByStartVolume boolean
---@field UseLocationID boolean
---@field bRegistHostActor boolean
---@field bUseItemIndex boolean
---@field bSpawnPedestal boolean
---@field VehicleExConfigList ULuaArrayHelper<FVehicleSpotConfig>
---@field SpotGroupProperties ULuaArrayHelper<FSpotGroupProperty>
---@field bUseSpotAroundActor boolean
---@field SpotAroundDis number
---@field bRegistToNewRegion boolean
---@field bisUseItemGeneratorConfig boolean
---@field ItemTypeParam ULuaMapHelper<string, number>
---@field ItemSubTypeParam ULuaMapHelper<string, number>
---@field bisUseRoomSetting boolean
---@field ValueExtParam ULuaMapHelper<string, FValueAndCategoryConfig>
---@field CategoryExtParam ULuaMapHelper<string, FValueAndCategoryConfig>
FSpawnItemCfg = {}


---@class FSpawnItemSpotKey
FSpawnItemSpotKey = {}


---@class FDeleteItemDelegate : ULuaSingleDelegate
FDeleteItemDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: AActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDeleteItemDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 AActor
function FDeleteItemDelegate:Execute(Param1, Param2) end


---@class FSpawnItemDelegate : ULuaSingleDelegate
FSpawnItemDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: AActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSpawnItemDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 AActor
function FSpawnItemDelegate:Execute(Param1, Param2) end


---@class UTriggerAction_SpawnItemUtils: UObject
---@field AllItemSpotDataToTick ULuaArrayHelper<FItemGenerateSpawnClass>
---@field SpawnItemCfg FSpawnItemCfg
---@field HostActorList ULuaArrayHelper<FLocation2HostActor>
---@field UseDebug string
---@field DefaultParam number
local UTriggerAction_SpawnItemUtils = {}
