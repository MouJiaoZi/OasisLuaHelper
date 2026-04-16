---@meta

---@class FBoxSpotSimpleDate
---@field SpotGroupLoc FVector
---@field SpotGenerateLoc FVector
---@field SpotRotator FRotator
---@field SpotPercent number
FBoxSpotSimpleDate = {}


---@class FItemGenerateTableRow
---@field ID number
---@field Value string
---@field Catetory string
---@field AllGenerateSpawnDatas ULuaArrayHelper<FItemGenerateSpawnData>
FItemGenerateTableRow = {}


---@class FItemGenerateSpawnDataArray
---@field ValueCatetory string
---@field AllGenerateSpawnDatas ULuaArrayHelper<FItemGenerateSpawnData>
FItemGenerateSpawnDataArray = {}


---@class FRepeatItemSpotData
---@field RepeatGenerateCD number
---@field LastGenerateItemTime number
---@field CacheItemValeCategory ULuaMapHelper<string, number>
FRepeatItemSpotData = {}


---@class UItemGeneratorComponent: UBaseGeneratorComponent
---@field MilitaryBoxSpotFilePath string
---@field ItemGenerateOffset FVector
---@field bUseCookedSpreadPoint boolean
---@field BornIslandGroupType ESpotGroupType
---@field bStatisticsValid boolean
---@field ItemStatisticsData FItemGenerateStatisticsData
---@field SpotGroupPropertys ULuaArrayHelper<FSpotGroupProperty>
---@field UseSpotGroupPropertysEx boolean @历史：有风暴出现时激活这个参数, 20191213, feishen
---@field UseAreaID boolean
---@field AreaIDList ULuaArrayHelper<string>
---@field SpotGroupPropertysEx ULuaArrayHelper<FSpotGroupProperty>
---@field SpotGroupPropertysDic ULuaMapHelper<ESpotGroupType, FSpotGroupProperty>
---@field DefaultSpotGroupProperty FSpotGroupProperty
---@field CategoryRates ULuaMapHelper<string, number>
---@field HistroyCategoryRates ULuaMapHelper<string, number>
---@field ItemGenerateSpawnDatas ULuaMapHelper<string, FItemGenerateSpawnDataArray>
---@field BornIslandItems ULuaArrayHelper<AActor>
---@field AllValidGroups ULuaArrayHelper<UItemGroupSpotSceneComponent>
---@field bIsGenerateBornIslandItems boolean
---@field bIsGenerateMainlandItems boolean
---@field GenerateBornIslandTime FDateTime
---@field GenerateMainlandTime FDateTime
---@field ItemTypeParam ULuaMapHelper<string, number>
---@field ItemSubTypeParam ULuaMapHelper<string, number>
---@field DelayGenerateTime number
---@field AllItemSpotDataToTick ULuaArrayHelper<FItemGenerateSpawnClass>
---@field AllItemSpotDataToTickFixInfo ULuaArrayHelper<FItemGenerateSpawnClass>
---@field TotalGeneratedPickup number
local UItemGeneratorComponent = {}

function UItemGeneratorComponent:InitialMilitaryBoxSpot() end

---@param SpherePoint FVector
---@param R number
---@param Spots ULuaArrayHelper<FBoxSpotSimpleDate>
function UItemGeneratorComponent:GetSimpleBoxSpotDateInSphereRange(SpherePoint, R, Spots) end

function UItemGeneratorComponent:LoadItemGenerateTable() end

function UItemGeneratorComponent:DeleteBornIslandItems() end

function UItemGeneratorComponent:DeleteValidGroups() end

---@param Data FItemGenerateSpawnData
function UItemGeneratorComponent:RegisterItemGenerateSpawnData(Data) end

---@param Item AActor
function UItemGeneratorComponent:RegisterBornIslandItem(Item) end

---@param Value string
---@param Category string
---@param Results ULuaArrayHelper<FItemGenerateSpawnClass>
---@param RepeatGenerateItem boolean
---@return boolean
function UItemGeneratorComponent:GetRandomItemClassArray(Value, Category, Results, RepeatGenerateItem) end

---@param DeltaTime number
function UItemGeneratorComponent:GenerateSpotOnTick(DeltaTime) end

---@param Rates ULuaMapHelper<string, number>
function UItemGeneratorComponent:SetCatetoryRate(Rates) end

---Test only. feishen, 20210304
---@param Scale number
---@param Rates ULuaMapHelper<string, number>
function UItemGeneratorComponent:SetCatetoryRateConfig(Scale, Rates) end

function UItemGeneratorComponent:RandomBornIslandGroups() end

function UItemGeneratorComponent:RandomGroups() end

function UItemGeneratorComponent:WriteAllStatisticsDatas() end

function UItemGeneratorComponent:WriteAllStatisticsDatasToLog() end

---@return boolean
function UItemGeneratorComponent:IsCatetoryEnabled() end

---@param Catetory string
---@return number
function UItemGeneratorComponent:GetCatetoryRate(Catetory) end

---@param Catetory string
---@return number
function UItemGeneratorComponent:GetHistroyCatetoryRate(Catetory) end

function UItemGeneratorComponent:InitCatetorys() end

---初始化区域配置, feishen, 20191213
function UItemGeneratorComponent:InitCatetorysEx() end

---@param Items ULuaArrayHelper<FItemGenerateSpawnData>
---@return FItemGenerateSpawnData
function UItemGeneratorComponent:RandomItemGenerateSpawnData(Items) end

---@param GroupProperty FSpotGroupProperty
function UItemGeneratorComponent:RandomGroupsByType(GroupProperty) end

function UItemGeneratorComponent:WriteGroupStatisticsDatas() end

function UItemGeneratorComponent:WriteBuildingStatisticsDatas() end

function UItemGeneratorComponent:WriteItemClassStatisticsDatas() end

---@param InItemTableName string
---@param InItemTypeParam ULuaMapHelper<string, number>
---@param InItemSubTypeParam ULuaMapHelper<string, number>
function UItemGeneratorComponent:InitItemGenerator(InItemTableName, InItemTypeParam, InItemSubTypeParam) end

---@param Name string
---@return number
function UItemGeneratorComponent:GetItemTypeParamValueByName(Name) end

---@param Name string
---@return number
function UItemGeneratorComponent:GetItemSubTypeParamValueByName(Name) end
