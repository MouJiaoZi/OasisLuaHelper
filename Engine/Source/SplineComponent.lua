---@meta

---Permitted spline point types for SplineComponent.
---@class ESplinePointType
---@field Linear number
---@field Curve number
---@field Constant number
---@field CurveClamped number
---@field CurveCustomTangent number
ESplinePointType = {}


---Types of coordinate space accepted by the functions.
---@class ESplineCoordinateSpace
---@field Local number
---@field World number
ESplineCoordinateSpace = {}


---@class ESplineSnappingType
---@field NoSnapping number @无
---@field SnapToSurface number @吸附到物体表面
---@field SnapToGround number @吸附到地面
ESplineSnappingType = {}


---@class FSplineCurves
---@field Position FInterpCurveVector @Spline built from position data.
---@field Rotation FInterpCurveQuat @Spline built from rotation data.
---@field Scale FInterpCurveVector @Spline built from scale data.
---@field ReparamTable FInterpCurveFloat @Input: distance along curve, output: parameter that puts you there.
FSplineCurves = {}


---@class FSplinePoint
---@field InputKey number
---@field Position FVector
---@field ArriveTangent FVector
---@field LeaveTangent FVector
---@field Rotation FRotator
---@field Scale FVector
---@field Type ESplinePointType
FSplinePoint = {}


---@class USplineComponentEditorModifer: UObject
local USplineComponentEditorModifer = {}

---@param InPosition FVector
---@return FVector
function USplineComponentEditorModifer:ModifyPostion(InPosition) end


---A spline component is a spline shape which can be used for other purposes (e.g. animating objects). It contains debug rendering capabilities.
---@class USplineComponent: UPrimitiveComponent
---@field SplineCurves FSplineCurves
---@field SplineInfo_DEPRECATED FInterpCurveVector @Deprecated - please use GetSplinePointsPosition() to fetch this FInterpCurve
---@field SplineRotInfo_DEPRECATED FInterpCurveQuat @Deprecated - please use GetSplinePointsRotation() to fetch this FInterpCurve
---@field SplineScaleInfo_DEPRECATED FInterpCurveVector @Deprecated - please use GetSplinePointsScale() to fetch this FInterpCurve
---@field SplineReparamTable_DEPRECATED FInterpCurveFloat
---@field bAllowSplineEditingPerInstance_DEPRECATED boolean
---@field ReparamStepsPerSegment number @Number of steps per spline segment to place in the reparameterization table
---@field Duration number @Specifies the duration of the spline in seconds
---@field bStationaryEndpoints boolean @Whether the endpoints of the spline are considered stationary when traversing the spline at non-constant velocity.  Essentially this sets the endpoints' tangents to zero vectors.
---@field bSplineHasBeenEdited boolean @Whether the spline has been edited from its default by the spline component visualizer
---@field bModifiedByConstructionScript boolean
---@field bInputSplinePointsToConstructionScript boolean @Whether the spline points should be passed to the User Construction Script so they can be further manipulated by it. If false, they will not be visible to it, and it will not be able to influence the per-instance positions set in the editor.
---@field bDrawDebug boolean @If true, the spline will be rendered if the Splines showflag is set.
---@field bClosedLoop boolean @Whether the spline is to be considered as a closed loop. Use SetClosedLoop() to set this property, and IsClosedLoop() to read it.
---@field bLoopPositionOverride boolean
---@field LoopPosition number
---@field DefaultUpVector FVector @Default up vector in local space to be used when calculating transforms along the spline
---@field bUseConfigRotation boolean @Engine Modify Start
---@field bUseConfigRotationXY boolean
local USplineComponent = {}

---Update the spline tangents and SplineReparamTable
function USplineComponent:UpdateSpline() end

---Get distance along the spline at the provided input key value
---@param InKey number
---@return number
function USplineComponent:GetDistanceAlongSplineAtSplineInputKey(InKey) end

---Specify unselected spline component segment color in the editor
---@param SegmentColor FLinearColor
function USplineComponent:SetUnselectedSplineSegmentColor(SegmentColor) end

---Specify selected spline component segment color in the editor
---@param SegmentColor FLinearColor
function USplineComponent:SetSelectedSplineSegmentColor(SegmentColor) end

function USplineComponent:EditorSnapToGround() end

function USplineComponent:EditorNormalizeSplineTangent() end

---Specify whether this spline should be rendered when the Editor/Game spline show flag is set
---@param bShow boolean
function USplineComponent:SetDrawDebug(bShow) end

---Specify whether the spline is a closed loop or not. The loop position will be at 1.0 after the last point's input key
---@param bInClosedLoop boolean
---@param bUpdateSpline boolean
function USplineComponent:SetClosedLoop(bInClosedLoop, bUpdateSpline) end

---Specify whether the spline is a closed loop or not, and if so, the input key corresponding to the loop point
---@param bInClosedLoop boolean
---@param Key number
---@param bUpdateSpline boolean
function USplineComponent:SetClosedLoopAtPosition(bInClosedLoop, Key, bUpdateSpline) end

---Check whether the spline is a closed loop or not
---@return boolean
function USplineComponent:IsClosedLoop() end

---Clears all the points in the spline
---@param bUpdateSpline boolean
function USplineComponent:ClearSplinePoints(bUpdateSpline) end

---Adds an FSplinePoint to the spline. This contains its input key, position, tangent, rotation and scale.
---@param Point FSplinePoint
---@param bUpdateSpline boolean
function USplineComponent:AddPoint(Point, bUpdateSpline) end

---Adds an array of FSplinePoints to the spline.
---@param Points ULuaArrayHelper<FSplinePoint>
---@param bUpdateSpline boolean
function USplineComponent:AddPoints(Points, bUpdateSpline) end

---Adds a point to the spline
---@param Position FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUpdateSpline boolean
function USplineComponent:AddSplinePoint(Position, CoordinateSpace, bUpdateSpline) end

---Adds a point to the spline at the specified index
---@param Position FVector
---@param Index number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUpdateSpline boolean
function USplineComponent:AddSplinePointAtIndex(Position, Index, CoordinateSpace, bUpdateSpline) end

---Removes point at specified index from the spline
---@param Index number
---@param bUpdateSpline boolean
function USplineComponent:RemoveSplinePoint(Index, bUpdateSpline) end

---Adds a world space point to the spline
---@param Position FVector
function USplineComponent:AddSplineWorldPoint(Position) end

---Adds a local space point to the spline
---@param Position FVector
function USplineComponent:AddSplineLocalPoint(Position) end

---Sets the spline to an array of points
---@param Points ULuaArrayHelper<FVector>
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUpdateSpline boolean
function USplineComponent:SetSplinePoints(Points, CoordinateSpace, bUpdateSpline) end

---Sets the spline to an array of world space points
---@param Points ULuaArrayHelper<FVector>
function USplineComponent:SetSplineWorldPoints(Points) end

---Sets the spline to an array of local space points
---@param Points ULuaArrayHelper<FVector>
function USplineComponent:SetSplineLocalPoints(Points) end

---Move an existing point to a new location
---@param PointIndex number
---@param InLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUpdateSpline boolean
function USplineComponent:SetLocationAtSplinePoint(PointIndex, InLocation, CoordinateSpace, bUpdateSpline) end

---Move an existing point to a new world location
---@param PointIndex number
---@param InLocation FVector
function USplineComponent:SetWorldLocationAtSplinePoint(PointIndex, InLocation) end

---Specify the tangent at a given spline point
---@param PointIndex number
---@param InTangent FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUpdateSpline boolean
function USplineComponent:SetTangentAtSplinePoint(PointIndex, InTangent, CoordinateSpace, bUpdateSpline) end

---Specify the tangents at a given spline point
---@param PointIndex number
---@param InArriveTangent FVector
---@param InLeaveTangent FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUpdateSpline boolean
function USplineComponent:SetTangentsAtSplinePoint(PointIndex, InArriveTangent, InLeaveTangent, CoordinateSpace, bUpdateSpline) end

---Specify the up vector at a given spline point
---@param PointIndex number
---@param InUpVector FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUpdateSpline boolean
function USplineComponent:SetUpVectorAtSplinePoint(PointIndex, InUpVector, CoordinateSpace, bUpdateSpline) end

---Get the type of a spline point
---@param PointIndex number
---@return ESplinePointType
function USplineComponent:GetSplinePointType(PointIndex) end

---Specify the type of a spline point
---@param PointIndex number
---@param Type ESplinePointType
---@param bUpdateSpline boolean
function USplineComponent:SetSplinePointType(PointIndex, Type, bUpdateSpline) end

---Get the number of points that make up this spline
---@return number
function USplineComponent:GetNumberOfSplinePoints() end

---Get the location at spline point
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetLocationAtSplinePoint(PointIndex, CoordinateSpace) end

---Get the world location at spline point
---@param PointIndex number
---@return FVector
function USplineComponent:GetWorldLocationAtSplinePoint(PointIndex) end

---Get the location at spline point
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetDirectionAtSplinePoint(PointIndex, CoordinateSpace) end

---Get the tangent at spline point. This fetches the Leave tangent of the point.
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetTangentAtSplinePoint(PointIndex, CoordinateSpace) end

---Get the arrive tangent at spline point
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetArriveTangentAtSplinePoint(PointIndex, CoordinateSpace) end

---Get the leave tangent at spline point
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetLeaveTangentAtSplinePoint(PointIndex, CoordinateSpace) end

---Get the rotation at spline point as a rotator
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FRotator
function USplineComponent:GetRotationAtSplinePoint(PointIndex, CoordinateSpace) end

---Get the up vector at spline point
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetUpVectorAtSplinePoint(PointIndex, CoordinateSpace) end

---Get the right vector at spline point
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetRightVectorAtSplinePoint(PointIndex, CoordinateSpace) end

---Get the amount of roll at spline point, in degrees
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@return number
function USplineComponent:GetRollAtSplinePoint(PointIndex, CoordinateSpace) end

---Get the scale at spline point
---@param PointIndex number
---@return FVector
function USplineComponent:GetScaleAtSplinePoint(PointIndex) end

---Get the transform at spline point
---@param PointIndex number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseScale boolean
---@return FTransform
function USplineComponent:GetTransformAtSplinePoint(PointIndex, CoordinateSpace, bUseScale) end

---Get location and tangent at a spline point
---@param PointIndex number
---@param Location FVector
---@param Tangent FVector
---@param CoordinateSpace ESplineCoordinateSpace
function USplineComponent:GetLocationAndTangentAtSplinePoint(PointIndex, Location, Tangent, CoordinateSpace) end

---Get local location and tangent at a spline point
---@param PointIndex number
---@param LocalLocation FVector
---@param LocalTangent FVector
function USplineComponent:GetLocalLocationAndTangentAtSplinePoint(PointIndex, LocalLocation, LocalTangent) end

---Get the distance along the spline at the spline point
---@param PointIndex number
---@return number
function USplineComponent:GetDistanceAlongSplineAtSplinePoint(PointIndex) end

---Returns total length along this spline
---@return number
function USplineComponent:GetSplineLength() end

---Sets the default up vector used by this spline
---@param UpVector FVector
---@param CoordinateSpace ESplineCoordinateSpace
function USplineComponent:SetDefaultUpVector(UpVector, CoordinateSpace) end

---Gets the default up vector used by this spline
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetDefaultUpVector(CoordinateSpace) end

---Given a distance along the length of this spline, return the corresponding input key at that point
---@param Distance number
---@return number
function USplineComponent:GetInputKeyAtDistanceAlongSpline(Distance) end

---Given a distance along the length of this spline, return the corresponding time at that point
---@param Distance number
---@return number
function USplineComponent:GetTimeAtDistanceAlongSpline(Distance) end

---Given a distance along the length of this spline, return the point in space where this puts you
---@param Distance number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetLocationAtDistanceAlongSpline(Distance, CoordinateSpace) end

---Given a distance along the length of this spline, return the point in world space where this puts you
---@param Distance number
---@return FVector
function USplineComponent:GetWorldLocationAtDistanceAlongSpline(Distance) end

---Given a distance along the length of this spline, return a unit direction vector of the spline tangent there.
---@param Distance number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetDirectionAtDistanceAlongSpline(Distance, CoordinateSpace) end

---Given a distance along the length of this spline, return a unit direction vector of the spline tangent there, in world space.
---@param Distance number
---@return FVector
function USplineComponent:GetWorldDirectionAtDistanceAlongSpline(Distance) end

---Given a distance along the length of this spline, return the tangent vector of the spline there.
---@param Distance number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetTangentAtDistanceAlongSpline(Distance, CoordinateSpace) end

---Given a distance along the length of this spline, return the tangent vector of the spline there, in world space.
---@param Distance number
---@return FVector
function USplineComponent:GetWorldTangentAtDistanceAlongSpline(Distance) end

---Given a distance along the length of this spline, return a rotation corresponding to the spline's rotation there.
---@param Distance number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FRotator
function USplineComponent:GetRotationAtDistanceAlongSpline(Distance, CoordinateSpace) end

---Given a distance along the length of this spline, return a rotation corresponding to the spline's rotation there, in world space.
---@param Distance number
---@return FRotator
function USplineComponent:GetWorldRotationAtDistanceAlongSpline(Distance) end

---Given a distance along the length of this spline, return a unit direction vector corresponding to the spline's up vector there.
---@param Distance number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetUpVectorAtDistanceAlongSpline(Distance, CoordinateSpace) end

---Given a distance along the length of this spline, return a unit direction vector corresponding to the spline's right vector there.
---@param Distance number
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:GetRightVectorAtDistanceAlongSpline(Distance, CoordinateSpace) end

---Given a distance along the length of this spline, return the spline's roll there, in degrees.
---@param Distance number
---@param CoordinateSpace ESplineCoordinateSpace
---@return number
function USplineComponent:GetRollAtDistanceAlongSpline(Distance, CoordinateSpace) end

---Given a distance along the length of this spline, return the spline's scale there.
---@param Distance number
---@return FVector
function USplineComponent:GetScaleAtDistanceAlongSpline(Distance) end

---Given a distance along the length of this spline, return an FTransform corresponding to that point on the spline.
---@param Distance number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseScale boolean
---@return FTransform
function USplineComponent:GetTransformAtDistanceAlongSpline(Distance, CoordinateSpace, bUseScale) end

---Given a time from 0 to the spline duration, return the point in space where this puts you
---@param Time number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseConstantVelocity boolean
---@return FVector
function USplineComponent:GetLocationAtTime(Time, CoordinateSpace, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return the point in space where this puts you
---@param Time number
---@param bUseConstantVelocity boolean
---@return FVector
function USplineComponent:GetWorldLocationAtTime(Time, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return a unit direction vector of the spline tangent there.
---@param Time number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseConstantVelocity boolean
---@return FVector
function USplineComponent:GetDirectionAtTime(Time, CoordinateSpace, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return a unit direction vector of the spline tangent there.
---@param Time number
---@param bUseConstantVelocity boolean
---@return FVector
function USplineComponent:GetWorldDirectionAtTime(Time, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return the spline's tangent there.
---@param Time number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseConstantVelocity boolean
---@return FVector
function USplineComponent:GetTangentAtTime(Time, CoordinateSpace, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return a rotation corresponding to the spline's position and direction there.
---@param Time number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseConstantVelocity boolean
---@return FRotator
function USplineComponent:GetRotationAtTime(Time, CoordinateSpace, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return a rotation corresponding to the spline's position and direction there.
---@param Time number
---@param bUseConstantVelocity boolean
---@return FRotator
function USplineComponent:GetWorldRotationAtTime(Time, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return the spline's up vector there.
---@param Time number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseConstantVelocity boolean
---@return FVector
function USplineComponent:GetUpVectorAtTime(Time, CoordinateSpace, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return the spline's right vector there.
---@param Time number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseConstantVelocity boolean
---@return FVector
function USplineComponent:GetRightVectorAtTime(Time, CoordinateSpace, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return the spline's transform at the corresponding position.
---@param Time number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseConstantVelocity boolean
---@param bUseScale boolean
---@return FTransform
function USplineComponent:GetTransformAtTime(Time, CoordinateSpace, bUseConstantVelocity, bUseScale) end

---Given a time from 0 to the spline duration, return the spline's roll there, in degrees.
---@param Time number
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseConstantVelocity boolean
---@return number
function USplineComponent:GetRollAtTime(Time, CoordinateSpace, bUseConstantVelocity) end

---Given a time from 0 to the spline duration, return the spline's scale there.
---@param Time number
---@param bUseConstantVelocity boolean
---@return FVector
function USplineComponent:GetScaleAtTime(Time, bUseConstantVelocity) end

---Given a location, in world space, return the input key closest to that location.
---@param WorldLocation FVector
---@return number
function USplineComponent:FindInputKeyClosestToWorldLocation(WorldLocation) end

---Given a location, in world space, return the point on the curve that is closest to the location.
---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:FindLocationClosestToWorldLocation(WorldLocation, CoordinateSpace) end

---Given a location, in world spcae, return a unit direction vector of the spline tangent closest to the location.
---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:FindDirectionClosestToWorldLocation(WorldLocation, CoordinateSpace) end

---Given a location, in world space, return the tangent vector of the spline closest to the location.
---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:FindTangentClosestToWorldLocation(WorldLocation, CoordinateSpace) end

---Given a location, in world space, return rotation corresponding to the spline's rotation closest to the location.
---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@return FRotator
function USplineComponent:FindRotationClosestToWorldLocation(WorldLocation, CoordinateSpace) end

---Given a location, in world space, return a unit direction vector corresponding to the spline's up vector closest to the location.
---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:FindUpVectorClosestToWorldLocation(WorldLocation, CoordinateSpace) end

---Given a location, in world space, return a unit direction vector corresponding to the spline's right vector closest to the location.
---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@return FVector
function USplineComponent:FindRightVectorClosestToWorldLocation(WorldLocation, CoordinateSpace) end

---Given a location, in world space, return the spline's roll closest to the location, in degrees.
---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@return number
function USplineComponent:FindRollClosestToWorldLocation(WorldLocation, CoordinateSpace) end

---Given a location, in world space, return the spline's scale closest to the location.
---@param WorldLocation FVector
---@return FVector
function USplineComponent:FindScaleClosestToWorldLocation(WorldLocation) end

---Given a location, in world space, return an FTransform closest to that location.
---@param WorldLocation FVector
---@param CoordinateSpace ESplineCoordinateSpace
---@param bUseScale boolean
---@return FTransform
function USplineComponent:FindTransformClosestToWorldLocation(WorldLocation, CoordinateSpace, bUseScale) end
