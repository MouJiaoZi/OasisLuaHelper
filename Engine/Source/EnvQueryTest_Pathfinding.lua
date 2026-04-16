---@meta

---@class EEnvTestPathfinding
---@field PathExist number
---@field PathCost number
---@field PathLength number
EEnvTestPathfinding = {}


---@class UEnvQueryTest_Pathfinding: UEnvQueryTest
---@field TestMode EEnvTestPathfinding @testing mode
---@field Context UEnvQueryContext @context: other end of pathfinding test
---@field PathFromContext FAIDataProviderBoolValue @pathfinding direction
---@field SkipUnreachable FAIDataProviderBoolValue @if set, items with failed path will be invalidated (PathCost, PathLength)
---@field FilterClass UNavigationQueryFilter @navigation filter to use in pathfinding
local UEnvQueryTest_Pathfinding = {}
