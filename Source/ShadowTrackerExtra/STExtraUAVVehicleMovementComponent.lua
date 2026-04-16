---@meta

---@class USTExtraUAVVehicleMovementComponent: UPawnMovementComponent
---@field NewtonFixedRate number
---@field TorqueFixedRate number
---@field MaxbodyPitchAngle number
---@field MaxBodyPitchTorqueVaule number
---@field ForwardMaxAcceleration number
---@field MaxForwardMaxAccelerationPitchAngle number
---@field VerticalMaxAcceleration number
---@field StartOffForwardTorqueBySpeedVaule number
---@field StartOffForwardTorqueBySpeedAngle number
---@field OffForwardTorqueBySpeedVaule number
---@field MaxbodRollAngle number
---@field MaxBodyRollTorqueVaule number
---@field RightMaxAcceleration number
---@field MaxRightMaxAccelerationRollAngle number
---@field MaxBackWingTorqueVaule number
---@field MaxBackWingPowerAngle number
---@field PowerSmokeScale number
---@field PowerburnningScale number
---@field OffGravityRate number
---@field freelyfallingRate number
---@field EnterAdaptiveStateSpeed number
---@field BeyondMaxHeightAddaptiveExtra number
---@field MaxDistanceToLand number
---@field MaxDistanceToLandToDSControl number
---@field MinDistanceToLand number
---@field MaxDistanceToLandTipsInterval number
---@field MaxDistanceToLandTipsOffset number
---@field isOverMaxHeight boolean
---@field MaxDistanceToLandRange number
---@field EnterFlyStateHeight number
---@field LandTraceMaxHeight number
---@field isSecondControlMode boolean @这个变量在蓝图里面配置是无效的,这个变量的值是SettingConfig里面的配置, 而且代表的值是 是否是第一种操作方式
---@field bUseDefaultControlMode boolean
---@field ActorYawToCameraYawDiffThreshold number
---@field bPawnRotationFollowContoller boolean
---@field CurYawDeltaAngel number
---@field LastYawDeltaAngel number
---@field YawDeltaAngelDamaping number
---@field bNormalizeBackWingsOutput boolean
---@field SecondMaxBackWingTorqueVaule number
---@field SecondRightMaxAcceleration number
---@field ZVauleCheckTime number
---@field ZVauleCheckScale number
---@field CaveProtectTestLength number
---@field CaveMoveOffset number
---@field SpwanCheckLandDis number
---@field bDontUseRoationCalcForce boolean
---@field bEnableFlyToAirInDisappearing boolean
---@field KeepHeight boolean
---@field KeepHeightDampingForce number
---@field KeepHeightMaxDisToUnderLandeRange number
---@field LastDisToLand number
---@field CurDampDis number
---@field CurUpAcc number
---@field CurUpForce FVector
---@field bShowOverHeightTips boolean
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
---@field JoystickDir FVector2D
---@field backWingsOutput number
---@field TopWingsOutput number
---@field TopWingsAdaptOutput number
---@field AutonomousverticalUpDis number
---@field nowDisToLand number
---@field HitLandPoint FVector
---@field ReplicatedNowDisToLand number
---@field isInHeightAdpatStating boolean
---@field isShouldDsControl boolean
---@field MaxDSControlTime number
---@field CurDSControlTimeLeft number
---@field MaxSpeedDeltaPerSeconds number
---@field NeedCheckSpeedDelta boolean
---@field CheckTimeDilation number
---@field bEnableTimeDilationCheck boolean
---@field LastSecondSpeed number
---@field CheckSpeedTimeElapse number
---@field UpdateDistanceToLandTickTime number
---@field UpdateDistanceToLandTickInterval number
---@field CheckCanMoveStartOffset FVector
---@field CheckCanMoveTestLength number
---@field bOpenCheckCanMove boolean
---@field bDrawDebugCheckCanMove boolean
---@field UseXAxisRoaCheckCanMove boolean
---@field CurFrameVelocity FVector
---@field bUseCacheFrameVelocity boolean
---@field bEnableDownInputResetAutonomousverticalUpDis boolean
local USTExtraUAVVehicleMovementComponent = {}

---@param NewValue number
function USTExtraUAVVehicleMovementComponent:SetSTverticalUpDis(NewValue) end

---@param FowardInput number
---@param RightInput number
---@param UpInput number
---@param nowcameraRationYaw number
---@param nowverticalUpDis number
function USTExtraUAVVehicleMovementComponent:ServerUpdateInput(FowardInput, RightInput, UpInput, nowcameraRationYaw, nowverticalUpDis) end

---@return number
function USTExtraUAVVehicleMovementComponent:GetAdaptAcceleration() end

function USTExtraUAVVehicleMovementComponent:CalcTopWingOutput() end

function USTExtraUAVVehicleMovementComponent:CalcKeepHeightModeTopWingOutput() end

---@return FVector
function USTExtraUAVVehicleMovementComponent:GetCurVelocity() end
