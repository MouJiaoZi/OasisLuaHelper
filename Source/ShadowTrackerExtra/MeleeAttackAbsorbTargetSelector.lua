---@meta

---@class FHistoryActorQueryData
FHistoryActorQueryData = {}


---@class UMeleeAttackAbsorbTargetSelector: UObject
---@field QueryRadiusBroadPhase number
---@field QueryRadiusNarrowPhase number
---@field UseCacheTimeBroadPhase number
---@field UseCacheTimeNarrowPhase number
---@field UseCacheDistBroadPhaseSquared number
---@field UseCacheDistNarrowPhaseSquared number
---@field bEnableTargetCampFilter boolean
---@field TargetCampFilter number
---@field CandidateClasses ULuaArrayHelper<AActor>
---@field bEnableMovableEntityOptimize boolean
---@field CachedActorCollection ULuaArrayHelper<APawn>
---@field NarrowPhaseActorIndexes ULuaArrayHelper<number>
local UMeleeAttackAbsorbTargetSelector = {}
