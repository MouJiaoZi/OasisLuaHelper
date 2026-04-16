---@meta

---Simple grid, generates points in 2D square around context
---@class UEnvQueryGenerator_SimpleGrid: UEnvQueryGenerator_ProjectedPoints
---@field GridSize FAIDataProviderFloatValue @half of square's extent, like a radius
---@field SpaceBetween FAIDataProviderFloatValue @generation density
---@field GenerateAround UEnvQueryContext @context
local UEnvQueryGenerator_SimpleGrid = {}
