---@meta

---@class FForeignControlPointData
FForeignControlPointData = {}


---@class FForeignSplineSegmentData
FForeignSplineSegmentData = {}


---@class FForeignWorldSplineData
FForeignWorldSplineData = {}


---@class ULandscapeSplinesComponent: UPrimitiveComponent
---@field ControlPoints ULuaArrayHelper<ULandscapeSplineControlPoint>
---@field Segments ULuaArrayHelper<ULandscapeSplineSegment>
---@field CookedForeignMeshComponents ULuaArrayHelper<UMeshComponent>
local ULandscapeSplinesComponent = {}
