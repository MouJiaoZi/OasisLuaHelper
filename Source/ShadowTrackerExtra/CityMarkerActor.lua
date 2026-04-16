---@meta

---@class ACityMarkerActor: AActor
---@field Tag string
local ACityMarkerActor = {}

---@param PlaneStart FVector
---@param PlaneEnd FVector
---@return string
function ACityMarkerActor:GetDistanceStr(PlaneStart, PlaneEnd) end

---@param Box FBox
---@param OutVertices ULuaArrayHelper<FVector>
function ACityMarkerActor:GetBoundingBoxVertices(Box, OutVertices) end
