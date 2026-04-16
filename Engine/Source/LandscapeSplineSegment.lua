---@meta

---@class LandscapeSplineMeshOrientation
---@field LSMO_XUp number
---@field LSMO_YUp number
---@field LSMO_MAX number
LandscapeSplineMeshOrientation = {}


---@class FLandscapeSplineInterpPoint
---@field Center FVector @Center Point
---@field Left FVector @Left Point
---@field Right FVector @Right Point
---@field FalloffLeft FVector @Left Falloff Point
---@field FalloffRight FVector @Right FalloffPoint
---@field StartEndFalloff number @Start/End Falloff fraction
FLandscapeSplineInterpPoint = {}


---@class FLandscapeSplineSegmentConnection
---@field TangentLen number
---@field SocketName string
FLandscapeSplineSegmentConnection = {}


---@class FLandscapeSplineMeshEntry
---@field MaterialOverrides ULuaArrayHelper<UMaterialInterface> @Overrides mesh's materials
---@field bCenterH number @Whether to automatically center the mesh horizontally on the spline
---@field CenterAdjust FVector2D @Tweak to center the mesh correctly on the spline
---@field bScaleToWidth number @Whether to scale the mesh to fit the width of the spline
---@field Scale FVector @Scale of the spline mesh, (Z=Forwards)
---@field Orientation_DEPRECATED LandscapeSplineMeshOrientation @Orientation of the spline mesh, X=Up or Y=Up
---@field ForwardAxis ESplineMeshAxis @Chooses the forward axis for the spline mesh orientation
---@field UpAxis ESplineMeshAxis @Chooses the up axis for the spline mesh orientation
FLandscapeSplineMeshEntry = {}


---@class ULandscapeSplineSegment: UObject
---@field SplineInfo FInterpCurveVector @Actual data for spline.
---@field Points ULuaArrayHelper<FLandscapeSplineInterpPoint> @Spline points
---@field Bounds FBox @Bounds of points
---@field LocalMeshComponents ULuaArrayHelper<USplineMeshComponent> @Spline meshes
local ULandscapeSplineSegment = {}
