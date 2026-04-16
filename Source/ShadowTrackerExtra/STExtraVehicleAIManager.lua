---@meta

---@class ESpawnType
---@field Single number
---@field ContinuousOnTimer number
---@field ContinuousOnDeath number
ESpawnType = {}


---@class EVehicleAIAvoidanceMode
---@field Off number
---@field SingleTrace number
---@field MultiTrace number
EVehicleAIAvoidanceMode = {}


---@class FAutoDriveAIDataRow
---@field VehicleClass APawn
---@field BehaviorTreeAsset UBehaviorTree
---@field BlackboardDataAsset UBlackboardData
FAutoDriveAIDataRow = {}


---@class FSpawnFilter
---@field bLimitSpawnPoints boolean
---@field ValidSpawnPoints ULuaArrayHelper<string>
---@field InvalidSpawnPoints ULuaArrayHelper<string>
FSpawnFilter = {}


---@class FQueuedVehicleSpawn
---@field Id FGuid
---@field SpawnId string
---@field VehicleClass APawn
---@field SpawnSettings FSpawnFilter
FQueuedVehicleSpawn = {}


---@class FActiveVehicleList
---@field Vehicles ULuaArrayHelper<APawn>
FActiveVehicleList = {}


---@class FVehicleSpawn
---@field Id FGuid
---@field SpawnType ESpawnType
---@field VehicleClass APawn
---@field BehaviorTreeAsset UBehaviorTree
---@field BlackboardDataAsset UBlackboardData
---@field InitialSpawnDelay number
---@field SubsequentSpawnDelay number
---@field MaxTriggers number
---@field MinToSpawn number
---@field MaxToSpawn number
---@field SpawnFilter FSpawnFilter
---@field bEnableSpawn boolean
FVehicleSpawn = {}


---@class FVehicleBehaviorPayload
---@field StartingPath FWaypointNetworkConnection
FVehicleBehaviorPayload = {}


---@class FDebugVehicleSpawn
---@field SpawnCount number
---@field SpawnTag string
---@field bSpawnAtLocation boolean
---@field SpawnLocation FVector
---@field SpawnRotation FRotator
---@field StartingPath FWaypointNetworkConnection
FDebugVehicleSpawn = {}


---@class ASTExtraVehicleAIManager: AActor
---@field bOnlySpawnInSafetyZone boolean
---@field bQueueSpawns boolean
---@field VehicleSpawnDataTable UDataTable
---@field AIPawnTag string
---@field MaxConcurrentVehicles number
---@field MaxVehiclesPerGame number
---@field SpawnPointCooldown number
---@field CurrentPathKeyName string
---@field CurrentPathInputKeyKeyName string
---@field PreviousPathInputKeyKeyName string
---@field IsPathingInReverseKeyName string
---@field IsStoppedKeyName string
---@field IsDebugForceStoppedKeyName string
---@field AvoidanceMode EVehicleAIAvoidanceMode
---@field InitRetryDelay number
---@field MaxInitRetries number
---@field QueuedVehicleSpawns ULuaArrayHelper<FQueuedVehicleSpawn>
---@field VehicleSpawns ULuaArrayHelper<ASTExtraVehicleAISpawner>
---@field VehiclePaths ULuaArrayHelper<ASTExtraAIWaypointSegment>
---@field PathPointPlayZoneStatus ULuaMapHelper<FPathPoint, boolean>
---@field PathPointPlayZoneDistances ULuaMapHelper<FPathPoint, FPathInputPlayZoneDistanceQuery>
---@field LastVehicleSpawnTimes ULuaMapHelper<ASTExtraVehicleAISpawner, number>
---@field AllVehiclesDestroyedTimeMap ULuaMapHelper<string, number>
---@field PreviousMatchTime number
---@field CacheUObjectMap ULuaMapHelper<string, UObject>
---@field ActiveVehiclesMap ULuaMapHelper<string, FActiveVehicleList>
---@field AutoDriveAIADataSet ULuaArrayHelper<FAutoDriveAIDataRow>
---@field SegmentPointIdxStart number
---@field SegmentPointIdxEnd number
---@field bVehicleAIForcecNoActive boolean
---@field bVehicleAIShowIconInMiniMap boolean
---@field fVehicleHPScaleForTowTeam number
---@field fVehicleHPScaleForFourTeam number
---@field bEnableVehicleSpawnOverlapCheck boolean
local ASTExtraVehicleAIManager = {}

---@param PointLocation FVector
---@param ForwardPlayZoneDistance number
---@param ReversePlayZoneDistance number
function ASTExtraVehicleAIManager:MulticastDrawPathPointDebug(PointLocation, ForwardPlayZoneDistance, ReversePlayZoneDistance) end

---@param VehiclePawn APawn
---@param Spawner ASTExtraVehicleAISpawner
---@param SpawnEventIndex number
function ASTExtraVehicleAIManager:ProcessAfterSpawnVehicle(VehiclePawn, Spawner, SpawnEventIndex) end

---@param bEnable boolean
---@param SpawnEventIndex number
function ASTExtraVehicleAIManager:SetSpawnEventState(bEnable, SpawnEventIndex) end

function ASTExtraVehicleAIManager:ProcessPathPlayZoneStatus() end
