---@meta

---飞行pathfollow
---@class UFlyPathFollowingComponent: UNewPathFollowingComponent
---@field DefaultFlyHeight number @the fly height offset by navmesh
---@field MinFlyHeight number @the min fly height offset by navmesh/water
---@field NavAgentRadius number @the agent radius when build navmesh
---@field SweepTraceChannel ECollisionChannel @the Trace Channel for fly sweep
---@field SweepIgnoreClassTypes ULuaArrayHelper<AActor> @ignore class when fly sweep
---@field bFlyOnWater boolean
---@field SweepTraceQueryMobilityType EOverrideQueryMobilityType
---@field SweepTraceIgnoreCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field DynamicTraceObjectTypes ULuaArrayHelper<EObjectTypeQuery> @the ObjectTypes for dynamic trace
---@field bDrawCurMoveTargetLine boolean
---@field bDrawSweepLine boolean
---@field bDrawPathRecord boolean
local UFlyPathFollowingComponent = {}
