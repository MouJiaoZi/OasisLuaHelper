---@meta

---@class FItemSpawnData
---@field RowName string
---@field KeyID number
---@field ItemValue string
---@field ItemCategory string
---@field ItemWeight number
---@field ItemPath string
---@field ItemStackCount number
---@field ItemTogetherPath string
---@field ItemTogetherStackCount number
---@field ItemTogetherCountMin number
---@field ItemTogetherCountMax number
FItemSpawnData = {}


---@class FItemSpawnClass
---@field ItemCount number
FItemSpawnClass = {}


---@class FGroupTypeSceneComponents
---@field GroupType number
---@field SceneComponents ULuaArrayHelper<USceneComponent>
FGroupTypeSceneComponents = {}


---@class UItemConfigActorComponent: UActorComponent
---@field ItemSpawnDatas ULuaArrayHelper<FItemSpawnData>
---@field AllSpotGroups ULuaMapHelper<number, FGroupTypeSceneComponents>
local UItemConfigActorComponent = {}

---@param GroupType number
---@param GroupSceneComponent USceneComponent
function UItemConfigActorComponent:RegisterGroupSceneComponent(GroupType, GroupSceneComponent) end

---@param GroupType number
---@param Persent number
function UItemConfigActorComponent:RandomGroupSceneComponents(GroupType, Persent) end

---@param itemValue string
---@param itemCategory string
function UItemConfigActorComponent:RandomItemSpawnClass(itemValue, itemCategory) end

---@param data FItemSpawnData
function UItemConfigActorComponent:GetItemSpawnClass(data) end
