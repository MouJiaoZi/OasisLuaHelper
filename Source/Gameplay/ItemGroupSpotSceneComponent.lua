---@meta

---@class FItemSpotSceneComponentArray
---@field SpotType ESpotType
---@field AllSpots ULuaArrayHelper<UItemSpotSceneComponent>
FItemSpotSceneComponentArray = {}


---@class UItemGroupSpotSceneComponent: UGroupSpotSceneComponent, IRegionObjectInterface
---@field SpotsCacheCur ULuaArrayHelper<UItemSpotSceneComponent>
---@field SpotsCacheAll ULuaArrayHelper<UItemSpotSceneComponent>
---@field RegionType ERegionType
local UItemGroupSpotSceneComponent = {}

---@param Generator UItemGeneratorComponent
---@param Property FSpotGroupProperty
function UItemGroupSpotSceneComponent:SetGroupProperty(Generator, Property) end

---@param SpotType ESpotType
---@param AllSpots ULuaArrayHelper<UItemSpotSceneComponent>
---@param Property FSpotTypeProperty
function UItemGroupSpotSceneComponent:RandomSpotByType(SpotType, AllSpots, Property) end

---@param Spots ULuaArrayHelper<UItemSpotSceneComponent>
---@param Property FSpotTypeProperty
function UItemGroupSpotSceneComponent:RandomSingleSpot(Spots, Property) end

function UItemGroupSpotSceneComponent:RepeatSpots() end

---@param Spot UItemSpotSceneComponent
function UItemGroupSpotSceneComponent:RepeatSingleSpot(Spot) end

---@param GroupProperty FSpotGroupProperty
---@return number
function UItemGroupSpotSceneComponent:RandomRepeatGenerateItemCD(GroupProperty) end

function UItemGroupSpotSceneComponent:RegisterSpotsToGenerator() end
