---@meta

---@class UBTDecorator_DoesCollisionSatisfy: UBTDecorator
---@field TickInterval number
---@field TargetBlackboardKey any
---@field TraceCapsuleRadius number
---@field TraceCapsuleHalfHeight number
---@field TraceObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field AndTraceHeightDistance ULuaArrayHelper<FVector2D>
---@field OrTraceHeightDistance ULuaArrayHelper<FVector2D>
---@field bDrawDebugLine boolean
---@field DrawDebugLineDuration number
---@field DrawDebugLineThickness number
local UBTDecorator_DoesCollisionSatisfy = {}
