---@meta

---@class FHoverVehiclePostPhysxTick
FHoverVehiclePostPhysxTick = {}


---@class FSegmentedSuspensionConfig
---@field SegmentStart number
---@field SegmentEnd number
---@field SegmentStiffness number
FSegmentedSuspensionConfig = {}


---@class FHoverWheelConfig
---@field StartOffset FVector
---@field LengthRelaxed number
---@field Radius number
---@field Stiffness number
---@field Damping number
---@field ForceScale number
---@field bUseSegmentedSuspension boolean
---@field SegmentedSuspensionConfigs ULuaArrayHelper<FSegmentedSuspensionConfig>
---@field BoneName string
---@field MaxCompress number
---@field MaxDrop number
FHoverWheelConfig = {}


---@class FHoverVehicleEngineState
---@field CurMaxTurnAngelVelocity number
---@field ChassisForce FVector
---@field ChassisTorque FVector
---@field LocalLinearVelocity FVector
---@field LocalAngularVelocity FVector
---@field SpeedKmH number
---@field SpeedPercent number
---@field CenterOfMass FVector
---@field GravityForce FVector
---@field SuspensionHitResults ULuaArrayHelper<FHitResult>
---@field CenterHitResult FHitResult
---@field OnGroundWheel ULuaArrayHelper<boolean>
---@field OnReverse boolean
---@field PreJounce ULuaArrayHelper<number>
---@field Jounce ULuaArrayHelper<number>
---@field SuspensionForces ULuaArrayHelper<FVector>
---@field DynamicMaxSpeed number
---@field AdditionAccelerateFactor number
---@field DeltaTime number
---@field GravityFactor number
---@field CurrentInLowSpeedTime number
FHoverVehicleEngineState = {}


---@class FHoverVehicleReplicatedState
---@field LinearVelocity FVector
---@field AngularVelocity FVector
---@field CarTransform FTransform
---@field RightInput number
---@field ForwardInput number
---@field BrakeInput number
---@field PreJounce ULuaArrayHelper<number>
FHoverVehicleReplicatedState = {}


---@class FHoverInputInterpSetting
---@field ShouldInterp boolean
---@field RiseRate number
---@field FallRate number
FHoverInputInterpSetting = {}


---@class FHoverInputConfig
---@field RightInputInterpolation FHoverInputInterpSetting @左右旋转输入值增加与衰减的速度
---@field ForwardInputInterpolation FHoverInputInterpSetting @油门输入值增加与衰减的速度
FHoverInputConfig = {}


---@class UHoverVehicleMovementComponent: UPawnMovementComponent
---@field PostPhysxComponentTick FHoverVehiclePostPhysxTick
---@field _mass number
---@field InertiaTensorScale FVector @Scales the vehicle's inertia in each direction (forward, right, up)
---@field _gravityScale number
---@field _maxSpeed number @Maximum speed that the vehicle can reach, once reach acceleration is ignored
---@field bClampMaxSpeed boolean
---@field _acceleration number
---@field SpeedRatioPow number
---@field _deceleration number
---@field BrakeForceFactor number
---@field EngineDampingShouldOnlyOnGround boolean
---@field bEnableClampSuspensionDampingForce boolean
---@field MinSuspensionDamping number
---@field bUseCapsuleTrace boolean
---@field TraceCapsuleHalfHeight number
---@field TraceCapsuleCheckTerrainOffset number
---@field TraceCapsuleCheckTerrainIncreaseOffset number
---@field TraceCapsuleRadius number
---@field bUseTraceCapsuleOnHitNothing boolean
---@field TraceCapsuleMaxDropOnHitNothing number
---@field StartCapsuleTraceStartOffset FVector
---@field TraceCapsuleLength number
---@field TraceCapsuleMaxDrop number
---@field TraceCapsuleRestLength number
---@field TraceCapsuleMaxCompress number
---@field TraceCapsuleDamping number
---@field TraceCapsuleStiffness number
---@field ClampCapusleDampForce number
---@field bEnableHighFPSOpt boolean
---@field WheelConfig ULuaArrayHelper<FHoverWheelConfig>
---@field SprungMasses ULuaArrayHelper<number>
---@field SuspensionTravelDir FVector
---@field bUseSprungMassCalcSuspensionForce boolean
---@field CenterHitOffset number
---@field ClearZVelocityThreshold number
---@field ClearZDistanceThreshold number
---@field bUseTraceChannel boolean
---@field bUseMutliTraceChannel boolean
---@field bUseCenterTraceChannel boolean
---@field LandTraceChannel ECollisionChannel
---@field bSuspensionForceUseFixPoint boolean
---@field bSuspensionForceUseSuspensionDir boolean
---@field bSuspensionForceConsiderSlope boolean
---@field _adherence number @Adherence force. This force will scale based on how much the vehicle is sliding and be applied alongside the vehicle's right vector. It's one of the most important setting to get right to get the feeling that the vehicle sticks to the road.
---@field MinSpeedDontCalcAdherence number
---@field DampingAngularVelocitySpeedAdherence number
---@field DampingAngularVelocitySpeedAdherence_LowSpeed number
---@field DampingAngularShouldOnlyOnGround boolean
---@field DampingAngularOnGroundWheelNum number
---@field AdherenceForceShouldOnlyOnGround boolean
---@field ShouldAutoReturn_Roll boolean
---@field AutoReturn_MaxRoll number
---@field AutoReturnTorqueMassScale_Roll number @Roll方向自动回正的Torque大小和当前Mass的关系
---@field AutoReturnTorqueMassScale_RollPow number @Roll方向自动回正Torque大小和当前倾斜程度的关系的Pow值
---@field ShouldAutoReturn_Pitch boolean
---@field AutoReturn_MaxPitch number
---@field AutoReturnTorqueMassScale_Pitch number @Pitch方向自动回正的Torque大小和当前Mass的关系
---@field AutoReturnTorqueMassScale_PitchPow number @Pitch方向自动回正Torque大小和当前倾斜程度的关系的Pow值
---@field DragCoefficient number
---@field DebugDragMagnitude number
---@field ZeroLinearVelThreshold number
---@field ChassisWidth number @Chassis width used for drag force computation (cm)
---@field ChassisHeight number @Chassis height used for drag force computation (cm)
---@field CheckStopVehicleSpeed number
---@field CheckStopVehicleAngularSpeed number
---@field CalacVelEqualGravityThreshold number
---@field CheckStopVehicleTime number
---@field MinTurnSpeed number
---@field _turningForce number
---@field MaxYawSpeed number
---@field MaxRoll number
---@field OpenDamping boolean
---@field bOpenSleep boolean
---@field bUseLocalSpaceKinematics boolean
---@field RightInput number
---@field ForwardInput number
---@field BrakeInput number
---@field ReplicatedRightInput number
---@field ReplicatedForwardInput number
---@field ReplicatedBrakeInput number
---@field CurEngineState FHoverVehicleEngineState
---@field CurReplicatedState FHoverVehicleReplicatedState
---@field InputConfig FHoverInputConfig
---@field bEnablePhysics boolean
---@field bEnableAcceleration boolean
---@field bEnableTurn boolean
---@field bEnableAdherence boolean
---@field bEnableSuspensionForceTotally boolean
---@field bEnableSuspensionForceTorque boolean
---@field bEnableSuspensionForce boolean
---@field bEnableAutoReturn boolean
---@field bEnableCalcSuspensionAngularAcc boolean
---@field bEnableClampMaxRoll boolean
---@field bEnablePeneTerrainCheck boolean
---@field bLastHitResult boolean
---@field bLastCapsuleTrace boolean
---@field bEnablePostEvent boolean
---@field bEnableThunderboltMove boolean
---@field bEnableFollowControlView boolean
---@field bFollowControlViewFirst boolean
---@field bInWaterDontCalcSuspension boolean
---@field bEnableConfirmFinalVel boolean
---@field MaxZVelocity number
---@field CheckServerAuthTime number
---@field bCalcGravity boolean
---@field bEnableCanRotViewEvent boolean
---@field bEnableProcessViewRotationEvent boolean
---@field SteerViewSpeed number
---@field TurnViewYawValidThreshold number
---@field CanTurnViewGroundViewNum number
---@field MaxValidPitchCanRot number
---@field TargetViewRot FRotator
---@field bTurningBodyYaw boolean
---@field bUsePredictLocToOverlap boolean
---@field bUseTorqueRotBody boolean
---@field MaxRotPowerAngel number
---@field MaxRotTorquePower number
---@field bOverlapIgnoreVehicle boolean
---@field BoxOverlapCheckRotValid ULuaArrayHelper<FVector>
---@field IgnoreProcessViewTag string
---@field OffsetOverlapCheckRotValid ULuaArrayHelper<FVector>
---@field RotatorOverlapCheckRotValid ULuaArrayHelper<FRotator>
---@field OverlapCheckRotValidIgnoreChannel ULuaArrayHelper<ECollisionChannel>
---@field bEnableMainBodyPose boolean
---@field MainBodyPoseMinDegreeError number
---@field MainBodyPoseMinDegreesRange number
---@field MainBodyPoseAngularK number
---@field MainBodyPoseAngularD number
---@field CalcVehicleDynamicWheelOnGroundNum number
local UHoverVehicleMovementComponent = {}

---@return boolean
function UHoverVehicleMovementComponent:IsOnGround() end

---@return boolean
function UHoverVehicleMovementComponent:IsTotallyOnGround() end

---@return number
function UHoverVehicleMovementComponent:OnGroundNum() end

---@param Percent number
---@return boolean
function UHoverVehicleMovementComponent:CheckOnGroundByPercent(Percent) end

---@param CarTransform FTransform
---@param EngineState FHoverVehicleEngineState
---@return boolean
function UHoverVehicleMovementComponent:ShootCapsuleSuspensionRayCasts(CarTransform, EngineState) end

---@param EngineState FHoverVehicleEngineState
---@param ReplicatedState FHoverVehicleReplicatedState
---@param WheelIndex number
---@return FVector
function UHoverVehicleMovementComponent:CalcSuspensionForceByCapsule(EngineState, ReplicatedState, WheelIndex) end

---@param Right number
---@param Forward number
---@param Brake number
function UHoverVehicleMovementComponent:SendInputToServer(Right, Forward, Brake) end

---@param Right number
---@param Forward number
---@param Brake number
---@param Mass number
---@param Gravity number
function UHoverVehicleMovementComponent:SendInputToServerWithMass(Right, Forward, Brake, Mass, Gravity) end

---@param DeltaTime number
function UHoverVehicleMovementComponent:PostTickNativeEvent(DeltaTime) end

---@param EngineState FHoverVehicleEngineState
---@param ReplicatedState FHoverVehicleReplicatedState
---@param LinearVel FVector
---@param AngularVel FVector
function UHoverVehicleMovementComponent:ConfirmFinalVel(EngineState, ReplicatedState, LinearVel, AngularVel) end

---@param EngineState FHoverVehicleEngineState
---@param ReplicatedState FHoverVehicleReplicatedState
---@param DynamicChassisForce FVector
---@param DynamicChassisTorque FVector
function UHoverVehicleMovementComponent:AddLateralAccelerate(EngineState, ReplicatedState, DynamicChassisForce, DynamicChassisTorque) end

---@param CurTrans FTransform
---@param EngineState FHoverVehicleEngineState
---@param ReplicatedState FHoverVehicleReplicatedState
---@return boolean
function UHoverVehicleMovementComponent:CanRotView(CurTrans, EngineState, ReplicatedState) end

---@param CurTrans FTransform
---@param EngineState FHoverVehicleEngineState
---@param ReplicatedState FHoverVehicleReplicatedState
---@return boolean
function UHoverVehicleMovementComponent:CanRotViewEvent(CurTrans, EngineState, ReplicatedState) end

---@param DeltaTime number
---@param CurTrans FTransform
---@param EngineState FHoverVehicleEngineState
---@param ReplicatedState FHoverVehicleReplicatedState
---@param OutAngularVelocity FVector
function UHoverVehicleMovementComponent:ProcessViewRotation(DeltaTime, CurTrans, EngineState, ReplicatedState, OutAngularVelocity) end

---@param DeltaTime number
---@param CurTrans FTransform
---@param EngineState FHoverVehicleEngineState
---@param ReplicatedState FHoverVehicleReplicatedState
---@param OutAngularVelocity FVector
function UHoverVehicleMovementComponent:ProcessViewRotationEvent(DeltaTime, CurTrans, EngineState, ReplicatedState, OutAngularVelocity) end

---@return boolean
function UHoverVehicleMovementComponent:ShouldDSControl() end
