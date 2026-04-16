---@meta

---@class FDropTrackCollisionDetectionBase
---@field bRelativeOffset boolean
---@field bDrawDebug boolean
---@field DebugLineLifeTime number
FDropTrackCollisionDetectionBase = {}


---@class FDropTrackCollisionDetection_Parabola
---@field IterationMax number
---@field CollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field IgnoreActorClasses ULuaArrayHelper<AActor>
---@field bEnableDropInWater boolean
---@field GravityCoefficient number
---@field ParabolicHigh number
---@field AvoidLength number
---@field StartOffset FVector
---@field GroundOffset FVector
---@field BisUseActorLoc boolean
---@field PrintDebugLogEx boolean
FDropTrackCollisionDetection_Parabola = {}


---@class FDropTrackCollisionDetection_StraightRay
---@field IterationMax number
---@field CollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field IgnoreActorClasses ULuaArrayHelper<AActor>
---@field StartOffset FVector
---@field NavSearchExtend FVector
---@field RandomOffsetCircle number
---@field BisUseActorLoc boolean
---@field PrintDebugLogEx boolean
---@field CheckDistance number
---@field CheckStartOffset FVector
FDropTrackCollisionDetection_StraightRay = {}


---@class FDropTraceMethodSelector
---@field SelectMethod EDropItemTraceMethod
---@field DropTrackCollisionDetection_Parabola FDropTrackCollisionDetection_Parabola
---@field DropTrackCollisionDetection_StraightRay FDropTrackCollisionDetection_StraightRay
---@field DropTrackCollisionDetection_Invalid FDropTrackCollisionDetectionBase
FDropTraceMethodSelector = {}
