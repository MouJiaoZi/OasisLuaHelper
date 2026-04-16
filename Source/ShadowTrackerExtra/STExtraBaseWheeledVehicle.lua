---@meta

---@class ETankTurnResult
---@field Success number
---@field NoDriver number
---@field VehicleDestroy number
---@field DriverLostConnection number
---@field Input number
---@field EntirelyInWater number
---@field LinearSpeedLarge number
---@field WheelInAir number
---@field BurstTire number
---@field NoFuel number
---@field BlueprintError number
---@field SharpSlope number
---@field EnvError number
ETankTurnResult = {}


---@class ELaunchControlState
---@field ELVS_None number
---@field ELVS_BurnTire number
---@field ELVS_LaunchControl number
ELaunchControlState = {}


---@class FSTReplicatedVehicleState
---@field SteeringInput number
---@field ThrottleInput number
---@field BrakeInput number
---@field HandbrakeInput number
---@field CurrentGear number
FSTReplicatedVehicleState = {}


---@class FBurnTirePS
---@field materialType EPhysicalSurface
---@field LeftFrontWheelPs UParticleSystem
---@field RightFrontWheelPs UParticleSystem
---@field LeftBackWheelPs UParticleSystem
---@field RightBackWheelPs UParticleSystem
FBurnTirePS = {}


---@class FBurnTirePSArray
---@field BurnTirePsArray ULuaArrayHelper<FBurnTirePS>
FBurnTirePSArray = {}


---@class FSTExtraVehicleWheelSfxOnSurface
FSTExtraVehicleWheelSfxOnSurface = {}


---@class FWheeledVehicleWheelSlipConfig
---@field ShouldSlip boolean
---@field LongStiffScaleInSlipState number
---@field LatStiffScaleInSlipState number
FWheeledVehicleWheelSlipConfig = {}


---@class FSuspentionSmooth
FSuspentionSmooth = {}


---@class FVehicleSuspentionSfx
FVehicleSuspentionSfx = {}


---@class FVehicleWheelLandedDelegate : ULuaSingleDelegate
FVehicleWheelLandedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleWheelLandedDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleWheelLandedDelegate:Execute() end


---@class FVehicleTankTurnStateChangeDelegate : ULuaSingleDelegate
FVehicleTankTurnStateChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleTankTurnStateChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleTankTurnStateChangeDelegate:Execute() end


---@class FVehicleGearChangedDelegate : ULuaMulticastDelegate
FVehicleGearChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsUp: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleGearChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsUp boolean
function FVehicleGearChangedDelegate:Broadcast(bIsUp) end


---@class USTExtraVehicleWheel: UVehicleWheel
---@field SuspensionTravelDir FVector
---@field TireForceOffset FVector
---@field QueryChannel ECollisionChannel
---@field LongSlipEffectThreshold number
---@field LatSlipEffectThreshold number
local USTExtraVehicleWheel = {}


---@class ASTExtraBaseWheeledVehicle: ASTExtraVehicleBase
---@field PSCs ULuaArrayHelper<UParticleSystemComponent>
---@field bNeedPlayWheelEnterWaterEffect boolean
---@field PlayEnterWaterEffectSpeed number
---@field WheelContactWaterEffect UParticleSystem
---@field bWheelEffectUseSocketBone boolean @dust effect 使用bonesocket位置发射点，或者使用轮胎地表接触点座位发射点
---@field TrailMarkClass ATrailMarkActor
---@field WeakTrailMarkActor ATrailMarkActor
---@field TrailOffsetArray ULuaArrayHelper<FVector>
---@field OverrideTrailOffsetArray ULuaArrayHelper<FVector>
---@field bShouldUpdateTrailMark boolean
---@field ForceShowTrailMark boolean
---@field bUseTireOffsetCalcTrail boolean
---@field TireOffsetArray ULuaArrayHelper<FVector>
---@field OnVehicleWheelLanded FVehicleWheelLandedDelegate
---@field MinLandingWheelSuspensionOffset number
---@field OnVehicleGearChanged FVehicleGearChangedDelegate
---@field SfxHandbrakeVehicleSpeedThreshold number
---@field WheelSlipSfxLoop FSTExtraVehicleSfxLoop
---@field WheelSlipSfx_PCAudio FSTExtraVehicleWheelSfxOnSurface
---@field WheelSfxOnSurface FSTExtraVehicleWheelSfxOnSurface
---@field BurnTireTireSfxLoop FSTExtraVehicleSfxLoop
---@field TankTurnSfxLoop FSTExtraVehicleSfxLoop
---@field EanbleAkRPMClamp boolean
---@field RTPC_Throttle_InterpSpeed_Up number
---@field RTPC_Throttle_InterpSpeed_Down number
---@field WheelSfxUpdateInterval number
---@field WheelSfxUpdateDistanceSqurt number
---@field AllowWheelSfxUpdatePlatformLevel number
---@field PlayWheelLandedAngleInDegree number
---@field PlayWheelLandedSpeedInKMH number
---@field UpdateSuspensionSoundsInterval number
---@field SuspensionSoundSensitivity number
---@field MinOffsetVelDeviationForSound number
---@field MinOffsetForSound number
---@field OffsetVelToWheelZVelocityMultiplier number
---@field MaxWheelZVelocity number
---@field MinSuspensionSoundTimeInterval number
---@field STReplicatedState FSTReplicatedVehicleState
---@field STServerUpdateStateTimeStamp number
---@field LoopSmokeCmpName string
---@field fDefaultBurnTireWheelSpeed number
---@field fBurnTireWheelSpeedToRPM number
---@field BurnTireOprEndWheelKeepRotateTime number
---@field BurnTireCreatePSMinSpeed number
---@field BurnTireShakePitchMax number
---@field BurnTireShakeRollMax number
---@field TickBurnTireWheelEffectDistanceThresholdSquared number
---@field BurnTireLinearVelocityTolerance number
---@field CurBurnTireState boolean
---@field LaunchControlEnergyMaxValue number
---@field LaunchControlEnergyUpRate number
---@field LaunchControlEnergyDownRate number
---@field LaunchControlEnergyReadyValue number
---@field LaunchControlTime number
---@field LaunchControlFadeOutTime number
---@field LaunchControlTopRPMTimeStamp number
---@field LaunchControlTopRPMCurveTime number
---@field LaunchControlRPMLerpTime number
---@field LaunchControlRPMLerpSpeed number
---@field LaunchControlDriverCameraShake UCameraShake
---@field LaunchControlPassengerNormalCameraShake UCameraShake
---@field LaunchControlPassengerLeanOutCameraShake UCameraShake
---@field LaunchControlPassengerCameraFadeInDataOffsetType ECameraDataType
---@field LaunchControlPassengerCameraLaunchDataOffsetType ECameraDataType
---@field LaunchControlPassengerCameraFadeOutDataOffsetType ECameraDataType
---@field LaunchControlDriverCameraOffsetData_In FCameraOffsetData
---@field LaunchControlDriverCameraOffsetData_Launch FCameraOffsetData
---@field LaunchControlDriverCameraOffsetData_Out FCameraOffsetData
---@field LaunchControlEnergy number
---@field LaunchControlRPM number
---@field LaunchControlTimeStamp number
---@field LaunchControlState ELaunchControlState
---@field ShouldPlayBrakeBtnAnim boolean
---@field bEnableBurnTire boolean
---@field bEnableLaunchControll boolean
---@field DustConfigClass FSoftObjectPath
---@field AccelerationPlumeLoopClass FSoftObjectPath
---@field AccelerationPlumeSmokeClass FSoftObjectPath
---@field IsStoppedBlackboardKeyName string
---@field TargetLocationBlackboardKeyName string
---@field PathingLocationBlackboardKeyName string
---@field PathInputLocationBlackboardKeyName string
---@field bEnableWheeledVehicleSharpSlopeStickyCheck boolean
---@field bUseCustomSharpSlopeStickyCheck boolean
---@field WheeledVehicleSharpSlopeStickyCheck_CheckTimeWhenNoPassenger number
---@field WheeledVehicleSharpSlopeStickyCheck_MaxAngleInDegree number
---@field WheeledVehicleSharpSlopeStickyCheck_WheelRotationSpeed number
---@field ShouldDynamicEnableStopThreshold boolean
---@field OnlyEnbaleSharpSlopeCheckWhenNoDriver boolean
---@field bOnSharpSlope boolean
---@field BaseDragCoefficientScale number
---@field BaseTorqueScale number
---@field BaseMaxRPMScale number
---@field DragCoefficientScale number
---@field MaxRPMScale number
---@field TorqueScale number
---@field OriginDragCoefficient number
---@field OriginMaxRPM number
---@field RepDragCoefficient number
---@field RepMaxRPM number
---@field RepTorqueScale number
---@field UseOldCacheRelativeForwardSpeed boolean
---@field ShouldCacheRelativeForwardSpeed boolean @是否需要缓存相对速度
---@field FixReverseAsBrakeOnDynamicPlatform boolean @是否启用移动平台上载具驾驶修复
---@field bEnableTankTurn boolean
---@field TankTurnState number
---@field ServerAuthorizeTankTurn boolean
---@field ShowTankTurnUI boolean
---@field TurningYawSpeedInDegrees number
---@field MinWheelsNumOnLandWhenTankTurn number
---@field LinVelSpeedThresholdTankTurn number
---@field MaxSlopAngleTankTurn number
---@field TankTurnThrottleInput number
---@field VehicleTankTurnStateChangeDelegate FVehicleTankTurnStateChangeDelegate
---@field bEnableWheeledVehicleSharpSlopeLimitMove boolean
---@field WheeledVehicleSharpSlopeLimitMove_MaxAngleInDegree number
---@field WheeledVehicleSharpSlopeLimitMove_Strategy number
---@field WheeledVehicleSharpSlopeLimitMove_SlipConfig ULuaArrayHelper<FWheeledVehicleWheelSlipConfig>
---@field bUseWheeledVehicleSharpSlopeLimitMoveEvent boolean
---@field bSharpSlopeLimitMove boolean
---@field PS_TireExplosion UParticleSystem
---@field bEnableCheckNoFuelMoveValid boolean
---@field NotConsumeFuelMoveDistanceOnClientAuth number
---@field NotConsumeFuelMoveDistanceToServerAuthThreshold number
---@field NotConsumeFuelServerAuthTime number
---@field ShouldDestroyPhysxWhileFreeze boolean @<是否在车报废后删除物理
---@field TorqueMultiplierforBoosting number
---@field ValidTransformMinWheelNum number
---@field bEnablePostPhysXTickClient boolean
---@field STBurnTirePsArray FBurnTirePSArray
---@field bEnableAutoMoveForward boolean
---@field FrontLightNameConfig string
---@field BackLightName string
---@field EngineEffectName string
---@field fUpdateMoveEffectSpeed number
local ASTExtraBaseWheeledVehicle = {}

function ASTExtraBaseWheeledVehicle:GetTrailMarkClass() end

---@param InClass ATrailMarkActor
function ASTExtraBaseWheeledVehicle:SetTrailMarkClass(InClass) end

function ASTExtraBaseWheeledVehicle:GetAvatarTrailOffset() end

---@param InAvatarTrailOffset ULuaArrayHelper<FVector>
---@param ForceOverride boolean
function ASTExtraBaseWheeledVehicle:SetAvatarTrailOffset(InAvatarTrailOffset, ForceOverride) end

---@param rate number
function ASTExtraBaseWheeledVehicle:MoveForward(rate) end

---@param rate number
function ASTExtraBaseWheeledVehicle:MoveRight(rate) end

---@param rate number
function ASTExtraBaseWheeledVehicle:MoveUp(rate) end

---@param rate number
function ASTExtraBaseWheeledVehicle:SetHandBrake(rate) end

function ASTExtraBaseWheeledVehicle:OnWheelsLanded() end

---@return boolean
function ASTExtraBaseWheeledVehicle:GetIsAllWheelsInAir() end

---@param bIsUp boolean
function ASTExtraBaseWheeledVehicle:OnGearChanged(bIsUp) end

function ASTExtraBaseWheeledVehicle:OnRep_ReplicatedState() end

---Pass current state to server
---@param InSteeringInput number
---@param InThrottleInput number
---@param InBrakeInput number
---@param InHandbrakeInput number
---@param InCurrentGear number
function ASTExtraBaseWheeledVehicle:STServerUpdateState(InSteeringInput, InThrottleInput, InBrakeInput, InHandbrakeInput, InCurrentGear) end

function ASTExtraBaseWheeledVehicle:STReplicatedStateClearAll() end

---@param Flag boolean
function ASTExtraBaseWheeledVehicle:STReplicatedStateSetBrake(Flag) end

---@param Flag boolean
function ASTExtraBaseWheeledVehicle:STReplicatedStateSetHandrake(Flag) end

function ASTExtraBaseWheeledVehicle:OpenBurnTire() end

---@param Open boolean
function ASTExtraBaseWheeledVehicle:OpenLaunchControll(Open) end

---@return boolean
function ASTExtraBaseWheeledVehicle:GetAllBurnTireWheelBroken() end

---@return boolean
function ASTExtraBaseWheeledVehicle:GetAllBurnTireWheelOnGround() end

function ASTExtraBaseWheeledVehicle:UpdateShouldPlayBrakeBtnAnim() end

---@param NewLaunchControl boolean
---@param fDeltaTime number
function ASTExtraBaseWheeledVehicle:UpdateLaunchControlState(NewLaunchControl, fDeltaTime) end

---@param NewLaunchControlEnergy number
---@return boolean
function ASTExtraBaseWheeledVehicle:SetLaunchControlEnergy(NewLaunchControlEnergy) end

---@param NewLaunchControlState ELaunchControlState
function ASTExtraBaseWheeledVehicle:SetLaunchControlState(NewLaunchControlState) end

---@param PreLaunchControlEnergy number
function ASTExtraBaseWheeledVehicle:OnRep_LaunchControlEnergy(PreLaunchControlEnergy) end

---@param PreLaunchControlState ELaunchControlState
function ASTExtraBaseWheeledVehicle:OnRep_LaunchControlState(PreLaunchControlState) end

---@param PreLaunchControlState ELaunchControlState
function ASTExtraBaseWheeledVehicle:BPOnRep_LaunchControlState(PreLaunchControlState) end

---@param inClass string
function ASTExtraBaseWheeledVehicle:SetDustConfigClass(inClass) end

function ASTExtraBaseWheeledVehicle:OnRep_DustConfigClass() end

---@param inClass string
function ASTExtraBaseWheeledVehicle:SetAccelerationPlumeLoopClass(inClass) end

function ASTExtraBaseWheeledVehicle:OnRep_AccelerationPlumeLoopClass() end

---@param inClass string
function ASTExtraBaseWheeledVehicle:SetAccelerationPlumeSmokeClass(inClass) end

function ASTExtraBaseWheeledVehicle:OnRep_AccelerationPlumeSmokeClass() end

---@param DeltaSeconds number
---@param TargetLocation FVector
---@param PathingLocation FVector
---@param PathInputLocation FVector
function ASTExtraBaseWheeledVehicle:MulticastDrawNavigationDebug(DeltaSeconds, TargetLocation, PathingLocation, PathInputLocation) end

---@param DeltaSeconds number
---@param BoxTraceStart FVector
---@param BoxTraceEnd FVector
---@param BoxHalfSize FVector
---@param BoxOrientation FRotator
---@param ObjectTypesToAvoid ULuaArrayHelper<EObjectTypeQuery>
function ASTExtraBaseWheeledVehicle:MulticastDrawAvoidanceDebugBoxTraceSingle(DeltaSeconds, BoxTraceStart, BoxTraceEnd, BoxHalfSize, BoxOrientation, ObjectTypesToAvoid) end

---@param DeltaSeconds number
---@param BoxTraceStart FVector
---@param BoxTraceEnd FVector
---@param BoxHalfSize FVector
---@param BoxOrientation FRotator
---@param ObjectTypesToAvoid ULuaArrayHelper<EObjectTypeQuery>
function ASTExtraBaseWheeledVehicle:MulticastDrawAvoidanceDebugBoxTraceMulti(DeltaSeconds, BoxTraceStart, BoxTraceEnd, BoxHalfSize, BoxOrientation, ObjectTypesToAvoid) end

---@param DeltaSeconds number
---@param LineTraceStart FVector
---@param LineTraceEnd FVector
---@param ObjectTypesToAvoid ULuaArrayHelper<EObjectTypeQuery>
function ASTExtraBaseWheeledVehicle:MulticastDrawAvoidanceDebugLineTraceSingle(DeltaSeconds, LineTraceStart, LineTraceEnd, ObjectTypesToAvoid) end

---@param DeltaSeconds number
---@param LineTraceStart FVector
---@param LineTraceEnd FVector
---@param ObjectTypesToAvoid ULuaArrayHelper<EObjectTypeQuery>
function ASTExtraBaseWheeledVehicle:MulticastDrawAvoidanceDebugLineTraceMulti(DeltaSeconds, LineTraceStart, LineTraceEnd, ObjectTypesToAvoid) end

---@param NewOnSharpSlope boolean
function ASTExtraBaseWheeledVehicle:SetOnSharpSlope(NewOnSharpSlope) end

function ASTExtraBaseWheeledVehicle:OnRep_bOnSharpSlope() end

function ASTExtraBaseWheeledVehicle:OnRep_RepDragCoefficient() end

function ASTExtraBaseWheeledVehicle:OnRep_RepMaxRPM() end

function ASTExtraBaseWheeledVehicle:OnRep_RepTorqueScale() end

---@param InScale number
function ASTExtraBaseWheeledVehicle:ModifyWheeledVehicleDragCoefficientScale(InScale) end

---@return number
function ASTExtraBaseWheeledVehicle:GetDragCoefficientScale() end

---@param InScale number
function ASTExtraBaseWheeledVehicle:ModifyWheeledVehicleMaxRPMScale(InScale) end

---@param InScale number
function ASTExtraBaseWheeledVehicle:ModifyWheeledVehicleTorqueScale(InScale) end

function ASTExtraBaseWheeledVehicle:ApplyConfigDataAfterChangeAvatar() end

---@return number
function ASTExtraBaseWheeledVehicle:GetRelativeForwardSpeed() end

function ASTExtraBaseWheeledVehicle:CacheRelativeForwardSpeed() end

---@param Enable boolean
function ASTExtraBaseWheeledVehicle:EnableTankTurn(Enable) end

---@param InTankTurnState number
function ASTExtraBaseWheeledVehicle:ReqTankTurn(InTankTurnState) end

---@param State number
function ASTExtraBaseWheeledVehicle:SetTankTurnState(State) end

function ASTExtraBaseWheeledVehicle:UpdateTankTurnUI() end

function ASTExtraBaseWheeledVehicle:OnRep_bEnableTankTurn() end

function ASTExtraBaseWheeledVehicle:OnRep_TankTurnState() end

---@param ShowTips boolean
---@return ETankTurnResult
function ASTExtraBaseWheeledVehicle:CanTankTurn(ShowTips) end

---@param ShowTips boolean
---@return ETankTurnResult
function ASTExtraBaseWheeledVehicle:ClientCanTankTurn(ShowTips) end

---@return boolean
function ASTExtraBaseWheeledVehicle:CanTankTurnBP() end

---@return boolean
function ASTExtraBaseWheeledVehicle:ClientCanTankTurnBP() end

function ASTExtraBaseWheeledVehicle:OnRep_bEnableTankTurnBP() end

---@param DeltaTime number
function ASTExtraBaseWheeledVehicle:TickTankTurn(DeltaTime) end

---@param DeltaTime number
function ASTExtraBaseWheeledVehicle:TickTankTurnAfterVehicleUpdate(DeltaTime) end

---@return boolean
function ASTExtraBaseWheeledVehicle:WheelOnLandValidWhenTankTurn() end

---@param DeltaTime number
function ASTExtraBaseWheeledVehicle:DoTankTurnAfterVehicleUpdate(DeltaTime) end

---@param VehicleAvatarHandle UBackpackVehicleBaseHandle
function ASTExtraBaseWheeledVehicle:SetTankTurnParams(VehicleAvatarHandle) end

function ASTExtraBaseWheeledVehicle:OnVehicleTankTurnStateChange() end

---@param DeltaTime number
function ASTExtraBaseWheeledVehicle:WheeledVehicleSharpSlopeLimitMove(DeltaTime) end

---@param DeltaTime number
function ASTExtraBaseWheeledVehicle:WheeledVehicleSharpSlopeLimitMoveEvent(DeltaTime) end

---@param Limit boolean
function ASTExtraBaseWheeledVehicle:SetSharpSlopeLimitMove(Limit) end

function ASTExtraBaseWheeledVehicle:OnRep_bSharpSlopeLimitMove() end

---@param WheelIndex number
function ASTExtraBaseWheeledVehicle:PlayTireExplosionEffect(WheelIndex) end

---@return number
function ASTExtraBaseWheeledVehicle:GetVehicleSpeed() end

---@return number
function ASTExtraBaseWheeledVehicle:GetVehicleSlip() end

---@param MinSpeed number
---@return number
function ASTExtraBaseWheeledVehicle:GetCurrentGear(MinSpeed) end

function ASTExtraBaseWheeledVehicle:PostLoadMesh() end

---@return number
function ASTExtraBaseWheeledVehicle:GetTorqueMultiplierforBoosting() end

---@param InTorqueMultiplierforBoosting number
function ASTExtraBaseWheeledVehicle:SetTorqueMultiplierforBoosting(InTorqueMultiplierforBoosting) end

function ASTExtraBaseWheeledVehicle:OnRep_EngineStatic() end

---@param bBurnTireState boolean
---@param fDeltaTime number
function ASTExtraBaseWheeledVehicle:BurnTire(bBurnTireState, fDeltaTime) end

---@param LightValue number
function ASTExtraBaseWheeledVehicle:OnSetTailLightValue(LightValue) end

function ASTExtraBaseWheeledVehicle:OnEngineStop() end

function ASTExtraBaseWheeledVehicle:OnEngineStart() end

function ASTExtraBaseWheeledVehicle:OnUpdateEffects() end

function ASTExtraBaseWheeledVehicle:EndResolvingStuck() end
