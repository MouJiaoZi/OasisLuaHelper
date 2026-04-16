---@meta

---@class FVehicleGenerateSpawnDataArray
---@field Catetory string
---@field AllGenerateSpawnDatas ULuaArrayHelper<FVehicleGenerateSpawnData>
FVehicleGenerateSpawnDataArray = {}


---@class FVehicleSpotComponentArray
---@field SpotType ESpotType
---@field AllSpots ULuaArrayHelper<UVehicleSpotSceneComponent>
FVehicleSpotComponentArray = {}


---@class FVehicleSpotRegister : ULuaMulticastDelegate
FVehicleSpotRegister = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleSpotRegister:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 FVector
function FVehicleSpotRegister:Broadcast(Param1, Param2) end


---新的 刷车 和 宝箱 逻辑
---@class UVehicleAndTreasureBoxGeneratorComponent: UBaseGeneratorComponent
---@field VehicleSpotSceneComponentList ULuaArrayHelper<UVehicleSpotSceneComponent>
---@field VehicleSpotPropertys ULuaArrayHelper<FVehicleSpotProperty>
---@field TreasureBoxSpotPropertys ULuaArrayHelper<FTreasureBoxSpotProperty>
---@field bStatisticsValid boolean
---@field bIsRandom boolean
---@field AllVehicleSpots ULuaMapHelper<ESpotType, FVehicleSpotComponentArray>
---@field AllTreasureBoxSpots ULuaMapHelper<ESpotType, FVehicleSpotComponentArray>
---@field VehicleGenerateSpawnDatas ULuaMapHelper<string, FVehicleGenerateSpawnDataArray>
---@field VehicleStatisticsData FVehicleGenerateStatisticsData
---@field RegionType ERegionType
---@field VehicleTypeParam ULuaMapHelper<string, number>
---@field VehicleSubTypeParam ULuaMapHelper<string, number>
---@field CategoryRates ULuaMapHelper<string, number>
local UVehicleAndTreasureBoxGeneratorComponent = {}

---@param GroupSpotComponent UGroupSpotSceneComponent
function UVehicleAndTreasureBoxGeneratorComponent:RegisterGroupSpotComponent(GroupSpotComponent) end

function UVehicleAndTreasureBoxGeneratorComponent:RandomGroups() end

function UVehicleAndTreasureBoxGeneratorComponent:LoadVehicleGenerateTable() end

---@param Data FVehicleGenerateSpawnData
function UVehicleAndTreasureBoxGeneratorComponent:RegisterVehicleGenerateSpawnData(Data) end

---@param SpotType ESpotType
---@return FVehicleGenerateRandomInfo
function UVehicleAndTreasureBoxGeneratorComponent:GetVehicleSpotRandomInfoBySpotType(SpotType) end

---@param SpotProperty FVehicleSpotProperty
---@return FVehicleGenerateRandomInfo
function UVehicleAndTreasureBoxGeneratorComponent:GetVehicleSpotRandomInfo(SpotProperty) end

---@param SpotProperty FTreasureBoxSpotProperty
---@return FVehicleGenerateRandomInfo
function UVehicleAndTreasureBoxGeneratorComponent:GetTreasureBoxSpotRandomInfo(SpotProperty) end

---@param Category string
---@return FVehicleGenerateSpawnData
function UVehicleAndTreasureBoxGeneratorComponent:GetRandomVehicleClass(Category) end

---@param Property FVehicleSpotProperty
---@param Spots FVehicleSpotComponentArray
function UVehicleAndTreasureBoxGeneratorComponent:RandomSpotsByType(Property, Spots) end

---@param AllSpots ULuaArrayHelper<UVehicleSpotSceneComponent>
---@param Property FVehicleSpotProperty
function UVehicleAndTreasureBoxGeneratorComponent:RandomSingleSpots(AllSpots, Property) end

---@param Property FTreasureBoxSpotProperty
---@param Spots FVehicleSpotComponentArray
function UVehicleAndTreasureBoxGeneratorComponent:RandomTreasureBoxSpotsByType(Property, Spots) end

---@param AllSpots ULuaArrayHelper<UVehicleSpotSceneComponent>
---@param Property FTreasureBoxSpotProperty
function UVehicleAndTreasureBoxGeneratorComponent:RandomTreasureBoxSingleSpots(AllSpots, Property) end

---@param SpotWeights ULuaArrayHelper<FSpotWeight>
---@return string
function UVehicleAndTreasureBoxGeneratorComponent:GetRandomCategory(SpotWeights) end

function UVehicleAndTreasureBoxGeneratorComponent:DeleteGroups() end

---@param SpotType ESpotType
---@param Path string
---@param LocationX number
---@param LocationY number
---@param LocationZ number
function UVehicleAndTreasureBoxGeneratorComponent:AddVehicleSpotCount(SpotType, Path, LocationX, LocationY, LocationZ) end

---@param Path string
---@param IsValid boolean
---@param Count number
function UVehicleAndTreasureBoxGeneratorComponent:AddVehicleClassCount(Path, IsValid, Count) end

---@param DeltaTime number
function UVehicleAndTreasureBoxGeneratorComponent:GenerateSpotOnTick(DeltaTime) end

function UVehicleAndTreasureBoxGeneratorComponent:WriteAllVehicleStatisticsDatas() end

function UVehicleAndTreasureBoxGeneratorComponent:WriteAllVehicleStatisticsDatasToLog() end

function UVehicleAndTreasureBoxGeneratorComponent:WriteVehicleClassStatisticsDatas() end

function UVehicleAndTreasureBoxGeneratorComponent:WriteVehicleSpotStatisticsDatas() end

---@param InItemTableName string
---@param InVehicleTypeParam ULuaMapHelper<string, number>
---@param InVehicleSubTypeParam ULuaMapHelper<string, number>
function UVehicleAndTreasureBoxGeneratorComponent:InitVehicleGenerator(InItemTableName, InVehicleTypeParam, InVehicleSubTypeParam) end

function UVehicleAndTreasureBoxGeneratorComponent:CheckTileLevelsVisible() end

---@param Name string
---@return number
function UVehicleAndTreasureBoxGeneratorComponent:GetVehicleTypeParamValueByName(Name) end

---@param Name string
---@return number
function UVehicleAndTreasureBoxGeneratorComponent:GetVehicleSubTypeParamValueByName(Name) end

---@param Rates ULuaMapHelper<string, number>
function UVehicleAndTreasureBoxGeneratorComponent:SetCatetoryRate(Rates) end

---@return boolean
function UVehicleAndTreasureBoxGeneratorComponent:IsCatetoryEnabled() end

---@param Catetory string
---@return number
function UVehicleAndTreasureBoxGeneratorComponent:GetCatetoryRate(Catetory) end

function UVehicleAndTreasureBoxGeneratorComponent:InitCatetorys() end


---旧的 刷车 逻辑
---@class UVehicleGeneratorComponent: UBaseGeneratorComponent
---@field VehicleSpotPropertys ULuaArrayHelper<FVehicleSpotProperty>
---@field bStatisticsValid boolean
---@field bIsRandom boolean
---@field AllVehicleSpots ULuaMapHelper<ESpotType, FVehicleSpotComponentArray>
---@field VehicleGenerateSpawnDatas ULuaMapHelper<string, FVehicleGenerateSpawnDataArray>
---@field VehicleStatisticsData FVehicleGenerateStatisticsData
local UVehicleGeneratorComponent = {}

---@param GroupSpotComponent UGroupSpotSceneComponent
function UVehicleGeneratorComponent:RegisterGroupSpotComponent(GroupSpotComponent) end

function UVehicleGeneratorComponent:RandomGroups() end

function UVehicleGeneratorComponent:LoadVehicleGenerateTable() end

---@param Data FVehicleGenerateSpawnData
function UVehicleGeneratorComponent:RegisterVehicleGenerateSpawnData(Data) end

---@param SpotType ESpotType
---@return FVehicleGenerateRandomInfo
function UVehicleGeneratorComponent:GetVehicleSpotRandomInfoBySpotType(SpotType) end

---@param SpotProperty FVehicleSpotProperty
---@return FVehicleGenerateRandomInfo
function UVehicleGeneratorComponent:GetVehicleSpotRandomInfo(SpotProperty) end

---@param Category string
---@return FVehicleGenerateSpawnData
function UVehicleGeneratorComponent:GetRandomVehicleClass(Category) end

---@param Property FVehicleSpotProperty
---@param Spots FVehicleSpotComponentArray
function UVehicleGeneratorComponent:RandomSpotsByType(Property, Spots) end

---@param AllSpots ULuaArrayHelper<UVehicleSpotSceneComponent>
---@param Property FVehicleSpotProperty
function UVehicleGeneratorComponent:RandomSingleSpots(AllSpots, Property) end

---@param SpotWeights ULuaArrayHelper<FSpotWeight>
---@return string
function UVehicleGeneratorComponent:GetRandomCategory(SpotWeights) end

function UVehicleGeneratorComponent:DeleteGroups() end

---@param SpotType ESpotType
---@param Path string
---@param LocationX number
---@param LocationY number
---@param LocationZ number
function UVehicleGeneratorComponent:AddVehicleSpotCount(SpotType, Path, LocationX, LocationY, LocationZ) end

---@param Path string
---@param IsValid boolean
---@param Count number
function UVehicleGeneratorComponent:AddVehicleClassCount(Path, IsValid, Count) end

---@param DeltaTime number
function UVehicleGeneratorComponent:GenerateSpotOnTick(DeltaTime) end

function UVehicleGeneratorComponent:WriteAllVehicleStatisticsDatas() end

function UVehicleGeneratorComponent:WriteVehicleClassStatisticsDatas() end

function UVehicleGeneratorComponent:WriteVehicleSpotStatisticsDatas() end
