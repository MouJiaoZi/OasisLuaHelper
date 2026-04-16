---@meta

---@class FBeforeSetNextMoveSegmentDelegate : ULuaSingleDelegate
FBeforeSetNextMoveSegmentDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBeforeSetNextMoveSegmentDelegate:Bind(Callback, Obj) end

---执行委托
function FBeforeSetNextMoveSegmentDelegate:Execute() end


---@class UNewPathFollowingComponent: UPathFollowingComponent
---@field maxCheckDis number
---@field maxCheckDisTime number
---@field isUseFixedPos boolean
---@field PlayerHalfHeight number
---@field PlayerNewHalfHeight number
---@field MaxTransferDis number
---@field AgentRadiusMultiplier number
---@field bReachCurrentTargetTestUse2D boolean
---@field bCheckReachedIgnoreHeight boolean
---@field bControlVehicle boolean @是否控制载具，会获取载具的移动组件作为MovementComp
---@field bForceMaxSpeed boolean @强制满速移动
---@field bReachDestinationWhenMoveTooFar boolean @超过目标位置是否直接判断为移动完成
---@field bReachDestinationTestUse2D boolean @是否使用2D判断超过目标位置为移动完成
---@field ReachTestUse2DHeightLimit number
---@field bDebugDraw boolean
---@field bDrawNavPath boolean
---@field DrawNavPathInterval number
---@field bDrawCurTargetLine boolean
---@field bDrawDirectlyTowardTargetPath boolean
---@field bDrawFollowTargetPath boolean
---@field TargetPathTraceObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field TargetPathTraceChannel ECollisionChannel
---@field TargetPathQueryMobilityType EOverrideQueryMobilityType
---@field TraceObjectShapeScale number
---@field TraceObjectSrcOffset FVector
---@field bUseCheckReachSegmentRadius boolean @是否使用半径检测到达路径上的下个线段
---@field CheckReachSegmentAcceptanceRadius number @检测到达路径上的下个线段的半径
---@field CheckReachSegmentAcceptanceRadiusRaycastLength number @使用半径检测到达路径上的下个线段时，进行Raycast检测的长度
---@field bDrawCheckReachSegment boolean
local UNewPathFollowingComponent = {}

---@param bForce boolean
function UNewPathFollowingComponent:CustomUpdateMovementComponent(bForce) end

---@param MoveComp UNavMovementComponent
function UNewPathFollowingComponent:CustomSetMovementComponent(MoveComp) end

---停止当前Path检测目标Actor位置
function UNewPathFollowingComponent:DisablePathGoalActorObservation() end

---当前Path最后一段导航使用记录的Actor位置追踪目标
function UNewPathFollowingComponent:EnableMoveToGoalOnLastSegmentWithRecordedLocation() end

---检查位置是否为导航的终点
---@param CurrentLocation FVector
---@return boolean
function UNewPathFollowingComponent:IsLocationReachedDestination(CurrentLocation) end
