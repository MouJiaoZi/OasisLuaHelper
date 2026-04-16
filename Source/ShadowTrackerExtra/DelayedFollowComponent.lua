---@meta

---@class UDelayedFollowComponent: UActorComponent
---@field MoveComponentSelector FPrimitiveComponentSelector
---@field PawnStateOffsetMap ULuaMapHelper<EPawnState, FVector>
---@field MinDeltaTime number
---@field bDrawDebugBox boolean
local UDelayedFollowComponent = {}
