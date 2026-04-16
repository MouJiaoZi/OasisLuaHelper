---@meta

---@class EDropItemListGeneratorType
---@field DropItemListGeneratorType_ItemTable number @读表
---@field DropItemListGeneratorType_BluePrint number @蓝图配置
---@field DropItemListGeneratorType_Escape_ItemTable number @地铁读表
---@field DropItemListGeneratorType_CustomFunction number @自定义
---@field DropItemListGeneratorType_None number @无
EDropItemListGeneratorType = {}


---@class EDropItemPositionType
---@field DropItemPositionType_NineGrid number @九宫格
---@field DropItemPositionType_RandomCircle number @随机圆环掉落
---@field DropItemPositionType_FixedSetting number @固定点掉落
---@field DropItemPositionType_CustomFunction number @自定义
---@field DropItemPositionType_None number @无
EDropItemPositionType = {}


---@class EDropItemTraceMethod
---@field DropItemTrace_Parabola number @抛物线分段Trace
---@field DropItemTrace_Defaults number @不检测
---@field DropItemTrace_CustomFunction number @自定义
---@field DropItemTrace_StraightRay number @直射线选位检测
---@field DropItemTrace_None number @无
EDropItemTraceMethod = {}


---@class EGenerateItemEntityType
---@field GenerateItemEntity_BackPack number @背包
---@field GenerateItemEntity_WrapperActor number @Wrapper
---@field GenerateItemEntity_TombBox number @死亡盒子
---@field GenerateItemEntity_TresureBox number @宝箱
---@field GenerateItemEntity_None number @无效
EGenerateItemEntityType = {}


---@class EDropItemPerformanceMethod
---@field DropItemPerformance_Parabola number @简单的抛物线
---@field DropItemPerformance_CustomFunction number @自定义
---@field DropItemPerformance_None number @无
EDropItemPerformanceMethod = {}


---@class EDropItemStrategyType
---@field DropItemStrategyType_Defaults number @默认
---@field DropItemStrategyType_CustomFunction number @自定义
EDropItemStrategyType = {}


---@class EDropRuleItemPackageMode
---@field DropRuleItemPackageMode_Bulk number @单个物品
---@field DropRuleItemPackageMode_Packaged number @物资包
---@field DropRuleItemPackageMode_None number @无效
EDropRuleItemPackageMode = {}


---@class EDropItemParitcleType
---@field TrailParticle number @尾迹特效
---@field GroundParticle number @地面特效
EDropItemParitcleType = {}


---@class EDropItemAnimState
---@field Anim number @动画播放阶段
---@field DelayDestroy number @延迟销毁特效
---@field End number @结束
EDropItemAnimState = {}


---@class EDropItemCategory
---@field SinglePlayer number @单人模式
---@field MultiPlayer number @多人模式
---@field Max number @无效
EDropItemCategory = {}


---@class FDropItemPositionInfo
---@field SourcePos FVector
---@field TargetPos FVector
FDropItemPositionInfo = {}


---@class FDropItemDetectionInfo
---@field AttachActor AActor
---@field AttachComponent UPrimitiveComponent
---@field SourcePos FVector
---@field TargetPos FVector
FDropItemDetectionInfo = {}


---@class FDropItemPerformanceInfo
---@field IsPerforming boolean
---@field AttachComponent UPrimitiveComponent
---@field SourcePos FVector
---@field TargetPos FVector
---@field GroundParticle FSoftObjectPath
---@field IsAttached boolean
FDropItemPerformanceInfo = {}


---@class FGenerateDropItem
---@field ItemID number
---@field Count number
FGenerateDropItem = {}


---@class FPickUpItemDataList
---@field ItemDataList ULuaArrayHelper<FPickUpItemData>
FPickUpItemDataList = {}


---@class FGenerateDropItemData
---@field ItemDataMap ULuaMapHelper<EGenerateItemEntityType, FPickUpItemDataList>
---@field BoxName string
FGenerateDropItemData = {}


---@class FDropRuleConfigItem
---@field ItemPackageMode EDropRuleItemPackageMode
---@field DropItems ULuaArrayHelper<FPickUpItemData>
---@field PackageID number
---@field PlanID number
---@field Weight number
---@field RandomMode number
---@field Depth number
FDropRuleConfigItem = {}


---@class FDropRuleConfigItemPackage
---@field PackageID number
---@field ConfigItems ULuaArrayHelper<FDropRuleConfigItem>
---@field PlanID number
FDropRuleConfigItemPackage = {}


---@class FDropRuleConfigItemGroup
---@field ItemPackages ULuaArrayHelper<FDropRuleConfigItemPackage>
FDropRuleConfigItemGroup = {}


---@class FCommonDropItemConfigItem
---@field ItemDropPercent number
---@field DropEntityType EGenerateItemEntityType
---@field CachedConfigItemGroup FDropRuleConfigItemGroup
FCommonDropItemConfigItem = {}


---@class FRankDropItemConfigItem
---@field CommonConfig FCommonDropItemConfigItem
---@field RankLevel ULuaArrayHelper<number>
---@field ID number
FRankDropItemConfigItem = {}


---@class FCommonDropItemConfig
---@field DropConfigItems ULuaArrayHelper<FCommonDropItemConfigItem>
---@field RankDropConfigItems ULuaArrayHelper<FRankDropItemConfigItem>
---@field TreasureBoxName string
---@field ProduceID number
FCommonDropItemConfig = {}


---@class FCustomFunctionSelector
---@field CustomFunction string
FCustomFunctionSelector = {}


---@class FDropItemStrategyContext
---@field IgnoreActors ULuaArrayHelper<AActor>
---@field DropItemData FGenerateDropItemData
---@field PositionInfo ULuaArrayHelper<FDropItemPositionInfo>
---@field PerformanceInfos ULuaArrayHelper<FDropItemPerformanceInfo>
---@field ProduceID number
---@field IsSimulate boolean
---@field DropInstanceKey number
FDropItemStrategyContext = {}


---@class FDropItemAnimInfo
---@field CurState EDropItemAnimState
---@field DropDuration number
---@field StartTime number
---@field DropStartSpeed number
---@field DelayDestroyTrailParticleTime number
---@field DelayDestroyGroundParticleTime number
---@field StartPos FVector
---@field EndPos FVector
---@field TargetActor AActor
---@field AttachComponent UPrimitiveComponent
FDropItemAnimInfo = {}


---@class FDropItemAnimGroup
---@field GroupIndex number
---@field GroupTime number
---@field List ULuaArrayHelper<FDropItemAnimInfo>
FDropItemAnimGroup = {}


---@class FDropItemHistoryDataConfig
---@field DropID number
---@field Count number
FDropItemHistoryDataConfig = {}


---@class FDropItemHistoryData
---@field DropItemCategory EDropItemCategory
---@field Count number
FDropItemHistoryData = {}


---@class FDropItemHistoryDataArray
---@field HistoryData ULuaArrayHelper<FDropItemHistoryData>
FDropItemHistoryDataArray = {}


---@class FDropItemHistory
---@field DropItemCategoryLimit ULuaMapHelper<EDropItemCategory, FDropItemHistoryDataConfig>
---@field DropItemHistory ULuaMapHelper<number, FDropItemHistoryDataArray>
FDropItemHistory = {}


---@class FDropItemSpecialParticle_ItemList
---@field ItemID ULuaArrayHelper<number>
FDropItemSpecialParticle_ItemList = {}


---@class FDropItemSpecialParticle
---@field SpecialParticleConfig ULuaMapHelper<UParticleSystem, FDropItemSpecialParticle_ItemList>
---@field SpecialParticleMap ULuaMapHelper<number, UParticleSystem>
FDropItemSpecialParticle = {}


---@class IDropItemPerformanceInterface
IDropItemPerformanceInterface = {}

---@param InPerformanceInfo FDropItemPerformanceInfo
function IDropItemPerformanceInterface:SetPerformanceInfo(InPerformanceInfo) end
