---@meta

---@class EQSNode_TestPurposeType
---@field Filter number @Filter Only
---@field Score number @Score Only
EQSNode_TestPurposeType = {}


---@class EQSNode_ScoreEquationType
---@field Linear number
---@field InverseLinear number
EQSNode_ScoreEquationType = {}


---@class EQSNode_TestFilterType
---@field Minimum number @For numeric tests.
---@field Maximum number @For numeric tests.
---@field Ranges number @For numeric tests.
---@field Match number @For Boolean tests.
EQSNode_TestFilterType = {}


---@class FEQSProjectionData
---@field NavigationFilter UNavigationQueryFilter @navigation filter for tracing
---@field ProjectDown number @search height: below point
---@field ProjectUp number @search height: above point
---@field ExtentX number @shape parameter for trace
---@field PostProjectionVerticalOffset number
FEQSProjectionData = {}


---@class UEQSNodeTestBase: UObject
---@field TestPurpose EQSNode_TestPurposeType
---@field ScoringEquation EQSNode_ScoreEquationType
---@field FilterType EQSNode_TestFilterType
---@field FilterBoolValue boolean
---@field FilterValueMin number
---@field FilterValueMax number
local UEQSNodeTestBase = {}


---@class UEQSNodeTest_Distance: UEQSNodeTestBase
---@field DistanceTo FBlackboardKeySelector
---@field bDefineReferenceValue boolean
---@field ReferenceValue number
local UEQSNodeTest_Distance = {}


---@class UEQSNodeTest_Trace: UEQSNodeTestBase
---@field TraceTo FBlackboardKeySelector
---@field TraceHeightOffset number
local UEQSNodeTest_Trace = {}


---@class UEQSGenerator_Base: UObject
---@field ProjectionData FEQSProjectionData
local UEQSGenerator_Base = {}


---@class UEQSGenerator_SimpleGrid: UEQSGenerator_Base
---@field GridHalfSize number
---@field GridSpace number
local UEQSGenerator_SimpleGrid = {}


---@class UEQSGenerator_PathingGrid: UEQSGenerator_SimpleGrid
---@field PathToItem boolean @pathfinding direction
---@field NavigationFilter UNavigationQueryFilter @navigation filter to use in pathfinding
---@field ScanRangeMultiplier number @multiplier for max distance between point and context
local UEQSGenerator_PathingGrid = {}


---@class UEQSGenerator_Donut: UEQSGenerator_Base
---@field InnerRadius number
---@field OuterRadius number
---@field NumberOfRings number
---@field PointsPerRing number
---@field bUseSpiralPattern boolean
local UEQSGenerator_Donut = {}
