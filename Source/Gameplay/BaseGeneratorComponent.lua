---@meta

---@class FGroupSpotComponentArray
---@field GroupType ESpotGroupType
---@field AllGroupComponents ULuaArrayHelper<UGroupSpotSceneComponent>
FGroupSpotComponentArray = {}


---@class FWorldTileSpotArray
---@field WorldCompositionID number
---@field AllSpotComponents ULuaArrayHelper<USpotSceneComponent>
FWorldTileSpotArray = {}


---@class UBaseGeneratorComponent: UItemActorComponent
---@field bWorldTileGenerator boolean
---@field bModeStateControl boolean
---@field GenerateSpotCountPerTick number
---@field ItemTableName string
---@field IsWriteStatisticsToLog boolean
---@field DefaultParam number
---@field AllGroupSpots ULuaMapHelper<ESpotGroupType, FGroupSpotComponentArray>
---@field AllSpotsToTick ULuaArrayHelper<USpotSceneComponent>
---@field WorldTileSpots ULuaMapHelper<number, FWorldTileSpotArray>
---@field RepeatGroups ULuaArrayHelper<UGroupSpotSceneComponent>
---@field DetalRepeatTime number
---@field LineOffsetZ number
---@field CookedFilePath string
---@field CookedFilePathForLayers ULuaArrayHelper<string>
---@field SpotDataSerialize FUAESpotDataSerialize
---@field bUseVehicleLocalSpotFile boolean
---@field MaxItemCount number
local UBaseGeneratorComponent = {}

function UBaseGeneratorComponent:GenerateSpots() end

---@param GroupSpotComponent UGroupSpotSceneComponent
function UBaseGeneratorComponent:RegisterGroupSpotComponent(GroupSpotComponent) end

---@param SpotComponent USpotSceneComponent
function UBaseGeneratorComponent:RegisterSpotComponentToTick(SpotComponent) end

---@param Spot USpotSceneComponent
function UBaseGeneratorComponent:RegisterWorldTileSpot(Spot) end

---@param DeltaTime number
function UBaseGeneratorComponent:GenerateSpotOnTick(DeltaTime) end

---@param SpotArray FWorldTileSpotArray
function UBaseGeneratorComponent:GeneratorWorldTileSpots(SpotArray) end

function UBaseGeneratorComponent:CheckTileLevelsVisible() end
