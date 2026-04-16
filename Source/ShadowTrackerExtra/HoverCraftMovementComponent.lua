---@meta

---@class FHoverSpringNode
FHoverSpringNode = {}


---@class UHoverCraftMovementComponent: UPawnMovementComponent
---@field LiftPointsLocal ULuaArrayHelper<FVector>
---@field LiftAreaPerNode number
---@field bUseSurfaceNormal boolean
---@field SpringNaturalLength number
---@field MaxSuspensionTravel number
---@field SuspensionMaxRaise number
---@field SuspensionMaxDrop number
---@field SuspensionNaturalFrequency number
---@field SuspensionDampingRatio number
---@field SpringPreload number
---@field CompressionDamperRatio number
---@field ReboundDamperRatio number
---@field bUsePhysXMassDistribution boolean
---@field MaxAcceleration number
---@field MaxDrivablePitchAngle number
---@field StartAccelerationRate number
---@field MaxRotationYawAngle number
---@field RotationYawRate number
---@field BackwardForceScale number
---@field MaxVelocity number
---@field ClampMaxVelocity boolean
---@field ApplyForceSocketName string
---@field CdA number
---@field AirDensity number
---@field AngularDamping number
---@field LateralDragMultiplier number
---@field bEnableFriction boolean
---@field StaticFrictionThreshold number
---@field StaticFrictionSpeedThreshold number
---@field KineticFrictionCoefficient number
---@field RollingFrictionCoefficient number
---@field FrictionTransitionSpeed number
---@field StaticLinearDampingValue number
---@field StaticAngularDampingValue number
---@field MaxDeltaTime number
---@field MaxSpringForce number
---@field MaxDamperForce number
---@field bEnableAutoSleep boolean
---@field SleepSpeedThreshold number
---@field SleepAngularSpeedThreshold number
---@field SleepDelay number
---@field WakeForceThreshold number
---@field MassOverride number
---@field ThrottleInput number
---@field SteeringInput number
---@field STThrottleInput number
---@field STSteeringInput number
---@field BoostModifier number
---@field Acceleration number
---@field RotationYawAngle number
---@field ForwardSpeed number
---@field bIsSleeping boolean
---@field bIsInAir boolean
---@field CurrentPitchAngle number
---@field bDrawDebug boolean
---@field DrawDebugForce boolean
local UHoverCraftMovementComponent = {}

---@param Rate number
function UHoverCraftMovementComponent:SetThrottleInput(Rate) end

---@param Rate number
function UHoverCraftMovementComponent:SetSteeringInput(Rate) end

---@param Rate number
function UHoverCraftMovementComponent:SetBoosting(Rate) end

function UHoverCraftMovementComponent:WakeVehicle() end

function UHoverCraftMovementComponent:SleepVehicle() end

---@param InSteeringInput number
---@param InThrottleInput number
function UHoverCraftMovementComponent:ServerUpdateInput(InSteeringInput, InThrottleInput) end

---@param InSteeringInput FFloat_NetQuantize8
---@param InThrottleInput FFloat_NetQuantize8
function UHoverCraftMovementComponent:ServerUpdateInputCompressed(InSteeringInput, InThrottleInput) end
