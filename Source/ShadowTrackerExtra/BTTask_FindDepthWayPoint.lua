---@meta

---查找AI深度路点 给定目标点，深度为TargetDepth。 1.寻找最近的路点，深度为NearestDepth。 a.TargetDepth == NearestDepth，已经在同一深度，不需要找，设置黑板AlmostAtTarget b.AI已经抵达该路点且Abs(TargetDepth - NearestDepth) <= 1，表示一下层可以直接去往目标点，不需要找，设置黑板AlmostAtTarget c.AI没有抵达改路点，则将移动黑板设为改路点移动过去，否则寻找下一层路点，将移动黑板设为改路点移动过去
---@class UBTTask_FindDepthWayPoint: UBTTaskNode
---@field InTargetDepthKey FBlackboardKeySelector
---@field OutAlmostAtTargetKey FBlackboardKeySelector
---@field OutMoveLocationKey FBlackboardKeySelector
---@field InPointRadius number
---@field MaxRandIterTimes number
---@field bDebugDraw boolean
---@field DebugDrawPointTime number
local UBTTask_FindDepthWayPoint = {}
