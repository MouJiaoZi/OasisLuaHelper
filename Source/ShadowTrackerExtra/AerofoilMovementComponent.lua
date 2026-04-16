---@meta

---@class EAerofoilType
---@field Fixed number
---@field Wing number
---@field Rudder number
---@field Elevator number
EAerofoilType = {}


---@class FVehicleTorqueControlConfig
---@field Enabled boolean @Torque Control Enabled
---@field YawTorqueScaling number @Yaw Torque Scaling
---@field YawFromSteering number
---@field YawFromRollTorqueScaling number
---@field PitchTorqueScaling number @Pitch Torque Scaling
---@field RollTorqueScaling number @Roll Torque Scaling
---@field RollFromSteering number
---@field RotationDamping number @Rotation damping
---@field RotationDampingMinSpeedInKM number
---@field RotationDampingMinHeight number
---@field SpeedToRollForceMap FMappedData @速度对 Roll 扭矩的系数
---@field SpeedToPitchForceMap FMappedData @速度对 Pitch 扭矩的系数
---@field SpeedToYawForceMap FMappedData @速度对 Pitch 扭矩的系数
FVehicleTorqueControlConfig = {}


---@class FVehicleAerofoilConfig
---@field Type EAerofoilType
---@field bEnable boolean
---@field DragMultiplier number
---@field LiftMultiplier number
---@field Camber number
---@field StallAngel number
---@field MaxInvalidAngel number
---@field Area number
---@field MaxControlAngel number
---@field UpAxis FVector
---@field Offset FVector
---@field ForceScale number
---@field CurWorldForce FVector
---@field CurControlSurfaceAngel number
---@field MinVelocityCalcLift number
---@field ForceDampingFactor FVector
FVehicleAerofoilConfig = {}


---@class FVehicleTargetRotationControlConfig
---@field Enabled boolean @Rotation Control Enabled
---@field bRollVsSpeedEnabled boolean
---@field RollControlScaling number
---@field RollMaxAngle number
---@field PitchControlScaling number
---@field PitchMaxAngle number
---@field bNewStiffness boolean
---@field AdvanceRotationStiffnessNew number @Rotation stiffness
---@field RotationStiffnessNew number
---@field RotationStiffnessMinSpeedInkm number
---@field RotationStiffnessMinHeight number
---@field FireRotationStiffness number
---@field FireRotationStiffnessMinSpeedInkm number
---@field FireRotationStiffnessMinHeight number
---@field FireRotationStiffnessConstantStep boolean
---@field CentreRotationMinSpeedInkm number
---@field CentreRotationMinHeight number
---@field CentreRotationStiffnessNew number
---@field RollCentreRotationStiffness number
---@field RollCentreRotationStiffnessJustRoll number
---@field RotationDamping number @Rotation damping
---@field MaxAccel number @Rotation mac accel
FVehicleTargetRotationControlConfig = {}


---@class FAerofoilInput
---@field ControlInput FVector
---@field ThrottleInput number
---@field LocalThrottleInput number
---@field bCanRotateBack boolean
---@field bCanRotateBackPitch boolean
---@field RollNotZeroInputTime number
---@field PitchNotZeroInputTime number
---@field YawNotZeroInputTime number
---@field CheckOnFire boolean
---@field OnFireInput boolean
---@field BeforeFireBtnViewRot FRotator
---@field ControlViewRot FRotator
---@field bNeedResetAutonomousProxy boolean
---@field bLostSpeedCorrectState boolean
FAerofoilInput = {}


---带机翼的 飞机Movement
---@class UAerofoilMovementComponent: UPawnMovementComponent
---@field AngleOfAttack number
---@field LocalLinearVelocity FVector
---@field CurLinearVelocity FVector
---@field ForwardSpeed number
---@field ForwardSpeedKmh number
---@field VehicleUpAxis FVector
---@field VehicleForwardAxis FVector
---@field VehicleRightAxis FVector
---@field LocalAngularVelocity FVector
---@field CurAngularVelocity FVector
---@field CurAngularVelocityRadians FVector
---@field CurWorldTransform FTransform
---@field CurTargetRot FRotator
---@field AirflowNormalLocal FVector
---@field LocalInput FAerofoilInput
---@field CurFireBtnInput FVector
---@field CurrentInput FAerofoilInput
---@field CurHitResult FHitResult
---@field CurDistanceToLand number
---@field CheckPurePitchInput boolean
---@field bProcessRoll boolean
---@field LastCalcUpdateTotalTorque FVector
---@field bInLostSpeedState boolean
---@field bInFireControlState boolean
---@field bOnFire boolean
---@field SyncTag number
---@field ServerInput FAerofoilInput
---@field bUseUnReliableSendClientInputToServer boolean
---@field ControlValueFastToZeroTimeThreshold number
---@field RollInterpolation FInputInterpSetting
---@field PitchInterpolation FInputInterpSetting @左右俯仰输入值增加与衰减的速度
---@field YawInterpolation FInputInterpSetting @左右俯仰输入值增加与衰减的速度
---@field ThrottleForwardInterpolation FInputInterpSetting @正向油门输入值增加与衰减的速度
---@field ThrottleDampingInterpolation FInputInterpSetting @油门子弹衰减速度
---@field DampingThrottleTarget number
---@field LostSpeedAngel number
---@field LostSpeedVelocityThreshold number
---@field LostSpeedEngineScalar number
---@field ComponentLocationOffsetTrace number
---@field LandTraceMaxHeight number
---@field MaxDistanceToLand number
---@field MaxAltitudeHeight number
---@field OverMaxAltitudeHeightCanInput number
---@field MaxVelocityKmh number
---@field SpeedThresholdLiftForce number
---@field MinSpeedCanDeceleration number
---@field MinHeightCanDeceleration number
---@field DecelerationSpeedStrength number
---@field AerofoilConfig ULuaArrayHelper<FVehicleAerofoilConfig>
---@field DragMultiplier number
---@field LiftMultiplier number
---@field Camber number
---@field StallAngel number
---@field AerofoilAreaFactor number
---@field MinControlSpeed number
---@field MinControlSpeedInAir number
---@field MinHeightControlRoll number
---@field MinHeightControlYaw number
---@field JustControlYawFactor number
---@field LockThreshold number
---@field TorqueControl FVehicleTorqueControlConfig
---@field TargetRotationControl FVehicleTargetRotationControlConfig
---@field RollControlSpeed number
---@field EasyModeControlStrength number
---@field EasyModeInputToTorque FMappedData
---@field EasyModeValidRollThreshold number
---@field EasyModeTorqueRollThreshold number
---@field EasyModePitchStrength number
---@field EasyModeRollStrength number
---@field EasyModeYawStrength number
---@field FlipStateYawFactor number
---@field EasyModeValidInputThreshold number
---@field MaxRollAngel number
---@field MaxRollAngelToDamping number
---@field MaxRollAngelOnWingDamage number
---@field InputToRollAngelMapData FMappedData
---@field bRotateYawWithWorldUp boolean
---@field bRotateYawUseSelfUp boolean
---@field RollStrengthMap FMappedData
---@field MaxDelayRotateBackTime number
---@field RotateBackImmediatelyRollThreshold number
---@field RotateBackInputThreshold number
---@field bCheckRotateBackFireConditionSelf boolean
---@field DontRotateBackPitchThreshold number
---@field RotateBackTimer number
---@field IdleCurveTotalTime number
---@field RotateBaseCalcFactor number
---@field FireRotateBaseCalcFactor number
---@field CentreRotateBackBaseCalcFactor number
---@field NowIdleTime number
---@field CanPlayIdleCurveHeight number
---@field CanPitchDownDisToLand number
---@field AirDragCoefficient number
---@field AirDownCoefficient number
---@field DensityOfMedium number
---@field ClampMaxZVelocityInterpSpeed number
---@field AllForceScaleFactor number
---@field MapSpeedInterpData FMappedData
---@field bFireInputFirstLevel boolean
---@field bEnablePitchBalance boolean
---@field PitchBalanceThreshold number
---@field bUseForceSimulate boolean
---@field SingleStepMaxTime number
---@field bAdvanceModePitchReverse boolean
---@field bUseImpulseDeltaTime boolean
---@field bForceResetPitch boolean
---@field ForceResetPitchThreshold number
---@field bAdvanceModeUseTargetCalc boolean
---@field bEasyMode boolean
---@field bHavePower boolean
---@field PowerEfficiency number
---@field bEasyModeAutoCenter boolean
---@field bUseRollInterpCalc boolean
---@field bCanControl boolean
---@field bCanThrust boolean
---@field bCanLift boolean
---@field bCanClampVel boolean
---@field bAlwaysCalcControlDampingTorque boolean
---@field bForbidReverseVel boolean
---@field OnLandSpeedToMergeVelocity number
---@field OnLandSpeedToMergeHeight number
---@field bNotSimulate boolean
---@field bCanAerodynamicForce boolean
---@field Disable4WSimulateDistanceToLand number
---@field bEnableFinalSimulateEvent boolean
---@field bEnableUpdateEngineStateEvent boolean
---@field bEnableUpdateThrustEvent boolean
---@field bEnableUpdateLiftEvent boolean
---@field bEnableUpdateControlEvent boolean
---@field bEnableUpdateControlDeltaTime boolean
---@field UpdateControlScale number
---@field bUseDamping boolean
---@field bUseTorqueImpulse boolean
---@field bUseTorqueCalcDeltaTime boolean
---@field bEnableProcessLostSpeedEvent boolean
---@field LostSpeedContinueTimeToRotateBack number
---@field LostSpeedStateTips number
---@field LostSpeedContinueTimer number
---@field EnterLostSpeedCorrectState boolean
---@field LostSpeedExtraThrottleConfig number
---@field bUseCalculateRotateBackEvent boolean
---@field DragConfig FAirDragConfig @阻力系数 机身速度与机身方向拟合的配置
---@field EngineOnAirDragCoefficient number
---@field MergeDragCoefficient number
---@field bEnableMergeSpeed boolean
---@field MaxForwardSpeed number
---@field MaxVerticalSpeed number
---@field MaxVehicleSpeed number
---@field MaxAngularVelInDegree number
---@field MaxLinearVel number
---@field bEnableGetMergedAndDragVelocityEvent boolean
---@field bInHitState boolean
---@field CheckInHitStateTimeThreshold number
---@field LeftWingPartIndex number
---@field RightWingPartIndex number
---@field bLeftWingDestroy boolean
---@field bRightWingDestroy boolean
---@field bEngineDestroy boolean
---@field WingExplodeInputOffset number
---@field SingleWingExplodeControlDamping number
---@field DoubleWingExplodeControlDamping number
---@field WingExplodeControlStiffnessDamping number
---@field DoubleWingExplodeControlStiffnessDamping number
---@field WingExplodeControlStiffnessDampingOnAdvanceMode number
---@field DoubleWingExplodeControlStiffnessDampingOnAdvanceMode number
---@field FinalMoveRightRateOnWingDamage number
local UAerofoilMovementComponent = {}

---@param NewTag number
function UAerofoilMovementComponent:SetSyncTag(NewTag) end

function UAerofoilMovementComponent:OnRep_SyncTag() end

function UAerofoilMovementComponent:OnRep_ServerInput() end

---@param ClientInput FAerofoilInput
function UAerofoilMovementComponent:SendClientInputToServer(ClientInput) end

---@param ClientInput FAerofoilInput
function UAerofoilMovementComponent:SendClientInputToServerUnReliable(ClientInput) end

---@param NewInput FAerofoilInput
function UAerofoilMovementComponent:SetServerInput(NewInput) end

---@param NewInput FAerofoilInput
---@param Type number
---@param NewVel FVector
function UAerofoilMovementComponent:CorrectCurrentInput(NewInput, Type, NewVel) end

---@param NewInput FAerofoilInput
---@param Type number
---@param NewVel FVector
function UAerofoilMovementComponent:CorrectCurrentInputEvent(NewInput, Type, NewVel) end

---@return FVector
function UAerofoilMovementComponent:GetCurControlInput() end

---@return FAerofoilInput
function UAerofoilMovementComponent:GetInput() end

---@return boolean
function UAerofoilMovementComponent:CanRotateBack() end

---@return number
function UAerofoilMovementComponent:GetCurThrottleInput() end

---@return FRotator
function UAerofoilMovementComponent:GetTargetRot() end

---@param NewValue boolean
function UAerofoilMovementComponent:SetHavePower(NewValue) end

function UAerofoilMovementComponent:OnRep_HavePower() end

---@param NewValue number
function UAerofoilMovementComponent:SetPowerEfficiency(NewValue) end

function UAerofoilMovementComponent:OnRep_PowerEfficiency() end

---@param DeltaTime number
function UAerofoilMovementComponent:FinalSimulateEvent(DeltaTime) end

---@param NewMode boolean
function UAerofoilMovementComponent:SyncAerofoilMode(NewMode) end

function UAerofoilMovementComponent:OnRep_EasyMode() end

function UAerofoilMovementComponent:UpdateEngineState() end

function UAerofoilMovementComponent:UpdateEngineStateEvent() end

function UAerofoilMovementComponent:UpdateDisToLand() end

---@param DeltaTime number
function UAerofoilMovementComponent:ProcessLocalInput(DeltaTime) end

---@param Rot FRotator
---@param bTouchMove boolean
function UAerofoilMovementComponent:SetFireStateViewInput(Rot, bTouchMove) end

function UAerofoilMovementComponent:CalculateAngleOfAttack() end

---@param DeltaTime number
---@return FVector
function UAerofoilMovementComponent:UpdateThrust(DeltaTime) end

---@param NewRot FRotator
---@param Input number
---@param DeltaTime number
---@return number
function UAerofoilMovementComponent:GetFlipAngel(NewRot, Input, DeltaTime) end

---@param DeltaTime number
---@return FVector
function UAerofoilMovementComponent:UpdateLift(DeltaTime) end

---@param DeltaTime number
---@return FVector
function UAerofoilMovementComponent:UpdateLiftEvent(DeltaTime) end

---@param DeltaTime number
---@return FVector
function UAerofoilMovementComponent:UpdateDrag(DeltaTime) end

---@param DeltaTime number
function UAerofoilMovementComponent:ProcessLostSpeedToRotateBackEvent(DeltaTime) end

---@param DeltaTime number
function UAerofoilMovementComponent:ProcessLostSpeedToRotateBack(DeltaTime) end

---@param ForwardVector FVector
---@param TargetUp FVector
---@param UpVector FVector
---@param TargetQuat FQuat
---@return FVector
function UAerofoilMovementComponent:CalculateRotateBack(ForwardVector, TargetUp, UpVector, TargetQuat) end

---@param CurrentRot FQuat
---@param TargetRot FQuat
---@param Stiffness number
---@param Damping number
---@param AngularVelocity FVector
---@param DiffAngle number
---@param ConstantStep boolean
---@return FVector
function UAerofoilMovementComponent:ComputeTorqueRot(CurrentRot, TargetRot, Stiffness, Damping, AngularVelocity, DiffAngle, ConstantStep) end

---@param ForwardVector FVector
---@param TargetUp FVector
---@param UpVector FVector
---@param OldTorque FVector
---@return FVector
function UAerofoilMovementComponent:CalculateRotateBackEvent(ForwardVector, TargetUp, UpVector, OldTorque) end

---@param DiffAngel number
---@return FVector
function UAerofoilMovementComponent:CalculateFireControl(DiffAngel) end

---@param DeltaTime number
---@return FVector
function UAerofoilMovementComponent:UpdateControl(DeltaTime) end

---@param DeltaTime number
---@return FVector
function UAerofoilMovementComponent:UpdateControlEvent(DeltaTime) end

---@param Rot FRotator
---@param RotVec FVector
---@param Angle number
---@return FRotator
function UAerofoilMovementComponent:RotateAroundAxis(Rot, RotVec, Angle) end

---@param Rot FQuat
---@param RotVec FVector
---@param Angle number
---@return FQuat
function UAerofoilMovementComponent:RotateAroundAxisQuat(Rot, RotVec, Angle) end

---@param ControlInput FVector
---@param DeltaTime number
---@param MaxRollDegree number
---@param TargetZeroRollUpVector FVector
---@param LeftSide boolean
---@param bAdvanceMode boolean
---@return FQuat
function UAerofoilMovementComponent:GetTargetRotNew(ControlInput, DeltaTime, MaxRollDegree, TargetZeroRollUpVector, LeftSide, bAdvanceMode) end

---@param DeltaTime number
---@return FVector
function UAerofoilMovementComponent:ApplyAerodynamics(DeltaTime) end

---@param CurVelocity FVector
---@param DeltaTime number
---@return FVector
function UAerofoilMovementComponent:GetMergedAndDragVelocity(CurVelocity, DeltaTime) end

---@param CurVelocity FVector
---@param DeltaTime number
---@return FVector
function UAerofoilMovementComponent:GetMergedAndDragVelocityEvent(CurVelocity, DeltaTime) end
