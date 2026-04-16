---@meta

---@class FAntiGravityVehiclePostPhysxTick
FAntiGravityVehiclePostPhysxTick = {}


---@class UAntiGravityVehicleMovementComponent: UPawnMovementComponent
---@field NewtonFixedRate number
---@field bUseVehicleUpVector boolean
---@field PowerSmokeScale number
---@field PowerburnningScale number
---@field VerticalMaxAcceleration number
---@field OffGravityRate number
---@field KeepHeightDampingForce number
---@field MaxDistanceToLand number
---@field MaxDampingDistance number
---@field ComponentLocationOffsetTrace number
---@field LandTraceMaxHeight number
---@field bUseTraceChannel boolean
---@field LandTraceChannel ECollisionChannel
---@field SelfBalanceTestPoints ULuaArrayHelper<FVector>
---@field SelfBalanceTestPointDistance number
---@field bBalanceUseTraceChannel boolean
---@field ClampMaxBodyRoll number
---@field TurningTorque number
---@field DampingAngularVelocitySpeedAdherence number
---@field MaxSpeed number
---@field Adherence number
---@field AdherenceOnNoInput number
---@field AdherenceOnNoInputVelocityThreshold number
---@field AdherenceOnNoInputSpeedFactor number
---@field DragCoefficient number
---@field DragArea number
---@field StopVelocityThreshold number
---@field ApplyFastDampingForwardRateThreshold number
---@field ValidHeight number
---@field UnderValidHeightZSpeedDampingPercent number
---@field UnderHeightDampingZSpeed number
---@field ValidHeightOffset number
---@field bUseSurfaceTypeCheckInWater boolean
---@field WaterSurfaceType EPhysicalSurface
---@field upInputRate number
---@field forWardInputRate number
---@field rightInputRate number
---@field cameraRationYaw number
---@field SteeringWheelRate number
---@field SteeringRightInput number
---@field STUpInputRate number
---@field STForWardInputRate number
---@field STRightInputRate number
---@field STcameraRationYaw number
---@field STverticalUpDis number
---@field bInWater boolean
---@field bNoPower boolean
---@field CurHitLandResult FHitResult
---@field JoystickDir FVector2D
---@field RightOutput number
---@field UpOutput number
---@field UpAdaptOutput number
---@field NowDisToLand number
---@field LastNowDisToLand number
---@field CurDampingDis number
---@field EngineIsRunning boolean
---@field PrePosZ number
---@field isShouldDsControl boolean
---@field DefaultGravityZ number
---@field DefaultGravityDelta number
---@field DeltaAngle number
---@field AdjustPitchThreshold number
---@field AdjustPitchRate number
---@field LastDeltaAngle number
---@field BalanceWorkByCurDistoland number
---@field bCurDistolandGreatZero boolean
---@field OriginBlockValidDistance number
---@field MaxPitch number
---@field PostPhysxComponentTick any
---@field bOpenSelfBalance boolean
---@field bOpenTurn boolean
---@field bOpenAdherence boolean
---@field bOpenDamping boolean
---@field bOpenAcc boolean
---@field bOpenTick boolean
---@field bOpenPostTick boolean
---@field bOpenDynamicDamping boolean
local UAntiGravityVehicleMovementComponent = {}

---@param DeltaTime number
---@return FRotator
function UAntiGravityVehicleMovementComponent:UpdateSelfBalance(DeltaTime) end

---@param DeltaTime number
---@return FRotator
function UAntiGravityVehicleMovementComponent:GetFinalBalanceRotator(DeltaTime) end

---@param FowardInput number
---@param RightInput number
---@param UpInput number
---@param nowcameraRationYaw number
function UAntiGravityVehicleMovementComponent:ServerUpdateInput(FowardInput, RightInput, UpInput, nowcameraRationYaw) end

function UAntiGravityVehicleMovementComponent:UpdateDistanceToLand() end

---@return number
function UAntiGravityVehicleMovementComponent:GetNowSpeed() end

---@return boolean
function UAntiGravityVehicleMovementComponent:IsHasPower() end

---@return boolean
function UAntiGravityVehicleMovementComponent:CheckShouldDsControl() end
