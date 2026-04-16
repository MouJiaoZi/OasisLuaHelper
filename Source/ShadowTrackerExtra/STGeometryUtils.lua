---@meta

---@class USTGeometryUtils: UBlueprintFunctionLibrary
local USTGeometryUtils = {}

---@param Point FVector2D
---@param StartPoint FVector2D
---@param EndPoint FVector2D
---@param Ratio number
---@return boolean
function USTGeometryUtils:CalRatioOfPointInLintseg(Point, StartPoint, EndPoint, Ratio) end

---@param CircleCenter FVector2D
---@param Radius1 number
---@param Radius2 number
---@param OutPoint0 FVector2D
---@param OutPoint1 FVector2D
---@param RestrictedZoneLoc FVector2D
---@param RestrictedZoneRadius number
---@return boolean
function USTGeometryUtils:CalRouteFromTwoCircle(CircleCenter, Radius1, Radius2, OutPoint0, OutPoint1, RestrictedZoneLoc, RestrictedZoneRadius) end

---@param CircleCenter FVector2D
---@param Radius1 number
---@param MustPassPoint FVector2D
---@param OutPoint0 FVector2D
---@param OutPoint1 FVector2D
---@param RestrictedZoneLoc FVector2D
---@param RestrictedZoneRadius number
---@return boolean
function USTGeometryUtils:CalRouteFromOnePointAndOneCircle(CircleCenter, Radius1, MustPassPoint, OutPoint0, OutPoint1, RestrictedZoneLoc, RestrictedZoneRadius) end

---@param CircleCenter FVector2D
---@param Radius number
---@param OutPoint0 FVector2D
---@param OutPoint1 FVector2D
---@param Rad number
---@param LinePoint FVector2D
---@param RestrictedZoneLoc FVector2D
---@param RestrictedZoneRadius number
---@return boolean
function USTGeometryUtils:CalRouteFromCircleAndLine(CircleCenter, Radius, OutPoint0, OutPoint1, Rad, LinePoint, RestrictedZoneLoc, RestrictedZoneRadius) end

---@param Point0 FVector2D
---@param Point1 FVector2D
---@param CircleCenter FVector2D
---@param Radius number
---@param OutPoint0 FVector2D
---@param OutPoint1 FVector2D
---@return number
function USTGeometryUtils:CalIntersectionOfLineWithCircle(Point0, Point1, CircleCenter, Radius, OutPoint0, OutPoint1) end

---@param Point0 FVector2D
---@param Point1 FVector2D
---@param PolygonPoints ULuaArrayHelper<FVector2D>
---@param OutPoint0 FVector2D
---@param OutPoint1 FVector2D
---@return number
function USTGeometryUtils:CalIntersectionOfLineWithPolygon(Point0, Point1, PolygonPoints, OutPoint0, OutPoint1) end

---@param Point0 FVector2D
---@param Point1 FVector2D
---@return number
function USTGeometryUtils:CalLengthOfSegment2D(Point0, Point1) end

---@param Point0 FVector2D
---@param Point1 FVector2D
---@param Ratio number
---@return FVector2D
function USTGeometryUtils:CalPointInSegmentWithRatio(Point0, Point1, Ratio) end

---@param MinPoint FVector2D
---@param MaxPoint FVector2D
function USTGeometryUtils:CalBoundingBoxPoints(MinPoint, MaxPoint) end

---@param FromTrans FTransform
---@param ToTrans FTransform
---@param Alpha number
---@return FTransform
function USTGeometryUtils:BlendTransform(FromTrans, ToTrans, Alpha) end

---@param Circle1 FVector
---@param Circle2 FVector
---@param IntersectPoints ULuaArrayHelper<FVector2D>
function USTGeometryUtils:CalIntersectionOfTwoCircles(Circle1, Circle2, IntersectPoints) end

---@param CircleCenterToFirst FVector2D
---@param BaseCircle FVector2D
---@param IntersectPoints ULuaArrayHelper<FVector2D>
---@return number
function USTGeometryUtils:CalRandomValidHalfAngle(CircleCenterToFirst, BaseCircle, IntersectPoints) end

---@param Value number
---@return number
function USTGeometryUtils:DCMP(Value) end

---@param Point FVector2D
---@param Start FVector2D
---@param End FVector2D
---@return boolean
function USTGeometryUtils:CheckPointOnSegment(Point, Start, End) end

---@param Point FVector2D
---@param PolygonPoints ULuaArrayHelper<FVector2D>
---@return boolean
function USTGeometryUtils:CheckPointInPolygon(Point, PolygonPoints) end

---@param CircleCenter FVector2D
---@param Radius1 number
---@param Rad number
---@param OutPoint0 FVector2D
---@param OutPoint1 FVector2D
function USTGeometryUtils:CalPointBasedOnCircleAndRadius(CircleCenter, Radius1, Rad, OutPoint0, OutPoint1) end

---@param LinePointStart FVector2D
---@param LinePointEnd FVector2D
---@param Points ULuaArrayHelper<FVector2D>
---@param Radius number
---@return number
function USTGeometryUtils:CalPointNumInRadius(LinePointStart, LinePointEnd, Points, Radius) end

---@param CircleCenter FVector2D
---@param CircleRadius number
---@param MustPassPoint FVector2D
---@param OutStartPoint FVector2D
---@param OutEndPoint FVector2D
---@param KeyPoints ULuaArrayHelper<FVector2D>
---@param KeyPointRangeRadius number
---@param MinPassKeyPointNum number
---@param RestrictedZoneLoc FVector2D
---@param RestrictedZoneRadius number
function USTGeometryUtils:CalRouteFromOnePointAndOneCircleWithKeyPoints(CircleCenter, CircleRadius, MustPassPoint, OutStartPoint, OutEndPoint, KeyPoints, KeyPointRangeRadius, MinPassKeyPointNum, RestrictedZoneLoc, RestrictedZoneRadius) end
