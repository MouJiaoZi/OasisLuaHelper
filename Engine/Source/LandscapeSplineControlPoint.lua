---@meta

---@class FLandscapeSplineConnection
---@field End number
FLandscapeSplineConnection = {}


---@class ULandscapeSplineControlPoint: UObject
---@field Location FVector @Location in Landscape-space
---@field Rotation FRotator @Rotation of tangent vector at this point (in landscape-space)
---@field Width number @Width of the spline at this point.
---@field SideFalloff number @Falloff at the sides of the spline at this point.
---@field EndFalloff number @Falloff at the start/end of the spline (if this point is a start or end point, otherwise ignored).
---@field ConnectedSegments ULuaArrayHelper<FLandscapeSplineConnection>
---@field Points ULuaArrayHelper<FLandscapeSplineInterpPoint> @Spline points
---@field Bounds FBox @Bounds of points
local ULandscapeSplineControlPoint = {}
