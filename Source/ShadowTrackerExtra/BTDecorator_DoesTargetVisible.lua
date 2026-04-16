---@meta

---目标在源Actor的前方设定角度内
---@class UBTDecorator_DoesTargetVisible: UBTDecorator
---@field TargetBlackboardKey FBlackboardKeySelector
---@field bTestUseSweep boolean
---@field TraceStartOffset FVector
---@field TraceEndOffset FVector
---@field QueryMobilityType EOverrideQueryMobilityType
---@field TestTraceChannel ECollisionChannel
---@field bTestTraceIgnorePawn boolean
---@field bCustomSrcLoc boolean
---@field SrcBlackboardKey FBlackboardKeySelector
local UBTDecorator_DoesTargetVisible = {}
