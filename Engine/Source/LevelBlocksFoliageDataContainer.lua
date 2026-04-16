---@meta

---@class FLevelBlockFoliageInfo
---@field FoliageLocations ULuaArrayHelper<FVector>
---@field LandscapeHeight ULuaArrayHelper<number>
---@field Indices ULuaArrayHelper<number>
---@field DstLocationHeightDiffs ULuaMapHelper<number, number>
---@field DstLocations ULuaMapHelper<number, FVector>
---@field CulledInstanceIndices ULuaArrayHelper<number>
FLevelBlockFoliageInfo = {}


---@class FLevelBlockFoliageDstLocation
---@field FoliageDstLocations ULuaMapHelper<number, FVector>
FLevelBlockFoliageDstLocation = {}


---@class FFoliageTypeLocation
---@field FoliageTypeInfos ULuaMapHelper<string, FLevelBlockFoliageInfo>
FFoliageTypeLocation = {}


---植被
---@class ULevelBlocksFoliageDataContainer: ULevelBlocksDataContainer
---@field LevelFoliageLocations ULuaMapHelper<string, FFoliageTypeLocation>
---@field TreesFlyLevel FStringAssetReference
---@field TreesFlyLevelName string
---@field SurroundingTreesLevels ULuaSetHelper<string>
local ULevelBlocksFoliageDataContainer = {}
