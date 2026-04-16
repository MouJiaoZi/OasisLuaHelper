---@meta

---@class UItemSpotSceneComponent: USpotSceneComponent
---@field AIGroupID number
---@field AllItems ULuaArrayHelper<FItemGenerateSpawnClass>
---@field SpotGroupType ESpotGroupType
---@field CacheItemValeCategory ULuaMapHelper<string, number>
local UItemSpotSceneComponent = {}

---@param CompositionID number
---@param GroupType ESpotGroupType
---@param Generator UItemGeneratorComponent
---@param Property FSpotTypeProperty
---@param Component UGroupSpotSceneComponent
---@param RepeatGenerateItem boolean
function UItemSpotSceneComponent:SetSpotProperty(CompositionID, GroupType, Generator, Property, Component, RepeatGenerateItem) end

---@param Property FSpotTypeProperty
function UItemSpotSceneComponent:RepeatSpotProperty(Property) end

---@return boolean
function UItemSpotSceneComponent:GenerateSpot() end

---@param ItemValue string
---@param ItemCategory string
function UItemSpotSceneComponent:DoPickUp(ItemValue, ItemCategory) end

---@param AllItemClass ULuaArrayHelper<FItemGenerateSpawnClass>
function UItemSpotSceneComponent:GenerateItems(AllItemClass) end

---@return number
function UItemSpotSceneComponent:CountCacheItemValeCategory() end
