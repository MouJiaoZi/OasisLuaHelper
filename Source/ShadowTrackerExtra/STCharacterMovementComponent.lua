---@meta

---@class ECallServerMoveUseRelativeControlRotationType
---@field ClientCallServer number
---@field DSAdjustClient number
---@field DSAdjustClientByRootMotion number
ECallServerMoveUseRelativeControlRotationType = {}


---@class EPlayShovelSoundType
---@field Shovel_Enter number
---@field Shovel_Exit number
---@field Shovel_Interrupt number
EPlayShovelSoundType = {}


---@class EShovelEnabledFlags
---@field None number @不开启滑铲，None == 0
---@field HeroSkill number @Hero 技能开启滑铲
EShovelEnabledFlags = {}


---@class ECheckImpartedMovementBaseVelocity
---@field CheckImpartedMovementBaseVelocity_No number @不叠加Base的速度
---@field CheckImpartedMovementBaseVelocity_Add number @叠加Base的速度
---@field CheckImpartedMovementBaseVelocity_AddHasUpperLimit number @如果叠加后超上限的部分就不叠加
---@field CheckImpartedMovementBaseVelocity_AddHasZLowerLimit number @如果叠加后Z超下限的部分就不叠加
---@field CheckImpartedMovementBaseVelocity_AddHasUpperAndZLowerLimit number @如果叠加后超上限的部分和Z超下限的部分就不叠加
---@field CheckImpartedMovementBaseVelocity_Max number
ECheckImpartedMovementBaseVelocity = {}


---@class FPlayerClientMoveInfoItem
---@field bEnableCriticalVerify boolean
---@field bIsValidMove boolean
---@field bIsSuccessMove boolean
---@field ClientLocation FVector
---@field ClientOldLocation FVector
---@field ClientControlRotation FRotator
---@field ClientCameraRotation FRotator
---@field ClientLastFrameControlRotation FRotator
---@field bIsHandFold boolean
---@field bGunADS boolean
---@field ClientMovementMode number
---@field ServerWorldTime number
---@field bLaunch boolean
FPlayerClientMoveInfoItem = {}


---@class FServerMoveSmoothResult
---@field bIsSuccessMove boolean
---@field SmoothLocation FVector
FServerMoveSmoothResult = {}


---用于DS预测移动时保存和恢复移动状态的Scope类 在构造时保存当前状态，析构时自动恢复 预测过程中不触发任何事件，回退后完全恢复到之前的状态
---@class FScopedServerPredictMovementState
FScopedServerPredictMovementState = {}


---@class FRotator_NetQuantize2
FRotator_NetQuantize2 = {}


---拉扯包区间记录
---@class FAdjustPackInfo
FAdjustPackInfo = {}


---@class FShovelStateChange : ULuaMulticastDelegate
FShovelStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FShovelStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
function FShovelStateChange:Broadcast(Param1) end


---@class FOnTeleportToSetClientLocationOrRotationDelegate : ULuaMulticastDelegate
FOnTeleportToSetClientLocationOrRotationDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Location: FVector, Rotation: FRotator, bSetLoc: boolean, bSetRot: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTeleportToSetClientLocationOrRotationDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Location FVector
---@param Rotation FRotator
---@param bSetLoc boolean
---@param bSetRot boolean
function FOnTeleportToSetClientLocationOrRotationDelegate:Broadcast(Location, Rotation, bSetLoc, bSetRot) end


---@class FOnAddImpulse : ULuaMulticastDelegate
FOnAddImpulse = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ImpactNormal: FVector, bVelocityChange: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAddImpulse:Add(Callback, Obj) end

---触发 Lua 广播
---@param ImpactNormal FVector
---@param bVelocityChange boolean
function FOnAddImpulse:Broadcast(ImpactNormal, bVelocityChange) end


---@class FGetLaunchVelocityDelegate : ULuaSingleDelegate
FGetLaunchVelocityDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, CharacterOwner: ASTExtraBaseCharacter, bXYOverride: boolean, bZOverride: boolean, bAutoRemove: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetLaunchVelocityDelegate:Bind(Callback, Obj) end

---执行委托
---@param CharacterOwner ASTExtraBaseCharacter
---@param bXYOverride boolean
---@param bZOverride boolean
---@param bAutoRemove boolean
function FGetLaunchVelocityDelegate:Execute(CharacterOwner, bXYOverride, bZOverride, bAutoRemove) end


---@class FShovelEnabledFlagChange : ULuaMulticastDelegate
FShovelEnabledFlagChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewEnabledFlag: EShovelEnabledFlags) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FShovelEnabledFlagChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewEnabledFlag EShovelEnabledFlags
function FShovelEnabledFlagChange:Broadcast(NewEnabledFlag) end


---@class USTCharacterMovementComponent: USTCharacterMovementComponentBase
---@field bClientAdjustPositionApplyNetworkMovementMode boolean
---@field bSendClientAdjustmentUseRealMovementMode boolean
---@field bSendClientAdjustmentUseRealVelocity boolean
---@field bServerMoveHandleClientErrorTrustClient boolean
---@field bCheckPassWallIsOnlyCheckStatic boolean
---@field bServerMoveCheckPassWall boolean
---@field bCheckPassWallUseSweep boolean
---@field CheckPassWallShapeShrinkScale number
---@field CheckPassWallHeightShrinkScale number
---@field AdjustRadiusScaleWhenPassWall number
---@field RadiusScaleWhenCheckPassWall number
---@field bPassWallAdjustmentIsOpenSecondCheck boolean
---@field bServerPassWallForceSafty boolean @<穿墙检测推人时是否额外的对修正后的位置进行校验
---@field bOpenPassWallCheck boolean
---@field bOpenPassWallPenetratingRevise boolean
---@field bPassWallIgnoreHitPawnBox boolean
---@field bOpenCombinePassWallCheck boolean
---@field bServerCheckIfClientAuthorativeUseSweep boolean
---@field bPassWallCheckNotMoveStatus boolean
---@field CombinePassWallCheckDeltaTime number
---@field bAroundHasDynamicBodybyUseAIWorldVolume boolean
---@field PassWallBoxOverlapCheckHalfExtentWidth number
---@field PassWallBoxOverlapCheckHalfExtentHeight number
---@field OverlapTestCapsuleScaleWhenUpdateBasedMovement number
---@field MaxPrisonmentMove number @<被禁锢的角色超过这个偏差距离就会被触发回拉，大于70可能会导致在主控端被ClientUpdatePositionAfterServerUpdate记录
---@field NoPrisonReport boolean @<被禁锢玩家是否上报DS的拉扯
---@field bIgnoreClientRotationErrorChecksAndCorrection boolean
---@field TimeThresholdForceLeaveFallingState number
---@field FallingInPlaceDistanceSq number
---@field bDoSecondCollisionTest boolean
---@field bDoShapeTransformTest boolean
---@field bSimulateStaticFallingToWalking boolean
---@field ShootFrameNumber number
---@field BulletTrackVerifyShootFrameNumber number
---@field ShootFrameCacheRotationInputPitch FVector
---@field LastFrameCacheControlRotPitch number
---@field ShootFrameCacheIndex number
---@field LatestActiveTime number
---@field bIsBigBattleMove boolean
---@field CharacterMovementInfoDataAssetSoftPtr UCharacterMovementInfoDataAsset
---@field CustomMovementServerMoveProxySoftPtr UCustomMovementServerMoveProxy
---@field BisIgnoreImpulse boolean
---@field ClientIntervalOfNetMovePacketLossFPS number
---@field CumulativeNotCheckPassWallTime number
---@field PassWallBoxOverlapCheckHalfExtent FVector
---@field bAroundHasDynamicBody boolean
---@field bCurrentBaseHadBeenStatic boolean @Whether or not the base had been static *
---@field ZeroMoveFallingDuration number
---@field FallingLocations ULuaArrayHelper<FVector>
---@field FallingDistance number
---@field FallingDuration number
---@field FallingVelocity_AvarageInOneFrame number
---@field ProneRotationVelocity FVector
---@field ProneRotationReactionElapsedTime number
---@field ProneRotationReactionTime number
---@field MaxSpeedFactor number
---@field SlopeHorizontalBoostingScale number
---@field bStepUpIngoreHeadHit boolean
---@field CheckPushUpType number
---@field bEnablePushup boolean
---@field bCombineMoveBagCheckActorNotMoveStatus boolean
---@field bCombineMoveBagOverlapTestByDynamic boolean
---@field bIgnoreClientMovementMoveModeErrorChecksAndCorrection boolean
---@field bIsOpenCheckClientFallingFloorHit boolean
---@field CheckClientFallingFloorHitByClientPosXYOffset number
---@field CheckClientFallingFloorHitByClientPosHeightOffset number
---@field CheckClientFallingFloorHitImpactPointOffset number
---@field CheckClientFallingFloorHitTimeStamp number
---@field bIsServerPriorityControlShoveling boolean
---@field ShovelingStopMaxRelianceClientTime number
---@field EnterShovelingMoveModeMinTime number
---@field bIsOpenEnterShovelingMoveModeCheck boolean
---@field bShowEnterShovelingMoveModeBox boolean
---@field EnterShovelingMoveModeCheckTimeout number
---@field EnterShovelCD number
---@field DSEnterShovelCD number
---@field ShovelingCollisionLength number
---@field ShovelingCollisionWidth number
---@field ShovelingCollisionHalfHeight number
---@field MaxShovelFloorAngle number
---@field UseVelocityDirMinSpeed number
---@field StandMinEnterShovelingSpeed number
---@field CrounchMinEnterShovelingSpeed number
---@field bEnableEnterShovelingToBackAngle boolean
---@field MaxEnterShovelingHorizontalAngle number
---@field DefaultShovelingSpeed number
---@field DefaultShovelingDCC number
---@field ExtraShovelingDCC1 number
---@field ExtraShovelingDCC2 number
---@field ExtraShovelingDCC3 number
---@field ConsecutivelyShovelingDCCCD number
---@field ConsecutivelyShovelingDCC number
---@field ConsecutivelyShovelingEnterDCC1 number
---@field ConsecutivelyShovelingEnterDCC2 number
---@field ConsecutivelyShovelingEnterDCC3 number
---@field ConsecutivelyShovelingEnterDCC4 number
---@field ConsecutivelyShovelingEndDCC1 number
---@field ConsecutivelyShovelingEndDCC2 number
---@field ConsecutivelyShovelingEndDCC3 number
---@field ConsecutivelyShovelingEndDCC4 number
---@field MinusGradeShovelingACC number
---@field MinusGradeShovelingDCC1 number
---@field MinusGradeShovelingDCC2 number
---@field MaxShovelingSpeed number
---@field bIsAchieveMaxShovelingSpeed boolean
---@field StopShovelingSpeed number
---@field MinNoDCCInShovelingSlopeAngle number
---@field MAxNoDCCInShovelingSlopeAngle number
---@field EnterShovelingMinHeightInFalling number
---@field ShovelingTPPFovVaule number
---@field EnterShovelingTPPFovChangeSpeed number
---@field ExitShovelingTPPFovChangeSpeed number
---@field ShovelingLegBodyMaxAngle number
---@field ShovelingLegStartFollowBodyMinAngle number
---@field ShovelingLegFollowBodySpeed number
---@field MaxAngleShovelingLegFollowBodySpeed number
---@field ShovelingLegFollowFloorSpeed number
---@field ShovelingEffectPath FSoftObjectPath
---@field ExtraShovelingEffectPath FSoftObjectPath
---@field ShovelCameraModifyFovMinFactor number
---@field ShovelCameraModifyOffsetXMinFactor number
---@field ShovelCameraModifyOffsetZMinFactor number
---@field ShovelingCoefficient number
---@field nowShovelingSpeed number
---@field ShovelingRotation FRotator
---@field ShovelingIsTrigger boolean
---@field ShovelingIsHold boolean
---@field ShovelingPrePoseState ESTEPoseState
---@field PreShovelFov number
---@field bIsForcePositionUpdate boolean
---@field AddVelocityLogCDConfig number
---@field bForceShowCameraLog boolean
---@field LastClientVelocityNotEqualServerValidTime number
---@field LastClientVelocityNotEqualServerTime number
---@field LastClientVelocityNotEqualServerClientVelocity FVector
---@field LastClientVelocityNotEqualServerServerVelocity FVector
---@field LastClientVelocityNotEqualServerClientMovementMode number
---@field LastClientVelocityNotEqualServerServerMovementMode number
---@field LastClientVelocityNotEqualNum number
---@field MoveStuckCheck FMoveStuckCheck @角色卡住监控
---@field MovePackStackingBag FMovePackStackingBag @移动包延迟监控
---@field DSSendVelocityToTlogCDConfig number
---@field DSSendClientVelocityNotEqualDSToTlogCDConfig number
---@field DSSendClientVelocityNotEqualDSLastSendTime number
---@field OnShovelEnabledFlagChange FShovelEnabledFlagChange
---@field OnTeleportToSetClientLocationOrRotationBegin FOnTeleportToSetClientLocationOrRotationDelegate
---@field OnTeleportToSetClientLocationOrRotationEnd FOnTeleportToSetClientLocationOrRotationDelegate
---@field bTeleportToSetClientLocationOrRotationClientNotExec boolean
---@field DSWalkingFirstNotRelianceClientFallingTime number
---@field StopVaultTime number
---@field bIsInShovelingAnimation boolean
---@field StopShovelingTime number
---@field StopServerPriorityMovementTime number
---@field ShovelEnabledFlags EShovelEnabledFlags
---@field NotMergerMovePacketCD number
---@field LastWalkingTime number
---@field StopTick boolean
---@field TimeSpeedFactor number
---@field CheatCheckSumFailed boolean
---@field bCanSendCmdAck boolean
---@field bCheatClientLocation boolean
---@field MaxPenetrationAdjustmentSize number
---@field JumpOffVelocityFactor number
---@field mb_UseVehiclePushSwim boolean @<是否让载具推动静止的游泳角色
---@field mb_UseVehiclePushUp boolean @<是否让载具将人推到车顶
---@field SimulatedNearDistanceSqAtClient number
---@field SimulatedNearTickIntervalAtClient number
---@field SimulatedMiddleDistanceSqAtClient number
---@field SimulatedMiddleTickIntervalAtClient number
---@field SimulatedFarDistanceSqAtClient number
---@field SimulatedFarTickIntervalAtClient number
---@field SimulatedTickNearDistanceSqAtClient number
---@field SimulatedTickNearTickIntervalAtClient number
---@field SimulatedTickMiddleDistanceSqAtClient number
---@field SimulatedTickMiddleTickIntervalAtClient number
---@field SimulatedTickFarDistanceSqAtClient number
---@field SimulatedTickFarTickIntervalAtClient number
---@field WalkSpeedCurveScale number
---@field FinalWalkMaxSpeed number
---@field EnableVelocityCalcMaxSpeed boolean
---@field ProneFloorAngle number
---@field ProneFloorZ number @Minimum Z value for floor normal. If less, not a walkable surface. Computed from WalkableFloorAngle.
---@field bIgnorePawnsBasedOnWhenWalking boolean
---@field JumpFloorAngle number
---@field JumpFloorZ number @Minimum Z value for floor normal. If less, not a walkable surface. Computed from WalkableFloorAngle.
---@field ResolvePenetrationPosDiffSq number
---@field ResolvePenetrationAdjustment number
---@field bOpenLocationSmoothOnDynamicMovementBase boolean
---@field DistSqOnDynamicMovementBaseAtSimulateProxy number
---@field DistAngleOnDynamicMovementBaseAtSimulateProxy number
---@field bProcessDeltaRotationWhenKnockedDown number
---@field bEnableAdjustWhenStepUpFailed number
---@field AdjustDistanceWhenStepUpFailed number
---@field CheatSpeedModifier number
---@field LastSendClientAckTime number
---@field bSwimmingHitBlock boolean
---@field SimulatedLastTickTime number
---@field DragOnGroundTimer number
---@field bIsRecoverOnServer boolean
---@field CurrentEnterShovelingMoveModeTime number
---@field TestClientMoveDataCache ULuaArrayHelper<FWeakNetworkClientMoveData>
---@field ServerMoveSubframe FCharacterMovementServerMoveSubframe
---@field MovementSimulatePredictMaxTime number
---@field MovementSimulatePredictMaxDistanceSquared number
---@field MovementSimulatePredictToStandMaxTime number
---@field bFixParachuteEnabled boolean
---@field CheckDistanceAhead number
---@field AIMovementSimulatePredictTime number
---@field AIMovementSimulatePredictTimeDelta number
---@field LastSimulatedTickTime number
---@field bOpenHitTest boolean
---@field LastHitTestTime number
---@field bUseClientAdjustReliable boolean
---@field GMMovedTimestamp number
---@field CacheCriticalVerifyMoveParamList ULuaArrayHelper<FCacheCriticalVerifyMoveParam>
---@field CurCacheCriticalVerifyMoveParamIdx number
---@field MaxMultiJumpCount number
---@field CurrentMultiJumpCount number
---@field MultiJumpSpeed number
---@field LocationDiff number
---@field LocationInterpSpeed number
---@field RotationDiff number
---@field RotationInterpSpeed number
---@field MinMovebaseSpeed number
---@field SendStuckLogCD number
---@field MinInStuckTime number
---@field NotMoveableDistance number
---@field MinMoveableVelocity number
---@field CheckInStuckDelayTime number
---@field SendFallingLogCD number
---@field MinInFallingTime number
---@field MinFallingZChangeDistance number
---@field MaxDSPullCount number
---@field MaxDSPullTime number
---@field SendDSPullReportCD number
---@field ForbidMovementErrorReportAfterTeleportCD number
---@field MinTriggerClientExceedBigDisReportDis number
---@field MaxTriggerClientExceedBigDisReportDis number
---@field SendClientExceedDisReportCD number
---@field TriggerTeleportMovementReportDis number
---@field SendTeleportMovementReportCD number
---@field AllowReportWithinVehicleHitTime number
---@field MaxClientBaseErrorCount number
---@field SendClientBaseErrorReportCD number
---@field ClientBaseTag string
---@field MaxClientBaseDisZ number
---@field MaxClientBaseDisType1 number
---@field MaxClientBaseDisType2 number
---@field MaxClientBaseDisType3 number
---@field MaxClientBaseDisType4 number
---@field MaxClientBaseDisType5 number
---@field MaxClientBaseDisType6 number
---@field CurrentClientVelocity FVector
---@field CurrentPendingClientVelocity FVector
---@field PassWallChecker FCharacterMovementPassWallChecker
---@field OverlapChecker FCharacterMovementOverlapChecker
---@field NewLocationOnMoveableBase FVector
---@field PhysicsInteractSkipFaseMoveTime number
---@field HasNewCorrectData boolean
---@field ServerPlayerClientMoveInfoCacheFrameNum number
---@field OldCamLoc FVector
---@field LastLocation FVector
---@field LastSendStuckLogTime number
---@field EnteredStuckTime number
---@field LastEnteredStuckWorldTime number
---@field LastSendFallingLogTime number
---@field EnteredFallingTime number
---@field bIgnoreCharactersBlockingOverlaps boolean
---@field MinPenetrationDepth number
---@field CurrentConsecutivelyShovelingCount number
---@field NotMoveTimeThreshold number
---@field LastOutHits ULuaArrayHelper<FHitResult>
---@field ServerCheckIfClientMovementModeErrorTlogCDConfig number
---@field ServerCheckIfClientMovementModeErrorTlogLastSendTime number
---@field LaunchVelocityDelegateMap ULuaMapHelper<number, FGetLaunchVelocityDelegate>
---@field OnAddImpulse FOnAddImpulse
---@field PendingExtraParams FServerMoveExtraParams
---@field bSkipPassWallCheck boolean
---@field bEnableDSFastMove boolean
---@field bFastMoveCheckMovableImpact boolean
---@field AIFindFloorFrameInterval number
---@field ActiveMoveStuck FActiveMoveStuckCheck @CG027 角色主动脱障
---@field bEnableSingleFaceWallCheck boolean
---@field ImpartedMovementBaseVelocityLowerLimitZ number
---@field AutoSwitchPoseVelocityZ_ProneToStand number
---@field AutoSwitchPoseVelocityZ_CrouchToStand number
---@field AutoSwitchPoseVelocityZ_CrouchToStand_Win number
local USTCharacterMovementComponent = {}

---@param bFromPersistentPool boolean
function USTCharacterMovementComponent:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function USTCharacterMovementComponent:OnRecycled(bToPersistentPool) end

function USTCharacterMovementComponent:OnSwitchInDS() end

function USTCharacterMovementComponent:OnSwitchDSLogin() end

---@return string
function USTCharacterMovementComponent:GetToString() end

---@param Subtitle string
---@return string
function USTCharacterMovementComponent:ToStringHasLocation(Subtitle) end

---@param Subtitle string
---@return string
function USTCharacterMovementComponent:ToStringHasExtendInfo(Subtitle) end

---@param Subtitle string
---@param MiddleSimplyStr string
---@param bIsShowMesh boolean
---@return string
function USTCharacterMovementComponent:ToStringHasExtendInfoHasMiddleSimply(Subtitle, MiddleSimplyStr, bIsShowMesh) end

---@param Title string
---@param Subtitle string
---@param MiddleSimplyStr string
---@param EndStr string
---@param bIsShowMesh boolean
---@param bIsShowCamera boolean
---@param bShippingPrint boolean
function USTCharacterMovementComponent:PrintExtendInfoHasMiddleSimply(Title, Subtitle, MiddleSimplyStr, EndStr, bIsShowMesh, bIsShowCamera, bShippingPrint) end

---@param Title string
---@param Subtitle string
---@param bShippingPrint boolean
function USTCharacterMovementComponent:PrintCurrentFloor(Title, Subtitle, bShippingPrint) end

---@param Title string
---@param Subtitle string
---@param Hit FHitResult
---@param bShippingPrint boolean
function USTCharacterMovementComponent:PrintHit(Title, Subtitle, Hit, bShippingPrint) end

---@param Title string
---@param Subtitle string
---@param bShippingPrint boolean
function USTCharacterMovementComponent:PrintSmoothClientData(Title, Subtitle, bShippingPrint) end

function USTCharacterMovementComponent:MarkShootFrame() end

function USTCharacterMovementComponent:InvalidateBulletTrackVerifyShootFrame() end

function USTCharacterMovementComponent:ResetPredictionData_Client() end

---重置服务端移动数据维护
function USTCharacterMovementComponent:ResetPredictionData_Server() end

---@return boolean
function USTCharacterMovementComponent:HasAccumulatedForcesOrLaunch() end

---@param ClientMovementMode number
---@param ClientVelocity FVector
function USTCharacterMovementComponent:DSSendVelocityToTlog(ClientMovementMode, ClientVelocity) end

---@param AddType number
---@param AddVelocity FVector
---@param InExtendStr string
function USTCharacterMovementComponent:ClientAddVelocity(AddType, AddVelocity, InExtendStr) end

---@param AddType number
---@param ClientTime number
---@param ClientMovementMode number
---@param AddVelocity FVector
---@param InExtendStr string
function USTCharacterMovementComponent:ServerAddVelocity(AddType, ClientTime, ClientMovementMode, AddVelocity, InExtendStr) end

---@param OldTimeStamp number
---@param OldAccel FVector_NetQuantize10
---@param OldClientLoc FVector_NetQuantize100
---@param OldMoveFlags number
---@param OldClientRoll number
---@param OldView number
---@param OldClientMovementBase UPrimitiveComponent
---@param OldClientBaseBoneName string
---@param OldClientMovementMode number
---@param OldExtraParams FServerMoveExtraParams
function USTCharacterMovementComponent:ServerMoveOldEx(OldTimeStamp, OldAccel, OldClientLoc, OldMoveFlags, OldClientRoll, OldView, OldClientMovementBase, OldClientBaseBoneName, OldClientMovementMode, OldExtraParams) end

---向客户端发送强制拉扯
---@param NewLocation FVector
---@param NewVelocity FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function USTCharacterMovementComponent:ClientAdjustLocationAndRotation(NewLocation, NewVelocity, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---@param TimeStamp number
---@param NewLoc FVector
---@param NewVel FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
---@param StartParam FCustomMovementRequestParam
---@param Param ULuaArrayHelper<number>
function USTCharacterMovementComponent:ClientAdjustPositionWithCustomMovement(TimeStamp, NewLoc, NewVel, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode, StartParam, Param) end

function USTCharacterMovementComponent:InitCharacterMovementInfoDataAsset() end

function USTCharacterMovementComponent:InitCustomMovementServerMoveProxy() end

---@return number
function USTCharacterMovementComponent:GetPawnRealVelocity() end

---@param Factor number
function USTCharacterMovementComponent:SetMaxSpeedFactor(Factor) end

---@return number
function USTCharacterMovementComponent:GetMaxSpeedFactor() end

function USTCharacterMovementComponent:ResetObserverCharacterMovementData() end

---@param RotationVelocity FVector
function USTCharacterMovementComponent:SeverAddRotationVelocity(RotationVelocity) end

---@param bValue boolean
function USTCharacterMovementComponent:SetStepUpIgnoreHeadHit(bValue) end

---@param TheActor AActor
---@param BeforeLocation FVector
---@param HitResult FHitResult
---@param ZOffset number
function USTCharacterMovementComponent:PushUpToActor(TheActor, BeforeLocation, HitResult, ZOffset) end

---@param Value boolean
function USTCharacterMovementComponent:SetEnableServerMoveDualBaseOptimize(Value) end

---Return true if the hit result should be considered a walkable surface for the character.
---@param Hit FHitResult
---@return boolean
function USTCharacterMovementComponent:IsWalkable(Hit) end

---Get the max angle in degrees of a walkable surface for the character.
---@return number
function USTCharacterMovementComponent:K2_GetProneFloorAngle() end

---Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.
---@param InProneFloorAngle number
function USTCharacterMovementComponent:SetProneFloorAngle(InProneFloorAngle) end

---Get the Z component of the normal of the steepest walkable surface for the character. Any lower than this and it is not walkable.
---@return number
function USTCharacterMovementComponent:K2_GetProneFloorZ() end

---Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle.
---@param InProneFloorZ number
function USTCharacterMovementComponent:SetProneFloorZ(InProneFloorZ) end

---Get the max angle in degrees of a Jump surface for the character.
---@return number
function USTCharacterMovementComponent:K2_GetJumpFloorAngle() end

---Set the max angle in degrees of a Jump surface for the character. Also computes WalkableFloorZ.
---@param InJumpFloorAngle number
function USTCharacterMovementComponent:SetJumpFloorAngle(InJumpFloorAngle) end

---@return boolean
function USTCharacterMovementComponent:CheckCanTickMove() end

---Get the Z component of the normal of the steepest Jump surface for the character. Any lower than this and it is not walkable.
---@return number
function USTCharacterMovementComponent:K2_GetJumpFloorZ() end

---Set the Z component of the normal of the steepest Jump surface for the character. Also computes WalkableFloorAngle.
---@param InJumpFloorZ number
function USTCharacterMovementComponent:SetJumpFloorZ(InJumpFloorZ) end

function USTCharacterMovementComponent:ClearClientSavedMoves() end

---提供给传送设置位置和朝向 主控端会移出未确认的移动包 注意：不要直接调用，如果需要用，请在DS上使用ASTExtraBaseCharacter::DSTeleportToLocationOrRotation 为了兼容以前的，所以新接口不开放给其他人调用
---@param Location FVector
---@param Rotation FRotator
---@param bSetLoc boolean
---@param bSetRot boolean
---@param bResetVelocity boolean
function USTCharacterMovementComponent:TeleportToSetClientLocationOrRotation(Location, Rotation, bSetLoc, bSetRot, bResetVelocity) end

---@param Location FVector
---@param Rotation FRotator
---@param bSetLoc boolean
---@param bSetRot boolean
---@param bResetVelocity boolean
function USTCharacterMovementComponent:ServerTeleportToSetClientLocationOrRotationAck(Location, Rotation, bSetLoc, bSetRot, bResetVelocity) end

---@param Location FVector
---@param Rotation FRotator
---@param bSetLoc boolean
---@param bSetRot boolean
---@param bResetVelocity boolean
function USTCharacterMovementComponent:ClientTeleportToSetClientLocationOrRotation(Location, Rotation, bSetLoc, bSetRot, bResetVelocity) end

---@param TimeStamp number
---@param NewLoc FVector
---@param NewRot FRotator
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function USTCharacterMovementComponent:ClientVeryShortAdjustPositionAndRotation(TimeStamp, NewLoc, NewRot, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---@param TimeStamp number
---@param NewLoc FVector
---@param NewRot FRotator
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function USTCharacterMovementComponent:ClientVeryShortAdjustPositionAndRotationReliable(TimeStamp, NewLoc, NewRot, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---@param TimeStamp number
---@param NewLoc FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function USTCharacterMovementComponent:ClientVeryShortAdjustPositionReliable(TimeStamp, NewLoc, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---Replicate position correction to client, associated with a timestamped servermove.  Client will replay subsequent moves after applying adjustment.
---@param TimeStamp number
---@param NewLoc FVector
---@param NewRot FRotator
---@param NewVel FVector
---@param NewBase UPrimitiveComponent
---@param NewBaseBoneName string
---@param bHasBase boolean
---@param bBaseRelativePosition boolean
---@param ServerMovementMode number
function USTCharacterMovementComponent:ClientAdjustPositionAndRotation(TimeStamp, NewLoc, NewRot, NewVel, NewBase, NewBaseBoneName, bHasBase, bBaseRelativePosition, ServerMovementMode) end

---@param DeltaTime number
---@param FlyVelocity FVector
function USTCharacterMovementComponent:PhysicsFlyDistance(DeltaTime, FlyVelocity) end

---@param DeltaTime number
---@return boolean
function USTCharacterMovementComponent:DragOnGround(DeltaTime) end

function USTCharacterMovementComponent:ChangePhysxShapeFlag() end

---@return EShovelEnabledFlags
function USTCharacterMovementComponent:GetShovelEnabledFlags() end

---@param InShovelEnabledFlags EShovelEnabledFlags
function USTCharacterMovementComponent:SetShovelEnabledFlags(InShovelEnabledFlags) end

---@param InShovelEnabledFlags EShovelEnabledFlags
function USTCharacterMovementComponent:ClientSetShovelEnabledFlags(InShovelEnabledFlags) end

---@return boolean
function USTCharacterMovementComponent:GetIsOpenShovelingAbility() end

---@return boolean
function USTCharacterMovementComponent:GetIsOpenLongPressShovelingAbility() end

---@return boolean
function USTCharacterMovementComponent:GetIsOpenCrouchShovelingAbility() end

---@return number
function USTCharacterMovementComponent:GetEnterShovelingMoveModeMinTime() end

---@return number
function USTCharacterMovementComponent:GetDefaultShovelingSpeed() end

---@return number
function USTCharacterMovementComponent:GetStopShovelingSpeed() end

---@return number
function USTCharacterMovementComponent:GetMaxShovelingSpeed() end

---@return number
function USTCharacterMovementComponent:GetConsecutivelyShovelingEnterDCC() end

---@return number
function USTCharacterMovementComponent:GetConsecutivelyShovelingEndDCC() end

---@return boolean
function USTCharacterMovementComponent:IsToFloorDisInShovelingRange() end

---@return boolean
function USTCharacterMovementComponent:IsCanEnterShoveling() end

---@return boolean
function USTCharacterMovementComponent:UpdateShovelingState() end

---@param ishold boolean
---@return boolean
function USTCharacterMovementComponent:UpdateShovelingHoldState(ishold) end

---changes physics based on MovementMode
---@return boolean
function USTCharacterMovementComponent:GetTeleportToSetClientLocationOrRotationClientNotExec() end

---@param bValue boolean
function USTCharacterMovementComponent:SetTeleportToSetClientLocationOrRotationClientNotExec(bValue) end

---@return number
function USTCharacterMovementComponent:GetWalkingTimeSpace() end

---@return number
function USTCharacterMovementComponent:GetShovelingBaseSpeed() end

function USTCharacterMovementComponent:ResetPendingSendFloorData_Client() end

function USTCharacterMovementComponent:ResetReceiveFloorData_Server() end

---@param InNotMergerMovePacketCD number
function USTCharacterMovementComponent:SetNotMergerMovePacketCD(InNotMergerMovePacketCD) end

function USTCharacterMovementComponent:EnterShoveling() end

function USTCharacterMovementComponent:StopShoveling() end

---@return boolean
function USTCharacterMovementComponent:IsInShoveling() end

---@return boolean
function USTCharacterMovementComponent:IsUseVelocityDirByShoveling() end

---@return boolean
function USTCharacterMovementComponent:IsInShovelingAnimation() end

---@param DeltaTime number
function USTCharacterMovementComponent:CalcShovelingVelocity(DeltaTime) end

---@param DeltaTime number
---@return number
function USTCharacterMovementComponent:GetShovelingNowDCC(DeltaTime) end

---@return number
function USTCharacterMovementComponent:GetShovelingMaxDis() end

function USTCharacterMovementComponent:UpdateConsecutivelyShovelingCount() end

---@return number
function USTCharacterMovementComponent:GetShovelingBaseDCCFactor() end

---@return boolean
function USTCharacterMovementComponent:IsMovingOnGround() end

function USTCharacterMovementComponent:OnClientLostOnServer() end

function USTCharacterMovementComponent:OnPreReconnectOnServer() end

function USTCharacterMovementComponent:OnRecoverOnServer() end

function USTCharacterMovementComponent:OnReconnectOnServerSuccessful() end

---@param LevelTime number
function USTCharacterMovementComponent:SendLevelTime(LevelTime) end

---@param TimeStamp number
---@param HitActor AActor
---@param HitComp UPrimitiveComponent
---@param ImpactPoint FVector
---@param ImpactNormal FVector
---@param ClientMovementMode number
function USTCharacterMovementComponent:ServerMoveFloor(TimeStamp, HitActor, HitComp, ImpactPoint, ImpactNormal, ClientMovementMode) end

---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param CompressedMoveFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
---@param ExtraParams FServerMoveExtraParams
function USTCharacterMovementComponent:ServerMoveEx(TimeStamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode, ExtraParams) end

---@param TimeStamp0 number
---@param InAccel0 FVector_NetQuantize10
---@param PendingFlags number
---@param View0 number
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param NewFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
---@param ExtraParams FServerMoveDualExtraParams
function USTCharacterMovementComponent:ServerMoveDualEx(TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode, ExtraParams) end

---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param CompressedMoveFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
---@param InClientVelocity FVector_NetQuantize10
function USTCharacterMovementComponent:ServerMoveLite(TimeStamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode, InClientVelocity) end

---@param TimeStamp0 number
---@param InAccel0 FVector_NetQuantize10
---@param PendingFlags number
---@param View0 number
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param NewFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
---@param InClientVelocity FVector_NetQuantize10
function USTCharacterMovementComponent:ServerMoveDualLite(TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode, InClientVelocity) end

---@return number
function USTCharacterMovementComponent:GetLastServerMoveTime() end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function USTCharacterMovementComponent:OnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end

---@return boolean
function USTCharacterMovementComponent:TryResolveMultiPenetration() end

---@param Hit FHitResult
---@param NewRotation FQuat
---@return boolean
function USTCharacterMovementComponent:BoxResolvePenetrationByHit(Hit, NewRotation) end

function USTCharacterMovementComponent:LastSweepFindFloorHitResolvePenetration() end

---@param Hit FHitResult
---@param NewRotation FQuat
---@return boolean
function USTCharacterMovementComponent:CapsuleResolvePenetrationByFloorHit(Hit, NewRotation) end

---@param OutHit FHitResult
---@param CustomComponent UPrimitiveComponent
---@param IgnoreActor AActor
---@param StartLocation FVector
---@param DwonLineDistance number
---@param RotationQuat FQuat
---@param bDwonLineAddShrinkHeight boolean
---@return boolean
function USTCharacterMovementComponent:CustomFindDownTest(OutHit, CustomComponent, IgnoreActor, StartLocation, DwonLineDistance, RotationQuat, bDwonLineAddShrinkHeight) end

---@param OutHits ULuaArrayHelper<FHitResult>
---@param CustomComponent UPrimitiveComponent
---@param IgnoreActor AActor
---@param StartLocation FVector
---@param DwonLineDistance number
---@param RotationQuat FQuat
---@param bDwonLineAddShrinkHeight boolean
---@return boolean
function USTCharacterMovementComponent:CustomFindDownMultiTest(OutHits, CustomComponent, IgnoreActor, StartLocation, DwonLineDistance, RotationQuat, bDwonLineAddShrinkHeight) end

function USTCharacterMovementComponent:ShowShovelingEffect() end

function USTCharacterMovementComponent:HideShovelingEffect() end

---尝试加载滑铲特效 bForceLoad:是否无论已加载与否都重新加载
---@param bForceLoad boolean
function USTCharacterMovementComponent:TryLoadShowShovelingEffect(bForceLoad) end

function USTCharacterMovementComponent:FlushServerMove() end

---@return boolean
function USTCharacterMovementComponent:IsProning() end

---@return boolean
function USTCharacterMovementComponent:CanJump() end

---@return boolean
function USTCharacterMovementComponent:GetCustomFlag0() end

---@return boolean
function USTCharacterMovementComponent:TryMultiJump() end

function USTCharacterMovementComponent:DoMultiJump() end

---@param bNewDisable boolean
---@param InDisableMask ECharacterMovementDisableTickMask
function USTCharacterMovementComponent:SetDisableTickMask(bNewDisable, InDisableMask) end

---@param ClientFrame number
---@param DeltaTime number
---@param OutResult FServerMoveSmoothResult
function USTCharacterMovementComponent:ServerTryMoveSmoothAndRevert(ClientFrame, DeltaTime, OutResult) end

---@param bNotRestoreRotation boolean
---@param Mask ECombineMoveNotRestoreRotationMask
function USTCharacterMovementComponent:SetCombineMoveNotRestoreRotation(bNotRestoreRotation, Mask) end

---@return string
function USTCharacterMovementComponent:GetDebugState() end

---@param ID number
function USTCharacterMovementComponent:UnbindGetLaunchVelocityDelegate(ID) end

---@param LaunchDelegate FGetLaunchVelocityDelegate
---@return number
function USTCharacterMovementComponent:BindGetLaunchVelocityDelegate(LaunchDelegate) end

---@param ClearReason string
function USTCharacterMovementComponent:ClearLastLocationOuter(ClearReason) end

---@return boolean
function USTCharacterMovementComponent:CanSwim() end

---@return number
function USTCharacterMovementComponent:GetAllowablePositionErrorDistSquared() end

function USTCharacterMovementComponent:OnRep_IsActive() end
