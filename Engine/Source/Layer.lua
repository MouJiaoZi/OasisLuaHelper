---@meta

---@class FLayerActorStats
---@field Total number @The total number of Actors of Type assigned to the Layer
FLayerActorStats = {}


---@class ULayer: UObject
---@field LayerName string @The display name of the layer
---@field bIsVisible number @Whether actors associated with the layer are visible in the viewport
---@field ActorStats ULuaArrayHelper<FLayerActorStats> @Basic stats regarding the number of Actors and their types currently assigned to the Layer
local ULayer = {}
