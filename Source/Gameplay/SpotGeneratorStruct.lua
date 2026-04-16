---@meta

---@class EVehicleSpotRandomType
---@field Vehicle_TotalCount number
---@field Vehicle_Probability number
EVehicleSpotRandomType = {}


---@class ERegionType
---@field SizeInvalid number @0(cm)
---@field SizeSmall number @40(m)
---@field SizeMedium number @150(m)
---@field SizeLarge number @350(m)
---@field SizeSuperLarge number @1000(m)
ERegionType = {}


---@class FSpotWeight
---@field Name string
---@field Weight number
FSpotWeight = {}


---@class FVehicleSpotConfigKey
---@field Category string
---@field Value string
FVehicleSpotConfigKey = {}


---@class FVehicleSpotConfigValue
---@field UseFuelPercent boolean
---@field FuelPercentMin number
---@field FuelPercentMax number
---@field UseActiveByStartVolume boolean
---@field UseInHouse boolean
FVehicleSpotConfigValue = {}


---@class FVehicleSpotConfig
---@field Key FVehicleSpotConfigKey
---@field Value FVehicleSpotConfigValue
FVehicleSpotConfig = {}


---@class FValueAndCategoryConfig
---@field bEnableRandomCategoryLimit boolean
---@field RandomCategoryLimitCount number
FValueAndCategoryConfig = {}


---@class FSpotTypeProperty
---@field SpotType ESpotType
---@field SpotPercentMin number
---@field SpotPercentMax number
---@field SpotPercentDot number
---@field ItemPerSpotMin number
---@field ItemPerSpotMax number
---@field ItemPerSpotTotal number
---@field WeightsPerValue ULuaArrayHelper<FSpotWeight> @support vechicle addtional config. feishen, 20220223
---@field WeightsPerCategory ULuaArrayHelper<FSpotWeight>
---@field DelayToBeginSpawn number
---@field CDBetweenSpawn number
---@field ValueExtParam ULuaMapHelper<string, FValueAndCategoryConfig>
---@field CategoryExtParam ULuaMapHelper<string, FValueAndCategoryConfig>
FSpotTypeProperty = {}


---@class FSpotGroupProperty
---@field SpotGroupType ESpotGroupType
---@field SpotGroupPercent number
---@field SpotTypeProperties ULuaArrayHelper<FSpotTypeProperty>
FSpotGroupProperty = {}


---@class FItemGenerateSpawnData
---@field KeyID number
---@field ItemValue string
---@field ItemCategory string
---@field ItemSubCategory string
---@field ItemWeight number
---@field ItemPath string
---@field ItemStackCount number
---@field ItemTogetherPath string
---@field ItemTogetherStackCount number
---@field ItemTogetherCountMin number
---@field ItemTogetherCountMax number
---@field MetaData string
FItemGenerateSpawnData = {}


---@class FVehicleSpotProperty
---@field SpotType ESpotType
---@field WeightsPerCategory ULuaArrayHelper<FSpotWeight>
---@field FuelPercentMin number
---@field FuelPercentMax number
---@field bActiveByStartVolume boolean
---@field RandomType EVehicleSpotRandomType
---@field TotalCountMultiplierWithPalyerCount number
---@field TotalCountRangeMin number
---@field TotalCountRangeMax number
---@field ProbabilityPersent number
---@field ProbabilityPersentWithPalyerCount number
FVehicleSpotProperty = {}


---@class FTreasureBoxSpotProperty
---@field SpotType ESpotType
---@field WeightsPerCategory ULuaArrayHelper<FSpotWeight>
---@field TotalCountRangeMin number
---@field TotalCountRangeMax number
FTreasureBoxSpotProperty = {}


---@class FVehicleGenerateSpawnData
---@field KeyID number
---@field VehicleType string
---@field VehicleSubType string
---@field VehiclePath string
---@field VehicleWeight number
---@field SnapFloor boolean
FVehicleGenerateSpawnData = {}


---@class FVehicleGenerateRandomInfo
---@field VehicleType string
---@field VehiclePath string
---@field FuelPercent number
---@field SnapFloor boolean
---@field bActiveByStartVolume boolean
---@field bInHouse boolean
FVehicleGenerateRandomInfo = {}


---@class FItemSpotStatisticsData
---@field SpotType ESpotType
---@field AllSpotCount number
---@field AllValidSpotCount number
FItemSpotStatisticsData = {}


---@class FVehicleSpotStatisticsData
---@field SpotType ESpotType
---@field VehiclePath string
---@field VehicleLocationX number
---@field VehicleLocationY number
---@field VehicleLocationZ number
FVehicleSpotStatisticsData = {}


---@class FVehicleSpotDebugData
---@field VehicleSpotName string
---@field SpotType ESpotType
---@field SpotGroupType ESpotGroupType
---@field VehiclePath string
---@field VehicleLocationX number
---@field VehicleLocationY number
---@field VehicleLocationZ number
FVehicleSpotDebugData = {}


---@class FVehicleClassStatisticsData
---@field VehiclePath string
---@field bValidPath boolean
---@field AllVehicleCount number
FVehicleClassStatisticsData = {}


---@class FBuildingStatisticsData
---@field BuildingName string
---@field BuildingLocationX number
---@field BuildingLocationY number
---@field AllGroupSpotCount number
---@field AllValidGroupSpotCount number
---@field AllSpotCount number
---@field AllValidSpotCount number
---@field SpotStatisticsData ULuaMapHelper<ESpotType, FItemSpotStatisticsData>
FBuildingStatisticsData = {}


---@class FItemGroupStatisticsData
---@field SpotGroupType ESpotGroupType
---@field AllGroupSpotCount number
---@field AllValidGroupSpotCount number
---@field AllSpotCount number
---@field AllValidSpotCount number
FItemGroupStatisticsData = {}


---@class FItemClassStatisticsData
---@field ItemPath string
---@field bValidPath boolean
---@field ItemCount number
---@field ItemTogetherPath string
---@field ItemTogetherCount number
---@field bValidTogetherPath boolean
FItemClassStatisticsData = {}


---@class FItemGenerateStatisticsData
---@field AllGroupSpotCount number
---@field AllValidGroupSpotCount number
---@field AllSpotCount number
---@field AllValidSpotCount number
---@field GroupStatisticsData ULuaMapHelper<ESpotGroupType, FItemGroupStatisticsData>
---@field BuildingStatisticsData ULuaMapHelper<string, FBuildingStatisticsData>
---@field ItemStatisticsData ULuaMapHelper<string, FItemClassStatisticsData>
FItemGenerateStatisticsData = {}


---@class FVehicleGenerateStatisticsData
---@field VehicleSpotStatisticsData ULuaArrayHelper<FVehicleSpotStatisticsData>
---@field VehicleClassStatisticsData ULuaMapHelper<string, FVehicleClassStatisticsData>
FVehicleGenerateStatisticsData = {}


---@class FItemGenerateSpawnClass
---@field ID number
---@field ItemCount number
---@field MetaData string
---@field ItemValue string
---@field ItemCategory string
---@field IsNearItem boolean
FItemGenerateSpawnClass = {}


---@class USpotGeneratorStruct: UObject
local USpotGeneratorStruct = {}
