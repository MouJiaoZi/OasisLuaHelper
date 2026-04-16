---@meta

---@class FAircraftFloorChangeDelegate : ULuaSingleDelegate
FAircraftFloorChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAircraftFloorChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FAircraftFloorChangeDelegate:Execute() end


---@class USTExtraAircraftMovementComponent: UPawnMovementComponent
---@field PowerBoneName string
---@field NewtonFixedRate number
---@field TorqueFixedRate number
---@field MaxbodyPitchAngle number
---@field MaxBodyPitchTorqueVaule number
---@field ForwardMaxAcceleration number
---@field BackMaxAcceleration number
---@field MaxForwardMaxAccelerationPitchAngle number
---@field StartOffForwardTorqueBySpeedVaule number
---@field StartOffForwardTorqueBySpeedAngle number
---@field OffForwardTorqueBySpeedVaule number
---@field MaxbodRollAngle number
---@field MaxBodyRollTorqueVaule number
---@field RightMaxAcceleration number
---@field MaxRightMaxAccelerationRollAngle number
---@field MaxBackWingTorqueVaule number
---@field MaxBackWingPowerAngle number
---@field isSecondControlMode boolean
---@field SecondMaxBackWingTorqueVaule number
---@field SecondRightMaxAcceleration number
---@field PowerSmokeScale number
---@field PowerburnningScale number
---@field TorqueScale number
---@field OffGravityRate number
---@field OnlyEnterHeightAdaptStateWhenNotInServerAuthorizeState boolean
---@field EnterAdaptiveStateSpeed number
---@field BeyondMaxHeightAddaptiveExtra number
---@field MaxDistanceToLand number
---@field MaxDistanceToLandRange number
---@field EnterFlyStateHeight number
---@field ComponentLocationOffsetTrace number
---@field LandTraceMaxHeight number
---@field bUseBoxSweepLandAccurate boolean
---@field UseBoxSweepLandAccurateTraceHeight number
---@field UseBoxSweepExtent FVector
---@field LandTraceInterval number
---@field CloseDustEffectHeight number
---@field BeginPlayTrace boolean
---@field InWaterNoPower boolean
---@field ZVauleCheckTime number
---@field ZVauleCheckScale number
---@field DSControlSpeed number
---@field CaveProtectTestLength number
---@field CaveMoveOffset number
---@field AddGForceHeight number
---@field SpwanCloseGrivitiyTime number
---@field SpwanCheckLandDis number
---@field bEnableRealitySim boolean
---@field IdleSpeed number
---@field OnLandHeight number
---@field SteeringWheelRate number
---@field bEnableYawRotator boolean
---@field bEnablePitchRotator boolean
---@field bEnableRollRotator boolean
---@field bEnableMoveForce boolean
---@field bEnableFollowMoveFromBase boolean
---@field bEnableFollowRotationFromBase boolean
---@field MovedBaseActorTag string
---@field bDynamicChangeTraceInterval boolean
---@field TraceIntervalOnDynamicBase number
---@field bAddTickDependencyOnFloor boolean
---@field bDisableAdaptHeightWhenFollowed boolean
---@field bDisableServerPreventPenetratingWhenFollowed boolean
---@field DelayDontFollowCurrentFloorTime number
---@field ForWardTorqueCurveList ULuaArrayHelper<FVehicleTorqueCurveFloat>
---@field RightTorqueCurveList ULuaArrayHelper<FVehicleTorqueCurveFloat>
---@field IdleForwardTorqueCurve FVehicleTorqueCurveFloat
---@field IdleRightTorqueCurve FVehicleTorqueCurveFloat
---@field upInputRate number
---@field forWardInputRate number
---@field rightInputRate number
---@field cameraRationYaw number
---@field verticalUpDis number
---@field STUpInputRate number
---@field STForWardInputRate number
---@field STRightInputRate number
---@field STcameraRationYaw number
---@field STverticalUpDis number
---@field backWingsOutput number
---@field TopWingsOutput number
---@field rollTorqueRate number
---@field rightForceRightRate number
---@field pitchTorqueRate number
---@field ForceForwardRate number
---@field AutonomousverticalUpDis number
---@field nowDisToLand number
---@field LandHitResult FHitResult
---@field SweepHitResult FHitResult
---@field nowLandSurfaceType EPhysicalSurface
---@field bIsShouldDsControl boolean
---@field CurrentFloor UPrimitiveComponent
---@field LastFloor UPrimitiveComponent
---@field FloorToDelaySet UPrimitiveComponent
---@field CurrentFloorHasFollowedTag boolean
---@field OnAircraftFloorChange FAircraftFloorChangeDelegate
---@field LastFrameBaseTransform FTransform
---@field DelayDontFollowCurrentFloorTimer number
---@field MovablePlatformAirCraftVehAdapterTemplate UMovablePlatformVehBaseAdapter
local USTExtraAircraftMovementComponent = {}

---@return boolean
function USTExtraAircraftMovementComponent:IsInHeightAdpatStatingFix() end

---@param FowardInput number
---@param RightInput number
---@param UpInput number
---@param nowcameraRationYaw number
---@param nowverticalUpDis number
function USTExtraAircraftMovementComponent:ServerUpdateInput(FowardInput, RightInput, UpInput, nowcameraRationYaw, nowverticalUpDis) end

---@param FowardInput number
---@param RightInput number
---@param UpInput number
function USTExtraAircraftMovementComponent:ServerUpdateOnlyPlayerInput(FowardInput, RightInput, UpInput) end

function USTExtraAircraftMovementComponent:UpdateDistanceToLand() end

---@return number
function USTExtraAircraftMovementComponent:GetNowSpeed() end

---@return boolean
function USTExtraAircraftMovementComponent:IsHasPower() end

---@return number
function USTExtraAircraftMovementComponent:GetAdaptAcceleration() end

---@return boolean
function USTExtraAircraftMovementComponent:IsShouldDsControl() end

function USTExtraAircraftMovementComponent:SetEnableGravity() end

function USTExtraAircraftMovementComponent:ResetOnEngineStart() end

function USTExtraAircraftMovementComponent:CustomizeInputBeforeUploadToServer() end

---@param DeltaTime number
function USTExtraAircraftMovementComponent:UpdateBasedMovement(DeltaTime) end

function USTExtraAircraftMovementComponent:OnAircraftFloorChangeFunction() end

function USTExtraAircraftMovementComponent:OnAircraftFloorChangeFunctionBP() end

---@param Floor UPrimitiveComponent
---@return boolean
function USTExtraAircraftMovementComponent:CheckFloorShouldFollow(Floor) end

function USTExtraAircraftMovementComponent:OnDelayOutCurrentFloor() end

---@return boolean
function USTExtraAircraftMovementComponent:ShouldDelayOutCurrentFloor() end

---@param DeltaTime number
function USTExtraAircraftMovementComponent:TickDelayOutCurrentFloor(DeltaTime) end

function USTExtraAircraftMovementComponent:AfterCurrentFloorChange() end

---@param InMaxDistanceToLand number
function USTExtraAircraftMovementComponent:SetMaxDistanceToLand(InMaxDistanceToLand) end
