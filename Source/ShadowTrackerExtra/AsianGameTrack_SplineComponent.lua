---@meta

---@class FAsianGameTrack_SplineComponentPlayerDevDebugInfo
---@field SegmentedSplineFindResult number
---@field LocationClosestToSpline FVector
---@field DistanceAtSpline number
FAsianGameTrack_SplineComponentPlayerDevDebugInfo = {}


---@class FAsianGameTrack_SplineComponentDevDebugInfo
---@field bDrawDebug boolean
---@field SplineWidth number
---@field QuadTreeUnionWorldBox2D FBox2D
---@field PlayerDevDebugInfos ULuaArrayHelper<FAsianGameTrack_SplineComponentPlayerDevDebugInfo>
FAsianGameTrack_SplineComponentDevDebugInfo = {}


---@class FAsianGameTrack_SplineComponentActorTestInTrackCacheResult
---@field DistanceAtSpline number
FAsianGameTrack_SplineComponentActorTestInTrackCacheResult = {}


---@class UAsianGameTrack_SplineComponent: UAsianGameTrackComponent
---@field bActorTestInTrackCacheResult number
---@field ActorTestInTrackCacheResults ULuaMapHelper<AActor, FAsianGameTrack_SplineComponentActorTestInTrackCacheResult>
---@field AsianGameTrack_SplineComponentDevDebugInfo FAsianGameTrack_SplineComponentDevDebugInfo
local UAsianGameTrack_SplineComponent = {}

function UAsianGameTrack_SplineComponent:OnRep_AsianGameTrack_SplineComponentDevDebugInfo() end
