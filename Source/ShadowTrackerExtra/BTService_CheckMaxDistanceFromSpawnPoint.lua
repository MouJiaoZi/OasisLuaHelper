---@meta

---@class FBTAICheckMaxDistanceFromSpawnPointMemory
---@field SpawnLocation FVector
---@field MaxMoveDistanceVolumeBox FBox
FBTAICheckMaxDistanceFromSpawnPointMemory = {}


---是否超出了离出生点的最大活动范围
---@class UBTService_CheckMaxDistanceFromSpawnPoint: UBTService
---@field MaxDistAllowedFromSpawnPoint number
---@field bMaxDistFromBlackboard boolean
---@field BBKeyMaxDistance any
---@field BBKeyIsOutOfMaxDistance any
---@field BBKeySpawnPoint any
---@field bClearEnemyTargetWhenOutOfMaxDist boolean
---@field bUseAIMaxMoveDistanceVolume boolean
---@field HeightTestOffset number
---@field bCheckInLivingRange boolean
---@field bCustomBackRefPoint boolean
---@field BBKeyBackRefPoint any
local UBTService_CheckMaxDistanceFromSpawnPoint = {}
