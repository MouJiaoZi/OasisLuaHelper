---@meta

---This defines one asset mapping
---@class FAssetMapping
FAssetMapping = {}


---UAssetMappingTable : that has AssetMappingTableging data - used for retargeting - support to share different animations
---@class UAssetMappingTable: UObject
---@field MappedAssets ULuaArrayHelper<FAssetMapping> @Mappin of asset between source and target *
local UAssetMappingTable = {}
