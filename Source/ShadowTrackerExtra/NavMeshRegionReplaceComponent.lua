---@meta

---@class FNavMeshRegionReplacePath
---@field AgentName string
---@field NavMeshDataPath string
---@field NavLinkDataPath string
FNavMeshRegionReplacePath = {}


---@class FNavMeshRegionReplacePathConfig
---@field NavMeshReplacePathKey string
---@field NavMeshReplacePath ULuaArrayHelper<FNavMeshRegionReplacePath>
FNavMeshRegionReplacePathConfig = {}


---@class FNavMeshRegionReplaceBuildSpawnActorConfig
---@field SpawnActorClass AActor
---@field SpawnActorLocation FVector
---@field SpawnActorRotation FRotator
FNavMeshRegionReplaceBuildSpawnActorConfig = {}


---@class UNavMeshRegionReplaceBuildPreProcess: UObject
local UNavMeshRegionReplaceBuildPreProcess = {}


---@class UNavMeshRegionReplaceBuildLevelBlockRandom: UNavMeshRegionReplaceBuildPreProcess
---@field RandomLevelBlockID number
local UNavMeshRegionReplaceBuildLevelBlockRandom = {}


---@class UNavMeshRegionReplaceBuildSpawnActor: UNavMeshRegionReplaceBuildPreProcess
---@field SpawnActorConfig ULuaArrayHelper<FNavMeshRegionReplaceBuildSpawnActorConfig>
---@field SpawnedActors ULuaArrayHelper<AActor>
local UNavMeshRegionReplaceBuildSpawnActor = {}


---@class UNavMeshRegionReplaceBuildLoadLevel: UNavMeshRegionReplaceBuildPreProcess
---@field LoadLevelConfig ULuaArrayHelper<FStringAssetReference>
local UNavMeshRegionReplaceBuildLoadLevel = {}


---@class UNavMeshRegionReplaceBuildLostTombRandom: UNavMeshRegionReplaceBuildPreProcess
---@field RandomLevelIndex number
local UNavMeshRegionReplaceBuildLostTombRandom = {}


---@class UNavMeshRegionReplaceComponent: UBoxComponent
---@field RegionID number
---@field ReplacePathConfig ULuaArrayHelper<FNavMeshRegionReplacePathConfig>
---@field ReplaceBuildConfig ULuaArrayHelper<UNavMeshRegionReplaceBuildPreProcess>
local UNavMeshRegionReplaceComponent = {}
