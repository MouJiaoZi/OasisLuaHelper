---@meta

---@class FItemsBoxConfigDataAssetConfigItem
---@field ProbabilityPercent number
---@field CategoryFilter string
FItemsBoxConfigDataAssetConfigItem = {}


---@class FItemsBoxConfigDataAssetConfigGroup
---@field GroupName string
---@field ConfigItems ULuaArrayHelper<FItemsBoxConfigDataAssetConfigItem>
FItemsBoxConfigDataAssetConfigGroup = {}


---@class FItemsBoxDataTableRow
---@field Category string
---@field ItemTag string
---@field Weight number
---@field ItemsData ULuaMapHelper<APickUpWrapperActor, number>
FItemsBoxDataTableRow = {}


---所有可拾取物品盒子内部数据配置结构
---@class UItemsBoxConfigDataAsset: UDataAsset
---@field TablePath string
---@field AirDropBoxGroupConfigs ULuaArrayHelper<FItemsBoxConfigDataAssetConfigGroup>
---@field AirDropBoxIndexToGroupIndexMap ULuaMapHelper<number, number>
---@field SuperAirDropBoxGroupConfigs ULuaArrayHelper<FItemsBoxConfigDataAssetConfigGroup>
---@field XmasAirDropBoxGroupConfigs ULuaArrayHelper<FItemsBoxConfigDataAssetConfigGroup>
---@field TreasureBoxGroupConfigs ULuaArrayHelper<FItemsBoxConfigDataAssetConfigGroup>
---@field ChannelBuoyBoxGroupConfigs ULuaArrayHelper<FItemsBoxConfigDataAssetConfigGroup>
---@field StarGameDropBoxGroupConfigs ULuaArrayHelper<FItemsBoxConfigDataAssetConfigGroup>
---@field IDIPJSON string
---@field ItemsBoxDataOverrideMap ULuaMapHelper<string, number>
---@field TimerHandle_Init FTimerHandle
local UItemsBoxConfigDataAsset = {}

function UItemsBoxConfigDataAsset:OnDelayInitTimer() end

---@param GroupConfigs ULuaArrayHelper<FItemsBoxConfigDataAssetConfigGroup>
---@param GroupName string
---@param GroupConfigName string
---@param Key string
---@param Value string
function UItemsBoxConfigDataAsset:OverrideGroupConfigItems(GroupConfigs, GroupName, GroupConfigName, Key, Value) end

---@param Data string
function UItemsBoxConfigDataAsset:ConvertStringToBytes(Data) end

---@param AirDropIndex number
function UItemsBoxConfigDataAsset:GetAirDropBoxGenerateDataList(AirDropIndex) end

---@param IndexInCfg number
function UItemsBoxConfigDataAsset:GetAirDropBoxGenerateDataListByGroupIndex(IndexInCfg) end

---@param GroupIdx number
function UItemsBoxConfigDataAsset:GetSuperAirDropBoxGenerateDataList(GroupIdx) end

---@param GroupName string
function UItemsBoxConfigDataAsset:GetXmasAirDropBoxGenerateDataList(GroupName) end

---@param GroupName string
function UItemsBoxConfigDataAsset:GetTreasureBoxGenerateDataList(GroupName) end

---@param GroupName string
function UItemsBoxConfigDataAsset:GetChannelBuoyBoxGenerateDataList(GroupName) end

---@param GroupName string
function UItemsBoxConfigDataAsset:GetStarGameDropBoxGenerateDataList(GroupName) end

---@param JSON string
function UItemsBoxConfigDataAsset:ReplaceJSON(JSON) end

---@param CategoryFilter string
function UItemsBoxConfigDataAsset:GetTargetItemsDataFromTableByCategoryFilter(CategoryFilter) end
