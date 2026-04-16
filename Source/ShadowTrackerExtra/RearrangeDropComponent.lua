---@meta

---@class FRealRangeBox
---@field LeftTopUp FVector
---@field RightTopUp FVector
---@field LeftBottomUp FVector
---@field RightBottomUp FVector
---@field LeftTopDown FVector
---@field RightTopDown FVector
---@field LeftBottomDown FVector
---@field RightBottomDown FVector
FRealRangeBox = {}


---@class URearrangeDropStrategyBase: UObject
---@field TraceGroundDeep number
local URearrangeDropStrategyBase = {}


---@class URearrangeDropStrategyEdgeClosest: URearrangeDropStrategyBase
local URearrangeDropStrategyEdgeClosest = {}


---@class URearrangeDropComponent: UBoxComponent
---@field DropStrategyTemplate URearrangeDropStrategyBase
---@field DebugDrawTime number
---@field RealRangeBox FRealRangeBox
---@field RearrangeHitResult FHitResult
local URearrangeDropComponent = {}

---@param InDropLocation FVector
---@return FVector
function URearrangeDropComponent:RearrangeDropLocation(InDropLocation) end

---@param Point FVector
---@return boolean
function URearrangeDropComponent:CheckPointIsInRealRangeBox(Point) end

function URearrangeDropComponent:CalculateRealRangeBox() end

---@param LeftTopUp FVector
---@param RightTopUp FVector
---@param LeftBottomUp FVector
---@param RightBottomUp FVector
---@param LeftTopDown FVector
---@param RightTopDown FVector
---@param LeftBottomDown FVector
---@param RightBottomDown FVector
function URearrangeDropComponent:GetCornerLocationWithTransform(LeftTopUp, RightTopUp, LeftBottomUp, RightBottomUp, LeftTopDown, RightTopDown, LeftBottomDown, RightBottomDown) end

---@param Time number
---@param Color FColor
---@param Thick number
---@param DrawBoundBox boolean
function URearrangeDropComponent:DebugDrawCornerBox(Time, Color, Thick, DrawBoundBox) end

---@param Start FVector
---@param End FVector
---@param HitInfo FHitResult
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param bForceStatic boolean
---@return boolean
function URearrangeDropComponent:TraceGroundPoint(Start, End, HitInfo, IgnoreActors, bForceStatic) end

---@param Point FVector
---@param Line1PointA FVector
---@param Line1PointB FVector
---@param Line2PointA FVector
---@param Line2PointB FVector
---@return boolean
function URearrangeDropComponent:CheckPointIsBetweenTwoLine(Point, Line1PointA, Line1PointB, Line2PointA, Line2PointB) end
