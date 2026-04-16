---@meta

---@class EEnvTestDistance
---@field Distance3D number
---@field Distance2D number
---@field DistanceZ number
---@field DistanceAbsoluteZ number @Distance Z (Absolute)
EEnvTestDistance = {}


---@class UEnvQueryTest_Distance: UEnvQueryTest
---@field TestMode EEnvTestDistance @testing mode
---@field DistanceTo UEnvQueryContext @context
local UEnvQueryTest_Distance = {}
