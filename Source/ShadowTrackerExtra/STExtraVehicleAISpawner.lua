---@meta

---@class ASTExtraVehicleAISpawner: AActor
---@field Id FGuid
---@field SpawnTag string
---@field bIsSingleUse boolean
---@field StartingPath FWaypointNetworkConnection
---@field InitializeVehicleBehaviorDelay number
---@field bUsed boolean
---@field spawnWayPaths ULuaArrayHelper<FPathPoint>
---@field AIMapWayPoint ASTExtraAIWaypointSegment
local ASTExtraVehicleAISpawner = {}
