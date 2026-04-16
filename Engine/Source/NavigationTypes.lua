---@meta

---@class ENavigationOptionFlag
---@field Default number
---@field Enable number @Yes
---@field Disable number @No
---@field MAX number
ENavigationOptionFlag = {}


---@class ENavDataGatheringMode
---@field Default number
---@field Instant number
---@field Lazy number
ENavDataGatheringMode = {}


---@class ENavDataGatheringModeConfig
---@field Invalid number
---@field Instant number
---@field Lazy number
ENavDataGatheringModeConfig = {}


---@class ENavPathEvent
---@field Cleared number
---@field NewPath number
---@field UpdatedDueToGoalMoved number
---@field UpdatedDueToNavigationChanged number
---@field Invalidated number
---@field RePathFailed number
---@field MetaPathUpdate number
---@field Custom number
ENavPathEvent = {}


---@class ENavigationQueryResult
---@field Invalid number
---@field Error number
---@field Fail number
---@field Success number
ENavigationQueryResult = {}


---@class FNavAgentSelector
FNavAgentSelector = {}


---Movement capabilities, determining available movement options for Pawns and used by AI for reachability tests.
---@class FMovementProperties
---@field bCanCrouch number @If true, this Pawn is capable of crouching.
---@field bCanJump number @If true, this Pawn is capable of jumping.
---@field bCanWalk number @If true, this Pawn is capable of walking or moving on the ground.
---@field bCanSwim number @If true, this Pawn is capable of swimming or moving through fluid volumes.
---@field bCanFly number @If true, this Pawn is capable of flying.
FMovementProperties = {}


---Properties of representation of an 'agent' (or Pawn) used by AI navigation/pathfinding.
---@class FNavAgentProperties
---@field AgentRadius number @Radius of the capsule used for navigation/pathfinding.
---@field AgentHeight number @Total height of the capsule used for navigation/pathfinding.
---@field AgentStepHeight number @Step height to use, or -1 for default value from navdata's config.
---@field NavWalkingSearchHeightScale number @Scale factor to apply to height of bounds when searching for navmesh to project to when nav walking
---@field PreferredNavData ANavigationData @Type of navigation data used by agent, null means "any"
---@field AgentType number
FNavAgentProperties = {}


---@class FNavDataConfig
---@field Name string
---@field Color FColor
---@field DefaultQueryExtent FVector
---@field NavigationDataClass ANavigationData
---@field NavigationDataClassName FSoftClassPath
FNavDataConfig = {}


---@class FDynamicGenerateTargetNavigation
---@field TargetLocation FVector
---@field GenerateRadiusMin number
---@field GenerateRadiusMax number
FDynamicGenerateTargetNavigation = {}


---@class FNavDataPerInstanceTransformDelegate : ULuaSingleDelegate
FNavDataPerInstanceTransformDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FBox, Param2: ULuaArrayHelper<FTransform>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNavDataPerInstanceTransformDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FBox
---@param Param2 ULuaArrayHelper<FTransform>
function FNavDataPerInstanceTransformDelegate:Execute(Param1, Param2) end


---Delegate used to communicate that path finding query has been finished. (may contain path leading as close to destination as possible) and ENavigationQueryResult == ENavigationQueryResult::Success
---@class FNavPathQueryDelegate : ULuaSingleDelegate
FNavPathQueryDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FNavPathSharedPtr) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNavPathQueryDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FNavPathSharedPtr
function FNavPathQueryDelegate:Execute(Param1, Param2) end


---@class UNavigationTypes: UObject
local UNavigationTypes = {}
