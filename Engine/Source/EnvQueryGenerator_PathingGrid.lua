---@meta

---Navigation grid, generates points on navmesh with paths to/from context no further than given limit
---@class UEnvQueryGenerator_PathingGrid: UEnvQueryGenerator_SimpleGrid
---@field PathToItem FAIDataProviderBoolValue @pathfinding direction
---@field NavigationFilter UNavigationQueryFilter @navigation filter to use in pathfinding
---@field ScanRangeMultiplier FAIDataProviderFloatValue @multiplier for max distance between point and context
local UEnvQueryGenerator_PathingGrid = {}
