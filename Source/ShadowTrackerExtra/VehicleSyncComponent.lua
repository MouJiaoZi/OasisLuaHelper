---@meta

---@class EManualVehicleSyncType
---@field ClientToServerAuthorityEnd number
---@field EManualVehicleSyncTypeMax number
EManualVehicleSyncType = {}


---<仅用于载具主控端上报延迟处理的Tick
---@class FVehicleSyncPostPhysxTick
FVehicleSyncPostPhysxTick = {}


---@class FVehicleClientSyncData
---@field InCorrectionId number
---@field Timestamp number
---@field ClientFrame number
---@field ClientLocation FVector_NetQuantize100
---@field ClientLinearVelocity FVector_NetQuantize100
---@field ClientRotator FVector_NetQuantizeNormal
---@field ClientAngularVelocity FVector_NetQuantize100
---@field ClientState number
FVehicleClientSyncData = {}


---@class FVehicleClientSyncStateData
---@field InCorrectionId number
---@field Timestamp number
---@field ClientFrame number
---@field ClientLocation FVector_NetQuantize100
---@field ClientLinearVelocity FVector_NetQuantize100
---@field ClientRotator FVector_NetQuantizeNormal
---@field ClientAngularVelocity FVector_NetQuantize100
---@field SrvLoc FVector
---@field SrvRot FRotator
---@field ClientState number
---@field bDelay boolean
FVehicleClientSyncStateData = {}


---@class FOnSrvAceptClientMoveDelegate : ULuaMulticastDelegate
FOnSrvAceptClientMoveDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InClientTime: number, InClientPos: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSrvAceptClientMoveDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InClientTime number
---@param InClientPos FVector
function FOnSrvAceptClientMoveDelegate:Broadcast(InClientTime, InClientPos) end


---@class FOnSrvAceptClientMoveNewDelegate : ULuaMulticastDelegate
FOnSrvAceptClientMoveNewDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InClientTime: number, InClientPos: FVector, InClientVelocity: FVector, InClientAngularVelocity: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSrvAceptClientMoveNewDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InClientTime number
---@param InClientPos FVector
---@param InClientVelocity FVector
---@param InClientAngularVelocity FVector
function FOnSrvAceptClientMoveNewDelegate:Broadcast(InClientTime, InClientPos, InClientVelocity, InClientAngularVelocity) end


---@class FOnSrvCorrectClientMoveDelegate : ULuaMulticastDelegate
FOnSrvCorrectClientMoveDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InServerPos: FVector, InServerRot: FRotator) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSrvCorrectClientMoveDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InServerPos FVector
---@param InServerRot FRotator
function FOnSrvCorrectClientMoveDelegate:Broadcast(InServerPos, InServerRot) end


---@class UVehicleSyncComponent: UVehicleComponent, IRelativeMovePostPhysicsTickFuncInterface
---@field OnActorHit FActorHitSignature
---@field MinCorrectionInterval number
---@field MinSendingStateChangedIntervalAtClient number
---@field MinDeltaTimeSinceLastPhysicStateAtClient number
---@field MaxDeltaTimeSinceLastPhysicStateAtClient number
---@field SendingToServerIntervalAtClient number
---@field SendingReliableHitToServerInterval number
---@field AllowMaxDiatanceSqAtServer number
---@field StationaryCorrectIntervalAtClient number
---@field SimulatedCorrectTimerIntervalAtClient number
---@field StationaryCorrectSpeedThresholdSq number
---@field StationaryCorrectThresholdDistanceSq number
---@field StationaryCorrectFloorOffset number
---@field bSimulatedSetRepLocApplyFloorOffset boolean
---@field MinCorrectionDistanceSqAtClient number
---@field MinCorrectionVelocitySqAtClient number
---@field MinCorrectionAngleVelocitySqAtClient number
---@field IdleForceUpdateThreshold number @模拟端无人载具触发强制同步的时间阈值
---@field bEnableApplyMultiRigidBodys boolean @是否处理多rigbody的情况，比如摩托
---@field bEnableInMidAirVelocityZCheck boolean @是否对在空中时的 Z 轴速度进行重力加速度检测
---@field InMidAirVelocityZGravityTolerance number @空中 Z 轴速度的重力加速度容错值
---@field InMidAirVelocityZInvalidCorrectNum number @空中 Z 轴速度不合法，超过该次数进行纠正
---@field bInMidAirZInvalidResetVelocity boolean @空中 Z 轴速度不合法时重置速度
---@field bInMidAirZInvalidCorrectClient boolean @空中 Z 轴速度不合法时向主控端纠正
---@field InMidAirVelocityZInvalidPunishTime number @空中 Z 轴速度不合法的惩罚时间，该时间内使用服务器位置
---@field InMidAirCacheLocationZStorageNum number
---@field IdleForceSyncInterval number @模拟端无人载具按照这个间隔进行位置修正
---@field bUseStaticRotFix boolean @是否对静止的载具进行旋转检查并修正到服务器位置
---@field StaticFixLocation number @位置偏差修正的阈值
---@field StaticFixAngel number @角度偏差修正的阈值
---@field StaticStopFixTorelence number @载具静止后进行同步检查的距离容错 这个容差必须大些，否则静止的载具会被执行修正重新开始运动
---@field MaxCalculatedStartZVeolcity number @能够允许的通过计算求得的每段运动的最大初始速度
---@field UseLegacySimulatedCorrectStrategy boolean
---@field MaxSimulatedCorrectTimer number @当DS已经不再向客户端同步Replicatedmovement之后 当客户端与DS有位置间隔时的 校正时间间隔
---@field MaxSimulatedCorrectFailCount number @SimulateCorrect 失败的次数,如果失败了次数过多 客户端就会自己去算一个合适的Z值
---@field SimulatedCorrectZ number
---@field SimulatedCorrectConsiderVehicleAngle boolean
---@field bApplyReplicatedMovementSleepFlag boolean
---@field ApplyReplicatedMovementSleepFlagMinElapseTime number
---@field ApplyReplicatedMovementSleepFlagMaxElapseTime number
---@field bStaticFixVehicleRoll boolean
---@field StaticFixVehicleRollThreshold number
---@field StaticFixVehicleRollVelocityThreshold number
---@field bVehicleNeedFlyVelCheck boolean @竖直速度检查开关 会使用物理加力进行飞行的载具，不进行竖直速度的反外挂检查
---@field SendClientMoveToServerUseDelay boolean @<功能控制|是否将主控端的上报延迟到PostPhysx处理
---@field SendClientMoveToServerOverLapUseRoot boolean @<功能控制|是否使用Root来代替整个Skeleton进行SendClientMoveToServer时的Overlap
---@field AutonomousPullUpWhilePassWall boolean @主控端穿地上拉开关 主控端位置低于服务端位置，且服务端位置与主控端位置之间穿墙时
---@field CorrectDontUseRigdStateFix boolean
---@field AutonomousPassWallCorrectWhileIsInServerAuthorize boolean
---@field AutonomousPassWallCorrectWhileIsInServerAuthorizeInterval number
---@field SendServerMoveToClientUseAllServerState boolean @当SendServerMoveToClient触发位置矫正的时候,全部使用服务器的状态属性
---@field SendServerMoveToClientWithLinkMeshUseAllServerState boolean
---@field AutonomousPullUpWhilePassWallZThres number @主控端穿地上拉容差 只有主控端比服务端低于这个高度时才会进行上拉
---@field VariableSendClientVelocity ULuaArrayHelper<number>
---@field VariableSendClientInterval ULuaArrayHelper<number>
---@field EnableVariableSendClientMove boolean
---@field NeedSendGravityZAndDeltaTime boolean
---@field CheckGravityAndDeltaValue boolean
---@field DefaultGravityZ number
---@field DefaultGravityDelta number
---@field ClientMinDeltaTime number
---@field LastInMidAirVelocityZCheckTime number
---@field LastInMidAirVelocityZValue number
---@field LastInMidAirLocationZTimeValue ULuaArrayHelper<FVector2D>
---@field LastInMidAirInvalidNum number
---@field LastInMidAirInvalidPunishStopTime number
---@field PostPhysxComponentTick any
---@field OnServerCorrectClientMove FOnSrvCorrectClientMoveDelegate
---@field OpenTLogUpSpeedGreatChange boolean
---@field UpSpeedGreatChangeZThreshold number
---@field OpenTLogVelocityException boolean
---@field VelocitySizeCompareThreshold number
---@field VelocityDirectionCompareThreshold number
---@field OpenTLogTickSimulationProxy boolean
---@field TLogLocationDiffSqrThreshold number
---@field TLogCountTickSimulationProxy number
---@field SimulatedCorrectCountThreshold number
---@field SkipFindFloorInCorrection boolean
---@field bDontSyncOnCloseSimulate boolean
---@field OpenTLogZVelCheck boolean
---@field ZVelUpThreshold number
---@field ZVelDiffThreshold number
---@field VelDiffAngleThreshold number
---@field VelSizeScaleThreshold number
---@field bFloatVehicleUseSelfZLocInBigWorld boolean
---@field bSimulateVehicleSleepToResetSuspension boolean
---@field VehicleSleepToResetSuspensionThreshold number
---@field bOpenCheckClientMoveValid boolean
---@field ValidZChangePitchAngel number
---@field InValidHitResultDistance number
---@field InValidZVelThresholdInCMPerSecond number
---@field InValidXYVelThresholdInCMPerSecond number
---@field InValidZHeightThresholdInCM number
---@field CheckAngularValidLinearVel number
---@field InValidAngularVel number
---@field ClientSyncDataInValidTime number
---@field LastVehicleClientSyncData ULuaArrayHelper<FVehicleClientSyncStateData>
local UVehicleSyncComponent = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UVehicleSyncComponent:OnHitAtClient(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UVehicleSyncComponent:OnHitAtServer(SelfActor, OtherActor, NormalImpulse, Hit) end

function UVehicleSyncComponent:OnDriverRide() end

---@param bIsSnap boolean
---@param bPlayerChannel boolean
---@param ZAdjustValue number
---@param IsAutoCorrect boolean
function UVehicleSyncComponent:Correct(bIsSnap, bPlayerChannel, ZAdjustValue, IsAutoCorrect) end

---@param Reliably boolean
function UVehicleSyncComponent:ForceSendClientMoveToServer(Reliably) end

---@param SyncData FVehicleClientSyncData
---@param Type EManualVehicleSyncType
function UVehicleSyncComponent:ManualSendClientMoveToServer(SyncData, Type) end

---@param ClientSyncData FVehicleClientSyncData
function UVehicleSyncComponent:SendClientMoveToServerReliablyInBigWorld(ClientSyncData) end

---@param ClientSyncData FVehicleClientSyncData
function UVehicleSyncComponent:SendClientMoveToServerUnreliablyInBigWorld(ClientSyncData) end

---@param InCorrectionId number
---@param Timestamp number
---@param ClientFrame number
---@param ClientLocation FVector_NetQuantize100
---@param ClientLinearVelocity FVector_NetQuantize100
---@param ClientRotator FVector_NetQuantizeNormal
---@param ClientAngularVelocity FVector_NetQuantize100
function UVehicleSyncComponent:SendClientMoveToServerReliably(InCorrectionId, Timestamp, ClientFrame, ClientLocation, ClientLinearVelocity, ClientRotator, ClientAngularVelocity) end

---@param InCorrectionId number
---@param Timestamp number
---@param ClientFrame number
---@param ClientLocation FVector_NetQuantize100
---@param ClientLinearVelocity FVector_NetQuantize100
---@param ClientRotator FVector_NetQuantizeNormal
---@param ClientAngularVelocity FVector_NetQuantize100
function UVehicleSyncComponent:SendClientMoveToServerUnreliably(InCorrectionId, Timestamp, ClientFrame, ClientLocation, ClientLinearVelocity, ClientRotator, ClientAngularVelocity) end

---@param InCorrectionId number
---@param Timestamp number
---@param ClientFrame number
---@param ClientLocation FVector_NetQuantize100
---@param ClientLinearVelocity FVector_NetQuantize100
---@param ClientRotator FVector_NetQuantizeNormal
---@param ClientAngularVelocity FVector_NetQuantize100
---@param InShouldDelay boolean
---@return number
function UVehicleSyncComponent:SendClientMoveToServerInternal(InCorrectionId, Timestamp, ClientFrame, ClientLocation, ClientLinearVelocity, ClientRotator, ClientAngularVelocity, InShouldDelay) end

---@param Timestamp number
---@param ClientFrame number
---@param ClientLocation FVector_NetQuantize100
---@param ClientLinearVelocity FVector_NetQuantize100
---@param ClientRotator FVector_NetQuantizeNormal
---@param ClientAngularVelocity FVector_NetQuantize100
---@param ClientSyncData FVehicleClientSyncData
---@return number
function UVehicleSyncComponent:SendClientMoveToServerSimulate(Timestamp, ClientFrame, ClientLocation, ClientLinearVelocity, ClientRotator, ClientAngularVelocity, ClientSyncData) end

---<延迟处理送达DS的数据
---@param InCorrectionId number
---@param Timestamp number
---@param ClientFrame number
---@param ClientLocation FVector_NetQuantize100
---@param ClientLinearVelocity FVector_NetQuantize100
---@param ClientRotator FVector_NetQuantizeNormal
---@param ClientAngularVelocity FVector_NetQuantize100
function UVehicleSyncComponent:SendClientMoveToServer_WithDelay(InCorrectionId, Timestamp, ClientFrame, ClientLocation, ClientLinearVelocity, ClientRotator, ClientAngularVelocity) end

---<实际的逻辑执行
---@param InCorrectionId number
---@param Timestamp number
---@param ClientFrame number
---@param ClientLocation FVector_NetQuantize100
---@param ClientLinearVelocity FVector_NetQuantize100
---@param ClientRotator FVector_NetQuantizeNormal
---@param ClientAngularVelocity FVector_NetQuantize100
---@param Delay boolean
---@return number
function UVehicleSyncComponent:SendClientMoveToServer_DoWork(InCorrectionId, Timestamp, ClientFrame, ClientLocation, ClientLinearVelocity, ClientRotator, ClientAngularVelocity, Delay) end

---@param InCorrectionId number
---@param ServerLocation FVector_NetQuantize100
---@param ServerLinearVelocity FVector_NetQuantize100
---@param ServerRotator FVector_NetQuantizeNormal
---@param ServerAngularVelocity FVector_NetQuantize100
---@param bIsSnap boolean
---@param Floor UPrimitiveComponent
function UVehicleSyncComponent:SendServerMoveToClient(InCorrectionId, ServerLocation, ServerLinearVelocity, ServerRotator, ServerAngularVelocity, bIsSnap, Floor) end

---@param InCorrectionId number
---@param ServerLocation FVector_NetQuantize100
---@param ServerLinearVelocity FVector_NetQuantize100
---@param ServerRotator FVector_NetQuantizeNormal
---@param ServerAngularVelocity FVector_NetQuantize100
---@param LinkMeshServerLocation FVector_NetQuantize100
---@param LinkMeshServerLinearVelocity FVector_NetQuantize100
---@param LinkMeshServerRotator FVector_NetQuantizeNormal
---@param LinkMeshServerAngularVelocity FVector_NetQuantize100
---@param bIsSnap boolean
function UVehicleSyncComponent:SendServerMoveToClientWithLinkMesh(InCorrectionId, ServerLocation, ServerLinearVelocity, ServerRotator, ServerAngularVelocity, LinkMeshServerLocation, LinkMeshServerLinearVelocity, LinkMeshServerRotator, LinkMeshServerAngularVelocity, bIsSnap) end

---@param InCorrectionId number
---@param Timestamp number
---@param ClientFrame number
---@param ClientLocation FVector_NetQuantize100
---@param ClientLinearVelocity FVector_NetQuantize100
---@param ClientRotator FVector_NetQuantizeNormal
---@param ClientAngularVelocity FVector_NetQuantize100
---@param OtherActor AActor
---@param NormalImpulse FVector_NetQuantize100
---@param Hit FHitResult
---@param HitCompLocation FVector_NetQuantize100
---@param HitCompBodyInsLoc FVector_NetQuantize100
---@param HitCompBoundsOrigin FVector_NetQuantize100
---@param HitCompBoundsExtent FVector_NetQuantize100
---@param HitCompBoundsRaidus number
---@param HitActorName string
---@param HitCompName string
---@param HitActorOwnerName string
---@param HitActorOuterName string
---@param ClientNewImpulse FVector_NetQuantize100
function UVehicleSyncComponent:SendClientHitToServerReliably(InCorrectionId, Timestamp, ClientFrame, ClientLocation, ClientLinearVelocity, ClientRotator, ClientAngularVelocity, OtherActor, NormalImpulse, Hit, HitCompLocation, HitCompBodyInsLoc, HitCompBoundsOrigin, HitCompBoundsExtent, HitCompBoundsRaidus, HitActorName, HitCompName, HitActorOwnerName, HitActorOuterName, ClientNewImpulse) end

---@param HitActorName string
---@param HitCompName string
function UVehicleSyncComponent:SendClientHitCompNameToServerReliably(HitActorName, HitCompName) end

---@param InCorrectionId number
---@param Timestamp number
---@param ClientFrame number
---@param ClientLocation FVector_NetQuantize100
---@param ClientLinearVelocity FVector_NetQuantize100
---@param ClientRotator FVector_NetQuantizeNormal
---@param ClientAngularVelocity FVector_NetQuantize100
---@param OtherActor AActor
---@param NormalImpulse FVector_NetQuantize100
---@param Hit FHitResult
---@param ClientNewImpulse FVector_NetQuantize100
function UVehicleSyncComponent:SendClientHitToServerUnreliably(InCorrectionId, Timestamp, ClientFrame, ClientLocation, ClientLinearVelocity, ClientRotator, ClientAngularVelocity, OtherActor, NormalImpulse, Hit, ClientNewImpulse) end

function UVehicleSyncComponent:GetRiders() end

---@param NewState FRigidBodyState
function UVehicleSyncComponent:ApplyRigidBodyState(NewState) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleSyncComponent:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleSyncComponent:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function UVehicleSyncComponent:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param OtherActor AActor
---@param NormalImpulse FVector_NetQuantize100
---@param Hit FHitResult
function UVehicleSyncComponent:ClientHitActor(OtherActor, NormalImpulse, Hit) end

---@param ClientLocation FVector
---@param Riders ULuaArrayHelper<ASTExtraBaseCharacter>
---@param OutLocation FVector
---@param HitResult FHitResult
---@return boolean
function UVehicleSyncComponent:AdjustFloorPosition(ClientLocation, Riders, OutLocation, HitResult) end

---@param Location FVector
---@param OutFloorLocation FVector
---@param OutHit FHitResult
---@return boolean
function UVehicleSyncComponent:GetFloorPosition(Location, OutFloorLocation, OutHit) end

---@param ClientLocation FVector
---@return number
function UVehicleSyncComponent:GetLanscapeHeight(ClientLocation) end

---@param DeltaTime number
---@return boolean
function UVehicleSyncComponent:CheckAndLoadLandscape(DeltaTime) end

---@param TimeStamp number
---@return boolean
function UVehicleSyncComponent:VerifyClientTimeStamp(TimeStamp) end

function UVehicleSyncComponent:DragUnderGround() end

---上报重力加速度  与deltaTime
---@param GravityZ number
---@param DeltaTime number
function UVehicleSyncComponent:SendClientGravityZAndDeltaTime(GravityZ, DeltaTime) end

---@param NewValue number
function UVehicleSyncComponent:SetSendingToServerTimer(NewValue) end

---@param NowTime number
---@param ClientLocation FVector
---@param ClientVelocity FVector
---@return boolean
function UVehicleSyncComponent:IsInMidAirZInvalid(NowTime, ClientLocation, ClientVelocity) end

function UVehicleSyncComponent:ResetReceiveClientMoveCount() end

function UVehicleSyncComponent:GMTestProcessVehicleUpSpeedGreatChangeTLog() end

---@param DeltaLoc FVector
---@param DeltaQuat FQuat
function UVehicleSyncComponent:SyncOtherRigidBodyVelocity(DeltaLoc, DeltaQuat) end

function UVehicleSyncComponent:DrawDebugAllSimulateRigidBody() end

function UVehicleSyncComponent:ClearCurrentClientTimeStamp() end

---@return boolean
function UVehicleSyncComponent:ProcessSimulateVehicleForceSleep() end

---@param DeltaTime number
function UVehicleSyncComponent:UpdateRelativeMoveMgr(DeltaTime) end
