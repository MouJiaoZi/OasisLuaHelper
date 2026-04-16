---@meta

---@class FMyLandscapeTextureData
---@field TextureData ULuaArrayHelper<FColor>
---@field Size FIntPoint
---@field StartCoord FIntPoint
FMyLandscapeTextureData = {}


---@class ULevelBlockMyLandscapeDataContainer: ULevelBlocksDataContainer
---@field VertexIndices ULuaMapHelper<FIntPoint, FLevelBlockNestedTArray>
---@field LandscapeZScale number
---@field Vertex ULuaArrayHelper<FVector>
---@field MatTextureData ULuaMapHelper<FLevelBlockGroup, FMyLandscapeTextureData>
---@field VertexForOverride ULuaArrayHelper<FVector>
local ULevelBlockMyLandscapeDataContainer = {}
