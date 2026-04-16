---@meta

---@class UCircleRandomFlightPathGenerator: UFlightPathGenerator
---@field RandomDroppingRange number
---@field StuffBoxToWorldBoundaryMinDis number
---@field LandscapeExtent number
---@field LandMidPoint FVector2D
---@field CircleCenter FVector
---@field CircleRadius FVector
local UCircleRandomFlightPathGenerator = {}

---@return EExecuteAirDropOrderResult
function UCircleRandomFlightPathGenerator:MakeFlightPath() end

---@param PlaneSpawnLoc FVector
function UCircleRandomFlightPathGenerator:CalNormalAirDropPlaneSpawnLocation(PlaneSpawnLoc) end
