---@meta

---@class FBatchedLine
---@field Start FVector
---@field End FVector
---@field Color FLinearColor
---@field Thickness number
---@field RemainingLifeTime number
---@field DepthPriority number
FBatchedLine = {}


---@class FBatchedPoint
---@field Position FVector
---@field Color FLinearColor
---@field PointSize number
---@field RemainingLifeTime number
---@field DepthPriority number
FBatchedPoint = {}


---The line batch component buffers and draws lines (and some other line-based shapes) in a scene. This can be useful for debug drawing, but is not very performant for runtime use.
---@class ULineBatchComponent: UPrimitiveComponent
local ULineBatchComponent = {}
