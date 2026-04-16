---@meta

---@class EEnvTestPurpose
---@field Filter number @Filter Only
---@field Score number @Score Only
---@field FilterAndScore number @Filter and Score
EEnvTestPurpose = {}


---@class EEnvTestFilterType
---@field Minimum number @For numeric tests.
---@field Maximum number @For numeric tests.
---@field Range number @For numeric tests.
---@field Match number @For Boolean tests.
EEnvTestFilterType = {}


---@class EEnvTestScoreEquation
---@field Linear number
---@field Square number
---@field InverseLinear number
---@field SquareRoot number
---@field Constant number
EEnvTestScoreEquation = {}


---@class EEnvTestWeight
---@field None number
---@field Square number
---@field Inverse number
---@field Unused number
---@field Constant number
---@field Skip number @Do not weight
EEnvTestWeight = {}


---@class EEnvTestCost
---@field Low number @Reading data, math operations (e.g. distance).
---@field Medium number @Processing data from multiple sources (e.g. fire tickets).
---@field High number @Really expensive calls (e.g. visibility traces, pathfinding).
EEnvTestCost = {}


---@class EEnvTestFilterOperator
---@field AllPass number
---@field AnyPass number
EEnvTestFilterOperator = {}


---@class EEnvTestScoreOperator
---@field AverageScore number
---@field MinScore number
---@field MaxScore number
EEnvTestScoreOperator = {}


---@class EEnvQueryStatus
---@field Processing number
---@field Success number
---@field Failed number
---@field Aborted number
---@field OwnerLost number
---@field MissingParam number
EEnvQueryStatus = {}


---@class EEnvQueryRunMode
---@field SingleResult number @Single Best Item
---@field RandomBest5Pct number @Single Random Item from Best 5%
---@field RandomBest25Pct number @Single Random Item from Best 25%
---@field AllMatching number
EEnvQueryRunMode = {}


---@class EEnvQueryParam
---@field Float number
---@field Int number
---@field Bool number
EEnvQueryParam = {}


---@class EAIParamType
---@field Float number
---@field Int number
---@field Bool number
---@field MAX number
EAIParamType = {}


---@class EEnvQueryTrace
---@field None number
---@field Navigation number
---@field Geometry number
---@field NavigationOverLedges number
EEnvQueryTrace = {}


---@class EEnvTraceShape
---@field Line number
---@field Box number
---@field Sphere number
---@field Capsule number
EEnvTraceShape = {}


---@class EEnvOverlapShape
---@field Box number
---@field Sphere number
---@field Capsule number
EEnvOverlapShape = {}


---@class EEnvDirection
---@field TwoPoints number @Two Points
---@field Rotation number
EEnvDirection = {}


---@class EEnvQueryTestClamping
---@field None number
---@field SpecifiedValue number @Clamp to value specified in test.
---@field FilterThreshold number @Clamp to test's filter threshold.
EEnvQueryTestClamping = {}


---@class FEnvNamedValue
---@field ParamName string
---@field ParamType EAIParamType
---@field Value number
FEnvNamedValue = {}


---@class FEnvDirection
---@field LineFrom UEnvQueryContext @line: start context
---@field LineTo UEnvQueryContext @line: finish context
---@field Rotation UEnvQueryContext @rotation: direction context
---@field DirMode EEnvDirection @defines direction of second line used by test
FEnvDirection = {}


---@class FEnvTraceData
---@field VersionNum number @version number for updates
---@field NavigationFilter UNavigationQueryFilter @navigation filter for tracing
---@field ProjectDown number @search height: below point
---@field ProjectUp number @search height: above point
---@field ExtentX number @shape parameter for trace
---@field ExtentY number @shape parameter for trace
---@field ExtentZ number @shape parameter for trace
---@field PostProjectionVerticalOffset number @this value will be added to resulting location's Z axis. Can be useful when projecting points to navigation since navmesh is just an approximation of level geometry and items may end up being under collide-able geometry which would for example falsify visibility tests.
---@field TraceChannel ETraceTypeQuery @geometry trace channel
---@field SerializedChannel ECollisionChannel @geometry trace channel for serialization purposes
---@field TraceShape EEnvTraceShape @shape used for geometry tracing
---@field TraceMode EEnvQueryTrace @shape used for geometry tracing
---@field bTraceComplex number @if set, trace will run on complex collisions
---@field bOnlyBlockingHits number @if set, trace will look only for blocking hits
---@field bCanTraceOnNavMesh number @if set, editor will allow picking navmesh trace
---@field bCanTraceOnGeometry number @if set, editor will allow picking geometry trace
---@field bCanDisableTrace number @if set, editor will allow
---@field bCanProjectDown number @if set, editor show height up/down properties for projection
FEnvTraceData = {}


---@class FEnvOverlapData
---@field ExtentX number @shape parameter for overlap
---@field ExtentY number @shape parameter for overlap
---@field ExtentZ number @shape parameter for overlap
---@field ShapeOffset FVector
---@field OverlapChannel ECollisionChannel @geometry trace channel used for overlap
---@field OverlapShape EEnvOverlapShape @shape used for geometry overlap
---@field bOnlyBlockingHits number @if set, overlap will look only for blocking hits
---@field bOverlapComplex number @if set, overlap will run on complex collisions
FEnvOverlapData = {}


---@class FEnvQueryResult
---@field ItemType UEnvQueryItemType @type of generated items
---@field OptionIndex number @index of query option, that generated items
---@field QueryID number @instance ID
FEnvQueryResult = {}


---@class FAIDynamicParam
---@field ParamName string
---@field ParamType EAIParamType
---@field Value number
---@field BBKey FBlackboardKeySelector
FAIDynamicParam = {}


---@class FEQSParametrizedQueryExecutionRequest
---@field QueryConfig ULuaArrayHelper<FAIDynamicParam>
---@field EQSQueryBlackboardKey FBlackboardKeySelector @blackboard key storing an EQS query template
---@field RunMode EEnvQueryRunMode @determines which item will be stored (All = only first matching)
---@field bUseBBKeyForQueryTemplate number
FEQSParametrizedQueryExecutionRequest = {}


---@class FQueryFinishedSignature : ULuaSingleDelegate
FQueryFinishedSignature = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: TSharedPtr<FEnvQueryResult>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FQueryFinishedSignature:Bind(Callback, Obj) end

---执行委托
---@param Param1 TSharedPtr<FEnvQueryResult>
function FQueryFinishedSignature:Execute(Param1) end


---@class UEnvQueryTypes: UObject
local UEnvQueryTypes = {}
