---@meta

---@class ESuggestProjVelocityTraceOption
---@field DoNotTrace number
---@field TraceFullPath number
---@field OnlyTraceWhileAscending number
ESuggestProjVelocityTraceOption = {}


---@class FPredictProjectilePathParams
---@field StartLocation FVector
---@field LaunchVelocity FVector
---@field bTraceWithCollision boolean
---@field ProjectileRadius number
---@field MaxSimTime number
---@field bTraceWithChannel boolean
---@field TraceChannel ECollisionChannel
---@field ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field ActorsToIgnore ULuaArrayHelper<AActor>
---@field SimFrequency number
---@field OverrideGravityZ number
---@field DrawDebugType EDrawDebugTrace
---@field DrawDebugTime number
---@field bTraceComplex boolean
---@field bUseConsistentPath boolean
---@field NoGravityDistance number
---@field InitLineScale number
---@field DistanceLineScaleOffset number
---@field DistanceLineScaleOffsetMinDis number
FPredictProjectilePathParams = {}


---@class FPredictProjectilePathPointData
---@field Location FVector
---@field Velocity FVector
---@field Time number
FPredictProjectilePathPointData = {}


---@class FPredictProjectilePathResult
---@field PathData ULuaArrayHelper<FPredictProjectilePathPointData>
---@field LastTraceDestination FPredictProjectilePathPointData
---@field HitResult FHitResult
FPredictProjectilePathResult = {}
