---@meta

---@class EPointOnCircleSpacingMethod
---@field BySpaceBetween number
---@field ByNumberOfPoints number
EPointOnCircleSpacingMethod = {}


---@class UEnvQueryGenerator_OnCircle: UEnvQueryGenerator_ProjectedPoints
---@field CircleRadius FAIDataProviderFloatValue @max distance of path between point and context
---@field SpaceBetween FAIDataProviderFloatValue @items will be generated on a circle this much apart
---@field NumberOfPoints FAIDataProviderIntValue @this many items will be generated on a circle
---@field PointOnCircleSpacingMethod EPointOnCircleSpacingMethod @how we are choosing where the points are in the circle
---@field ArcDirection FEnvDirection @If you generate items on a piece of circle you define direction of Arc cut here
---@field ArcAngle FAIDataProviderFloatValue @If you generate items on a piece of circle you define angle of Arc cut here
---@field AngleRadians number
---@field CircleCenter UEnvQueryContext @context
---@field bIgnoreAnyContextActorsWhenGeneratingCircle boolean @ignore tracing into context actors when generating the circle
---@field CircleCenterZOffset FAIDataProviderFloatValue @context offset
---@field TraceData FEnvTraceData @horizontal trace for nearest obstacle
---@field bDefineArc number
local UEnvQueryGenerator_OnCircle = {}
