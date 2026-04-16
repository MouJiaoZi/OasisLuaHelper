---@meta

---@class ESegmentedSplineFindResult
---@field Invalid number
---@field ValidButNotRestrited number
---@field Valid number
ESegmentedSplineFindResult = {}


---@class FSegmentedSplineCurve
---@field SplineCurve FSplineCurves
---@field InverseReparamTable FInterpCurveFloat
FSegmentedSplineCurve = {}


---@class FSegmentedSplineDevDebugInfo
---@field bDrawDebug boolean
---@field Box FBox
FSegmentedSplineDevDebugInfo = {}


---@class USegmentedSplineComponent: USplineComponent
---@field NumKeysToSegmentSplineCurve number
---@field SplineWidth number
---@field bRestritedAtStartEndPoint number
---@field bResultEventIfRestrited number
---@field RestritedCosine2DFloatRange FFloatRange
---@field QuadTreeBoxOffset2D FVector2D
---@field SegmentedSplineCurves ULuaArrayHelper<FSegmentedSplineCurve>
---@field QuadTreeBox2Ds ULuaArrayHelper<FBox2D>
---@field QuadTreeBox2DExtents ULuaArrayHelper<FBox2D>
---@field QuadTreeUnionBox2D FBox2D
---@field QuadTreeBoxes ULuaArrayHelper<FBox>
---@field QuadTreeBoxExtents ULuaArrayHelper<FBox>
---@field QuadTreeUnionBox FBox
---@field LastInputKey number
local USegmentedSplineComponent = {}

function USegmentedSplineComponent:Cmd_Multicast_SegmentedSplineDevDebugInfo() end

---@param InSegmentedSplineDevDebugInfo FSegmentedSplineDevDebugInfo
function USegmentedSplineComponent:Multicast_SegmentedSplineDevDebugInfo(InSegmentedSplineDevDebugInfo) end

---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@param OutLocation FVector
---@return ESegmentedSplineFindResult
function USegmentedSplineComponent:FindLocationClosestToWorldLocation_Segmented(WorldLocation, CoordinateSpace, OutLocation) end

---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@param OutLocation FVector
---@param OutDistance number
---@return ESegmentedSplineFindResult
function USegmentedSplineComponent:FindLocationAndDistanceClosestToWorldLocation_Segmented(WorldLocation, CoordinateSpace, OutLocation, OutDistance) end

---@return FBox2D
function USegmentedSplineComponent:GetQuadTreeUnionWorldBox2D() end

---@return FBox
function USegmentedSplineComponent:GetQuadTreeUnionWorldBox() end
