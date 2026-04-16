---@meta

---@class UEnvQueryGenerator_Donut: UEnvQueryGenerator_ProjectedPoints
---@field InnerRadius FAIDataProviderFloatValue @min distance between point and context
---@field OuterRadius FAIDataProviderFloatValue @max distance between point and context
---@field NumberOfRings FAIDataProviderIntValue @number of rings to generate
---@field PointsPerRing FAIDataProviderIntValue @number of items to generate for each ring
---@field ArcDirection FEnvDirection @If you generate items on a piece of circle you define direction of Arc cut here
---@field ArcAngle FAIDataProviderFloatValue @If you generate items on a piece of circle you define angle of Arc cut here
---@field bUseSpiralPattern boolean @If true, the rings of the wheel will be rotated in a spiral pattern.  If false, they will all be at a zero rotation, looking more like the spokes on a wheel.
---@field Center UEnvQueryContext @context
---@field bDefineArc number
local UEnvQueryGenerator_Donut = {}
