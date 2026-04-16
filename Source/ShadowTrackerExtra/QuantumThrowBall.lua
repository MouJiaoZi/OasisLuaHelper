---@meta

---@class EQuatumBallState
---@field QBS_Move number
---@field QBS_Virtual number
---@field QBS_Block number
---@field QBS_Stop number
EQuatumBallState = {}


---@class FQuantumBallRoutePoint
---@field StartPosition FVector
---@field EndPosition FVector
---@field StartRotator FRotator
---@field EndRotator FRotator
---@field ForwardHitResult FHitResult
---@field BackwardHitResult FHitResult
---@field LastQueryLocation FVector
---@field StartState EQuatumBallState
---@field EndState EQuatumBallState
---@field KeyServerTime number
FQuantumBallRoutePoint = {}


---@class FRepQBallKeyRoutePoint
---@field KeyServerTime number
---@field Position FVector
---@field Rotator FRotator
---@field RealTimeVelocity FVector
---@field BallState EQuatumBallState
FRepQBallKeyRoutePoint = {}


---@class FCheckDoubleMeshConfig
---@field CheckDoubleMeshDirection FVector
---@field CheckLength number
FCheckDoubleMeshConfig = {}


---@class FQuantumBallStateChange : ULuaMulticastDelegate
FQuantumBallStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BallActor: AQuantumThrowBall, BallState: EQuatumBallState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FQuantumBallStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param BallActor AQuantumThrowBall
---@param BallState EQuatumBallState
function FQuantumBallStateChange:Broadcast(BallActor, BallState) end


---@class FQuantumBallStateChangePostTick : ULuaMulticastDelegate
FQuantumBallStateChangePostTick = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BallActor: AQuantumThrowBall, FromState: EQuatumBallState, ToState: EQuatumBallState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FQuantumBallStateChangePostTick:Add(Callback, Obj) end

---触发 Lua 广播
---@param BallActor AQuantumThrowBall
---@param FromState EQuatumBallState
---@param ToState EQuatumBallState
function FQuantumBallStateChangePostTick:Broadcast(BallActor, FromState, ToState) end


---@class FQuantumBallVisibleChange : ULuaMulticastDelegate
FQuantumBallVisibleChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BallActor: AQuantumThrowBall, bvisible: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FQuantumBallVisibleChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param BallActor AQuantumThrowBall
---@param bvisible boolean
function FQuantumBallVisibleChange:Broadcast(BallActor, bvisible) end


---@class AQuantumThrowBall: AActor
---@field MoveSpeed number
---@field MoveVelocityInterp number
---@field GravitySpeed number
---@field AntiGravitySpeed number
---@field AntiGravitySpeed_Virtual number
---@field AntiGravityHeight_Min number
---@field AntiGravityHeight_Max number
---@field AntiGravityHeight_MaxScale number
---@field ForwardDegree number
---@field ForwardSlope number
---@field ForwardMaxTime number
---@field MoveSpeedVirtualScale number
---@field MoveSpeedVirtualScale_BlendTime number
---@field CollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field bDebugDrawHit boolean
---@field DebugDrawSceneDepthPriority ESceneDepthPriorityGroup
---@field BackwardOnceDistance number
---@field BeginPlayMaxGroundZOffset number
---@field AntiGravityStartZOffset_Virtual number
---@field AntiGravityMoveUpOnceMax number
---@field AntiGravityMoveUpOnceTime number
---@field bCheckDoubleMeshSphereType boolean
---@field CheckDoubleMeshDirection ULuaArrayHelper<FCheckDoubleMeshConfig>
---@field bCheckDoubleMeshSphereType_Pro boolean
---@field CheckDoubleMeshDirection_Pro ULuaArrayHelper<FCheckDoubleMeshConfig>
---@field bCheckDoubleMesh_DoubleCheck boolean
---@field bCheckDoubleMesh_CheckHitNum boolean
---@field BlackActorNames ULuaArrayHelper<string>
---@field BlackMeshNames ULuaArrayHelper<string>
---@field BlackTagNames ULuaArrayHelper<string>
---@field CheckDoubleMeshChannels_Overlap ULuaArrayHelper<ECollisionChannel>
---@field CheckDoubleMeshChannels_ProCondition ULuaArrayHelper<ECollisionChannel>
---@field CheckDoubleMesh_ProCondition_LandHeight number
---@field CheckTransferPositionChannels ULuaArrayHelper<ECollisionChannel>
---@field CheckTransferPosition_LandHeight number
---@field bGravityIgnoreCheckGround boolean
---@field MoveForwardTryTimes number
---@field CheckDoubleMesh_WhiteListHeight number
---@field CheckDoubleMesh_WhiteListNavExtend FVector
---@field RealTimeVelocity FVector
---@field LastVelocity FVector
---@field RealTimeGravitySpeed number
---@field RealTimeAntiGravitySpeed number
---@field RealTimeAntiGravitySpeed_Virtual number
---@field RoutePoints ULuaArrayHelper<FQuantumBallRoutePoint>
---@field MoveSphereRadius number
---@field PawnCapsuleHeight number
---@field PawnCapsuleRadius number
---@field PawnCapsuleOffset FVector
---@field QueryEndBallStateScale number
---@field QueryGroundChannels ULuaArrayHelper<ECollisionChannel>
---@field bQueryEndBallState_CheckHitNum boolean
---@field RPointIndex_EnterVirtual number
---@field RPointIndex_LeaveVirtual number
---@field RunTimeCounter_Life number
---@field RunTimeBlendTimeCounter_Virtual number
---@field AntiGravityMoveUpOnceTimeCounter number
---@field AntiGravityMoveUpOnceMaxCounter number
---@field BackwardDistanceCounter number
---@field LastQueryBackwardIndex number
---@field LastQueryLocation FVector
---@field LastQueryRotation FRotator
---@field QueryPawnCapsuleRadiusScale number
---@field QueryPawnCapsuleHeightScale number
---@field FindNoOccupiedPositionWrapper FValidTeleportLocationFinderWrapper
---@field FindNoOccupiedWrapperIndex number
---@field FindNoOccupiedCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field FindNoOccupiedSphereRadius number
---@field BallState EQuatumBallState
---@field OnEnterBallState FQuantumBallStateChange
---@field OnLeaveBallState FQuantumBallStateChange
---@field OnBallStateChangePostTick FQuantumBallStateChangePostTick
---@field bLineTraceVisible boolean
---@field OnBallVisibleChange FQuantumBallVisibleChange
---@field CheckPositionTime number
---@field CheckPositionTime_Counter number
---@field MaxKeyTimeDiff number
---@field MaxPositionDiff number
---@field KeyRoutePointValue FRepQBallKeyRoutePoint
---@field bServerCheckWhiteList boolean
---@field bServerCheckBlackList boolean
local AQuantumThrowBall = {}

---@param FromLocation FVector
---@param ToLocation FVector
---@param LeaveVirtualHitResult FHitResult
---@param DoubleCheck boolean
---@return boolean
function AQuantumThrowBall:QueryEndBallStateIsVirtual(FromLocation, ToLocation, LeaveVirtualHitResult, DoubleCheck) end

---@param FromLocation FVector
---@param ToLocation FVector
---@return boolean
function AQuantumThrowBall:QueryEndBallStateIsBlock(FromLocation, ToLocation) end

---@param FromLocation FVector
---@param ToLocation FVector
---@param bUseSphereCheck boolean
---@param DoubleCheck boolean
---@param bCheckHitNum boolean
---@return boolean
function AQuantumThrowBall:QueryNotInSingleFaceTest_DoubleCheck(FromLocation, ToLocation, bUseSphereCheck, DoubleCheck, bCheckHitNum) end

---@param FromLocation FVector
---@param ToLocation FVector
---@param bUseSphereCheck boolean
---@param bCheckHitNum boolean
---@return boolean
function AQuantumThrowBall:QueryNotInSingleFaceTest(FromLocation, ToLocation, bUseSphereCheck, bCheckHitNum) end

---@param Location FVector
---@param Rotation FRotator
---@param RetHitResults ULuaArrayHelper<FHitResult>
---@return boolean
function AQuantumThrowBall:QueryGround(Location, Rotation, RetHitResults) end

---@param Location FVector
---@param Rotation FRotator
---@param NewLocation FVector
---@param NewVelocity FVector
---@return boolean
function AQuantumThrowBall:QueryVelocityToGround(Location, Rotation, NewLocation, NewVelocity) end

function AQuantumThrowBall:Move_BeginPlay() end

---@param DeltaSeconds number
function AQuantumThrowBall:Move_Try(DeltaSeconds) end

---@return number
function AQuantumThrowBall:GetMoveSpeed() end

---@param DeltaSeconds number
---@param StartPosition FVector
---@param StartRotation FRotator
---@param FinalPosition FVector
---@param FinalHitResult FHitResult
---@param MaxTryTimes number
function AQuantumThrowBall:Move_ForwardTry(DeltaSeconds, StartPosition, StartRotation, FinalPosition, FinalHitResult, MaxTryTimes) end

---@param DeltaSeconds number
---@param StartPosition FVector
---@param StartRotation FRotator
---@param FinalPosition FVector
function AQuantumThrowBall:Move_ForwardVirtual(DeltaSeconds, StartPosition, StartRotation, FinalPosition) end

---@param Velocity FVector
---@param HitResult FHitResult
---@param CrossForward FVector
---@return boolean
function AQuantumThrowBall:Move_JudgeSlope(Velocity, HitResult, CrossForward) end

---@param StartRotation FRotator
---@param FinalPosition FVector
function AQuantumThrowBall:Move_BackwardVirtual(StartRotation, FinalPosition) end

---@param DeltaSeconds number
---@param StartPosition FVector
---@param FinalPosition FVector
function AQuantumThrowBall:Move_Gravity(DeltaSeconds, StartPosition, FinalPosition) end

---@param DeltaSeconds number
---@param FinalPosition FVector
function AQuantumThrowBall:Move_GravityVirtual(DeltaSeconds, FinalPosition) end

---@param WorldLocation FVector
---@param WorldRotation FRotator
---@return boolean
function AQuantumThrowBall:CheckIsLegalPosition(WorldLocation, WorldRotation) end

---@param WorldLocation FVector
---@param WorldRotation FRotator
---@param DoubleCheck boolean
---@param bCheckHitNum boolean
---@return boolean
function AQuantumThrowBall:CheckNotInSingleFaceMesh(WorldLocation, WorldRotation, DoubleCheck, bCheckHitNum) end

---@param WorldLocation FVector
---@param WorldRotation FRotator
---@return boolean
function AQuantumThrowBall:CheckNotInSingleFaceMesh_ProCondition(WorldLocation, WorldRotation) end

---@param WorldLocation FVector
---@param WorldRotation FRotator
---@param DoubleCheck boolean
---@param bCheckHitNum boolean
---@return boolean
function AQuantumThrowBall:CheckNotInSingleFaceMesh_Normal(WorldLocation, WorldRotation, DoubleCheck, bCheckHitNum) end

---@param WorldLocation FVector
---@param WorldRotation FRotator
---@param DoubleCheck boolean
---@param bCheckHitNum boolean
---@return boolean
function AQuantumThrowBall:CheckNotInSingleFaceMesh_Pro(WorldLocation, WorldRotation, DoubleCheck, bCheckHitNum) end

---@param HitResult FHitResult
---@return boolean
function AQuantumThrowBall:CheckCanThroughActor(HitResult) end

---@param WorldLocation FVector
---@param WorldRotation FRotator
---@return boolean
function AQuantumThrowBall:CheckInWhiteListArea(WorldLocation, WorldRotation) end

---@param HitResult FHitResult
---@param Color FColor
function AQuantumThrowBall:DrawDebugSphereByHitResult_RPC(HitResult, Color) end

---@param Location FVector
---@param Rotation FRotator
---@param Color FColor
function AQuantumThrowBall:DrawDebugCapsuleByQueryResult_RPC(Location, Rotation, Color) end

---@param LineStart FVector
---@param LineEnd FVector
---@param Color FColor
function AQuantumThrowBall:DrawDebugLineByCVar_RPC(LineStart, LineEnd, Color) end

---@param DeltaSeconds number
---@param StartPosition FVector
---@param FinalPosition FVector
function AQuantumThrowBall:Query_RefreshBackwardCapsuleTick(DeltaSeconds, StartPosition, FinalPosition) end

---@param BackwardRefresh boolean
function AQuantumThrowBall:Query_RefreshBackwardCapsule(BackwardRefresh) end

---@param InputStart number
---@param InputEnd number
---@param FinalLocation FVector
---@param BackwardRefresh boolean
---@return boolean
function AQuantumThrowBall:Query_BackwardCapsuleFromTo(InputStart, InputEnd, FinalLocation, BackwardRefresh) end

---@param StartLocation FVector
---@param EndLocation FVector
---@param FinalLocation FVector
---@return boolean
function AQuantumThrowBall:Query_CapsuleFromTo(StartLocation, EndLocation, FinalLocation) end

---@param Location FVector
---@param Rotation FRotator
---@return boolean
function AQuantumThrowBall:CheckTransferTransformIsOK(Location, Rotation) end

---@param Location FVector
---@return boolean
function AQuantumThrowBall:Query_NoOccupiedPosition(Location) end

---@param Location FVector
---@param Rotation FRotator
---@return boolean
function AQuantumThrowBall:GetTransferTransform(Location, Rotation) end

---@param NewState EQuatumBallState
function AQuantumThrowBall:EnterBallState(NewState) end

---@param LastState EQuatumBallState
---@param NewState EQuatumBallState
function AQuantumThrowBall:HandleBallStateChange(LastState, NewState) end

---@param BallActor AQuantumThrowBall
---@param FromState EQuatumBallState
---@param ToState EQuatumBallState
function AQuantumThrowBall:HandleBallStateChangePostTick(BallActor, FromState, ToState) end

function AQuantumThrowBall:CheckVisibleByClient() end

---@return number
function AQuantumThrowBall:GetServerTime() end

---@param DeltaSeconds number
function AQuantumThrowBall:CheckPositionDiffTick(DeltaSeconds) end

---@param InKeyRoutePointValue FRepQBallKeyRoutePoint
function AQuantumThrowBall:RPCCheckPosition(InKeyRoutePointValue) end

---@param StartLocation FVector
---@param StartRotation FRotator
function AQuantumThrowBall:InitReplay(StartLocation, StartRotation) end

---@param StartLocation FVector
---@param StartRotation FRotator
---@param FlyTime number
---@param EndLocation FVector
function AQuantumThrowBall:StartReplay(StartLocation, StartRotation, FlyTime, EndLocation) end

---@param DeltaSeconds number
---@return boolean
function AQuantumThrowBall:CheckReplayIsEnd(DeltaSeconds) end

function AQuantumThrowBall:EndReplay() end

---@param EndLocation FVector
function AQuantumThrowBall:DumpReplayInfo(EndLocation) end
