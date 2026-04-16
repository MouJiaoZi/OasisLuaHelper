---@meta

---@class EArcadeVehicleDriftState
---@field Normal number
---@field Drift number
---@field DragDrift number
---@field DriftToNormal number
EArcadeVehicleDriftState = {}


---@class EArcadeVehicleAdditionAccelerateType
---@field None number
---@field DriftFinishAccelerate number
---@field NIOAccelearte number
EArcadeVehicleAdditionAccelerateType = {}


---@class FArcadeVehiclePostPhysxTick
FArcadeVehiclePostPhysxTick = {}


---@class FWheelConfig
---@field StartOffset FVector
---@field LengthRelaxed number
---@field Radius number
---@field Stiffness number
---@field Damping number
---@field ForceScale number
FWheelConfig = {}


---@class FSuspensionStruct
---@field SuspensionSpringStrength number
---@field SuspensionNaturalFrequency number
---@field SuspensionSpringMaxDrop number
---@field SuspensionSpringMaxCompression number
---@field SuspensionSpringDamperRate number
---@field TireForceOffset FVector
FSuspensionStruct = {}


---@class FArcadeVehicleAdditionAccelerateData
---@field AccelerateType EArcadeVehicleAdditionAccelerateType
---@field AccelerateTime number
---@field AccelerateFactor number
---@field MaxSpeedInKm number
FArcadeVehicleAdditionAccelerateData = {}


---@class FArcadeVehicleEngineState
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
---@field OnGroundWheel ULuaArrayHelper<boolean>
---@field OnReverse boolean
---@field PreJounce ULuaArrayHelper<number>
---@field Jounce ULuaArrayHelper<number>
---@field SuspensionForces ULuaArrayHelper<FVector>
---@field OnGround boolean
---@field DynamicMaxSpeed number
---@field AdditionAccelerateFactor number
---@field DeltaTime number
---@field GravityFactor number
FArcadeVehicleEngineState = {}


---@class FArcadeVehicleReplicatedState
---@field LinearVelocity FVector
---@field AngularVelocity FVector
---@field CarTransform FTransform
---@field DriftState EArcadeVehicleDriftState
---@field PreDriftState EArcadeVehicleDriftState
---@field RightInput number
---@field ForwardInput number
---@field BrakeInput number
---@field CurDriftDir number
---@field DriftInput boolean
---@field CurSlipAngel number
---@field PreJounce ULuaArrayHelper<number>
---@field DriftTime number
FArcadeVehicleReplicatedState = {}


---@class FArcadeVehicleAccelerateEvent : ULuaMulticastDelegate
FArcadeVehicleAccelerateEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AccelerateData: FArcadeVehicleAdditionAccelerateData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FArcadeVehicleAccelerateEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param AccelerateData FArcadeVehicleAdditionAccelerateData
function FArcadeVehicleAccelerateEvent:Broadcast(AccelerateData) end


---@class FArcadeVehicleDriftStateChange : ULuaMulticastDelegate
FArcadeVehicleDriftStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurState: EArcadeVehicleDriftState, OldState: EArcadeVehicleDriftState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FArcadeVehicleDriftStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurState EArcadeVehicleDriftState
---@param OldState EArcadeVehicleDriftState
function FArcadeVehicleDriftStateChange:Broadcast(CurState, OldState) end


---@class FArcadeVehicleDriftWithReverseInput : ULuaSingleDelegate
FArcadeVehicleDriftWithReverseInput = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FArcadeVehicleDriftWithReverseInput:Bind(Callback, Obj) end

---执行委托
function FArcadeVehicleDriftWithReverseInput:Execute() end


---@class UArcadeVehicleMovement: UActorComponent
---@field OpenSuspension boolean
---@field OpenTickSuspension boolean
---@field OpenAdherence boolean
---@field OpenAccelerate boolean
---@field OpenTurn boolean
---@field OpenDamping boolean
---@field OpenStabilize boolean
---@field OpenDraw boolean
---@field OpenDriftVelocityMerge boolean
---@field _suspensionPointsBones ULuaArrayHelper<string> @The name of the bones that will give the positions from where the suspension ray casts will be shoot and the suspension forces will be applied. Those should usually be located at the perfect center of the wheels. Note that all those positions should have almost the same Z value otherwise the vehicle may not be stable when stopped
---@field _suspensionRayCastLength number @The height of the suspension. That's the distance of the suspension ray cast. You usually want to set this bigger than the wheel radius to get a feeling of the vehicle sticking to the road
---@field _targetSuspensionHeight number @Super important! This is the distance that the suspension system will try to enforce. This means that it's going to be the distance between your suspension point bone and the ground. On a regular car, this should be close to the radius of the wheel.
---@field WheelSuspension ULuaArrayHelper<FSuspensionStruct>
---@field WheelConfig ULuaArrayHelper<FWheelConfig>
---@field WheelRadius number
---@field MaxCompressSuspensionClampVelocityZ number
---@field MaxCompressSuspensionClampRate number
---@field MaxCompressSuspensionDeltaLength number
---@field bUsePhysxSuspensionMode boolean
---@field NeedReCalculateVisualJouncePitch number
---@field VisualJounce ULuaArrayHelper<number>
---@field _minMaxSuspensionOffsets FVector2D @Those parameters will be set on the Animation Blueprint to move the wheel bones along their Z axis to simulate suspension compression based on the current ray cast suspension height. Use those values to give a more realistic feel to the suspension.
---@field _suspensionDamping number @Damping applied to the suspension force. The higher the value the fastest the suspension will come to a stable position. The lower the value, the more it will feel like a spring.
---@field _adherence number @Adherence force. This force will scale based on how much the vehicle is sliding and be applied alongside the vehicle's right vector. It's one of the most important setting to get right to get the feeling that the vehicle sticks to the road.
---@field DampingAngularVelocitySpeedAdherence number
---@field _comOffset FVector @Offset applied to the physic body center of mass. Based on the wheels position, the precalculated center mass may not be properly position between the wheels, meaning that the vehicle will slightly move by default. Use this value to make it stable. Note that this is meters and not cm and its related to Physx!
---@field _linearDamping number @Physics Linear damping, this setting will override the value set in the Physics material
---@field _mass number @Physics mass value, this setting will override the value set in the Physics material If you want to make the vehicle feel heavier, try to play with the gravity scale.
---@field InertiaTensorScale FVector @Scales the vehicle's inertia in each direction (forward, right, up)
---@field _gravityScale number @Instead of changing the mass and having to re-tweak other settings, just adjust the gravity scale, it will give the feeling that the object is heavier
---@field bEnableCustomGravity boolean
---@field _maxSpeed number @Maximum speed that the vehicle can reach, once reach acceleration is ignored
---@field _acceleration number @Acceleration force value
---@field ReverseForceDamping number
---@field BrakeForceFactor number @Brake force value
---@field _accelerateBrakeOffset FVector @Offset in worldspace from the center of mass to where the acceleration and brake force will be applied
---@field _maxReverseSpeed number @Maximum speed that the vehicle can reach while in reverse, once reach braking is ignored
---@field _nbWheelsForOnGround number @This is the number of wheels that must be contacting with the ground (ie have their suspension raycast hitting an actor) for the vehicle to be considered "On Ground". Being "On ground" means that the vehicle can accelerate / brake and jump.
---@field AccelerateConfig ULuaArrayHelper<FArcadeVehicleAdditionAccelerateData>
---@field _angularDamping number @Physics Angular damping, this setting will override the value set in the Physics material
---@field _wheelsMaxDirectionAngle number @The maximum angle that the wheels can reach when turning. (This is visual only and will not affect gameplay. Gameplay turning is changed by adjusting the turningSpeed property)
---@field _wheelsRotationToNeutralDuration number @The time it will take the wheels to go back to neutral from their maximum turning angle (This is visual only and will not affect gameplay)
---@field _maxTurningAngleAtMinSpeed number @How fast the car can turn when at min speed (maximum angular velocity in degrees/seconds)
---@field _maxTurningAngleAtFullSpeed number @How fast the car can turn when at max speed (maximum angular velocity in degrees/seconds) You usually want this value to be smaller at max speed to give the feeling of an assisted direction
---@field _turningForce number @The Torque force
---@field CurSlipAngel number
---@field CurMaxSlipAngel number
---@field CurDriftDirFactor number
---@field CurSideSlipFactor number
---@field CurDriftDir number
---@field MaxSlipAngelOnDrift number
---@field MaxSlipAngelOnDragDrift number
---@field MinSlipAngelContinueDragDrift number
---@field MinSpeedCanDrift number
---@field DriftSlipAngelSpeed number
---@field PitchStabilizationSpeed number @Speed at which the car will go back to neutral position while airborne (only if stabilize in air is enabled)
---@field PitchStabilizationAngularVelocityFactor number
---@field RollStabilizationSpeed number
---@field RollStabilizationAngularVelocityFactor number
---@field AllWheelOnGroundClampZAxisVelocity number
---@field LowSpeedThreshold number
---@field Speed number
---@field SpeedPercent number
---@field _accelerating boolean
---@field _turning boolean
---@field _braking boolean
---@field _drifting boolean
---@field _stopped boolean
---@field _turningScale number
---@field OnGround boolean
---@field _onReverse boolean
---@field _wheelsDirection number
---@field _nbWheelsOnGround number
---@field _linearVelocityLocal FVector
---@field _angularVelocityLocal FVector
---@field _angularVelocity FVector
---@field _suspensionPts ULuaArrayHelper<FVector>
---@field SprungMasses ULuaArrayHelper<number>
---@field SpringStrengths ULuaArrayHelper<number>
---@field SpringDamperRates ULuaArrayHelper<number>
---@field SusForceCMOffset ULuaArrayHelper<FVector>
---@field _gravityForce FVector
---@field _suspensionForces ULuaArrayHelper<FVector>
---@field SuspensionHitResults ULuaArrayHelper<FHitResult>
---@field ServerReplicatedSuspensionHitResults ULuaArrayHelper<FHitResult>
---@field PreJounce ULuaArrayHelper<number>
---@field Jounce ULuaArrayHelper<number>
---@field _suspensionOffsets ULuaArrayHelper<FVector>
---@field _lastFrameTraveledDistance number
---@field PostTick FArcadeVehiclePostPhysxTick
---@field CurEngineState FArcadeVehicleEngineState
---@field CurReplicatedState FArcadeVehicleReplicatedState
---@field ServerReplicatedState FArcadeVehicleReplicatedState
---@field CurAdditionAccelrateList ULuaArrayHelper<FArcadeVehicleAdditionAccelerateData>
---@field OnAddAccelerateEvent FArcadeVehicleAccelerateEvent
---@field OnRemoveAccelerateEvent FArcadeVehicleAccelerateEvent
---@field CurDriftState EArcadeVehicleDriftState
---@field PreDriftState EArcadeVehicleDriftState
---@field OnDriftStateChange FArcadeVehicleDriftStateChange
---@field OnDriftWithReverseInput FArcadeVehicleDriftWithReverseInput
---@field _rotationAngle number
---@field _maxTurningAngle number
---@field _accelerationScale number
---@field _brakingScale number
---@field _wheelsDirectionTimer number
---@field _wheelsDirectionChangeDuration number
---@field _wheelsTargetDirection number
---@field _wheelsPreviousDirection number
---@field _driftTimer number
---@field _driftDirection number
---@field _canDrift boolean
---@field _driftRecoverTimer number
---@field _accDir FVector
---@field _linearVelocityWorld FVector
---@field _adherenceForce FVector
---@field _accelerationForce FVector
---@field _tractionOffsetInWorldSpace FVector
---@field _speedInCms number
---@field _previousSpeedInCms number
---@field _reverseDelayTimer number
---@field LastRightInput number
---@field DragCoefficient number
---@field DebugDragMagnitude number
---@field ChassisWidth number @Chassis width used for drag force computation (cm)
---@field ChassisHeight number @Chassis height used for drag force computation (cm)
---@field CheckStopVehicleSpeed number
---@field DragForceVector FVector
---@field bEnableClampRollVelocity boolean
---@field MaxRollVelocity number
---@field bUseForwardDirSpeed boolean
---@field UsePhysTask boolean
---@field bOpenPostTick boolean
---@field bOpenAutoAccelerate boolean
---@field DSDontSimulate boolean
---@field bSimpleCalcSuspension boolean
---@field bOpenReCalcuateVisualJounce boolean
---@field bPrintScreenLog boolean
---@field bPrintSuspensionLog boolean
---@field bOpenDrawPostTick boolean
---@field bClampZVelocityBeforeIntegrate boolean
---@field bUsePhysicsBlending boolean
---@field bDrawPhysicsBlendingLoc boolean
---@field bClampSuspensionForceXY boolean
local UArcadeVehicleMovement = {}

function UArcadeVehicleMovement:OnStartAccelerate() end

function UArcadeVehicleMovement:OnStopAccelerate() end

function UArcadeVehicleMovement:OnStartBrake() end

function UArcadeVehicleMovement:OnStopBrake() end

function UArcadeVehicleMovement:OnStartDrift() end

function UArcadeVehicleMovement:OnStopDrift() end

function UArcadeVehicleMovement:OnCanDriftStart() end

function UArcadeVehicleMovement:OnCanDriftEnd() end

function UArcadeVehicleMovement:OnStop() end

function UArcadeVehicleMovement:OnOffGroundStart() end

function UArcadeVehicleMovement:OnOffGroundEnd() end

---@param DeltaTime number
function UArcadeVehicleMovement:AfterNativeTickLogic(DeltaTime) end

---@param scale number
function UArcadeVehicleMovement:SetAccelerate(scale) end

---@param scale number
function UArcadeVehicleMovement:SetBrake(scale) end

---@param value boolean
function UArcadeVehicleMovement:SetDrift(value) end

---@param scale number
function UArcadeVehicleMovement:SetTurn(scale) end

function UArcadeVehicleMovement:Stop() end

---@param ThisTickFunction FArcadeVehiclePostPhysxTick
---@param DeltaTime number
function UArcadeVehicleMovement:PostPhysicsTick(ThisTickFunction, DeltaTime) end

---@param DeltaTime number
function UArcadeVehicleMovement:PostTickNativeFunc(DeltaTime) end

function UArcadeVehicleMovement:OnRep_ServerReplicatedState() end

---@param ClientState FArcadeVehicleReplicatedState
function UArcadeVehicleMovement:UpdateReplicatedStateToServer(ClientState) end

---@param AccType EArcadeVehicleAdditionAccelerateType
---@return boolean
function UArcadeVehicleMovement:HaveAccelerateType(AccType) end

---@return boolean
function UArcadeVehicleMovement:InAccelerateState() end

---@param AccType EArcadeVehicleAdditionAccelerateType
---@param AccTime number
---@param AccFactor number
---@param AccMaxSpeed number
function UArcadeVehicleMovement:AddAccelerateData(AccType, AccTime, AccFactor, AccMaxSpeed) end

---@param EngineState FArcadeVehicleEngineState
---@param ReplicatedState FArcadeVehicleReplicatedState
function UArcadeVehicleMovement:UpdateDynamicMaxSpeed(EngineState, ReplicatedState) end

---@param DeltaTime number
function UArcadeVehicleMovement:PhysicsTickEvent(DeltaTime) end

---@param EngineState FArcadeVehicleEngineState
---@return boolean
function UArcadeVehicleMovement:CanDrift(EngineState) end

---@param RightInput number
---@param DriftInput number
---@param OnDragDriftWithReverse boolean
function UArcadeVehicleMovement:UpdateArcadeDriftState(RightInput, DriftInput, OnDragDriftWithReverse) end

---@param EngineState FArcadeVehicleEngineState
---@param OutLinearVelocity FVector
function UArcadeVehicleMovement:ClampZVelocityWhenAllOnGround(EngineState, OutLinearVelocity) end

---@return FVector
function UArcadeVehicleMovement:GetAccDirVec() end

---@return number
function UArcadeVehicleMovement:GetForwardSpeed() end
