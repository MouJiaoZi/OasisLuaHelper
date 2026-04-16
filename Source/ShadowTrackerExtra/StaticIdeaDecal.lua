---@meta

---@class AStaticIdeaDecalActor: AActor
---@field AtlasWidth number
---@field AtlasHeight number
---@field RowIndex number
---@field ColumnIndex number
---@field OffsetZ number
---@field DetailMode EDetailMode
---@field Priority number @Decal occlusion relationship when overlapping, 10 is the top and 0 is the bottom
local AStaticIdeaDecalActor = {}


---@class AStaticIdeaDecalManager: AIdeaDecalManagerBase
---@field StaticIdeaDecalActors ULuaArrayHelper<AStaticIdeaDecalActor>
---@field StaticDecalMats ULuaMapHelper<UMaterialInterface, UMaterialInstanceDynamic>
local AStaticIdeaDecalManager = {}
