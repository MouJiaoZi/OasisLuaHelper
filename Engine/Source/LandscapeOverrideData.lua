---@meta

---@class FLandscapeOverrideData
---@field HeightmapScaleBias FVector2D
---@field Weightmaps ULuaArrayHelper<UTexture2D>
---@field OverrideTextures ULuaMapHelper<string, UTexture2D>
---@field PhysicalMaterials ULuaArrayHelper<UPhysicalMaterial>
---@field DeformWeightData ULuaArrayHelper<number>
FLandscapeOverrideData = {}


---@class FLandscapeOverrideKey
---@field LandscapeGuid FGuid
---@field ComponentId FIntPoint
FLandscapeOverrideKey = {}
