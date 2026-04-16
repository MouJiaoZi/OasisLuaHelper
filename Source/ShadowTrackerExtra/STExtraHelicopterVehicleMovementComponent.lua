---@meta

---@class USTExtraHelicopterVehicleMovementComponent: UPawnMovementComponent
---@field NewtonFixedRate number
---@field TorqueFixedRate number
---@field MaxbodyPitchAngle number
---@field MaxBodyPitchTorqueVaule number
---@field ForwardMaxAcceleration number
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
---@field PowerSmokeScale number
---@field PowerburnningScale number
---@field OffGravityRate number
---@field EnterAdaptiveStateSpeed number
---@field BeyondMaxHeightAddaptiveExtra number
---@field MaxDistanceToLand number
---@field MaxDistanceToLandRange number
---@field EnterFlyStateHeight number
---@field ComponentLocationOffsetTrace number
---@field LandTraceMaxHeight number
---@field CloseDustEffectHeight number
---@field OpenParachuteHeight number
---@field CanOpenParachuteHeightInHelicopter number
---@field ForceOpenParachuteHeightInHelicopter number
---@field CloseParachuteHeightInHelicopter number
---@field SkipOpenParachuteHeight number
---@field isSecondControlMode boolean
---@field SecondMaxBackWingTorqueVaule number
---@field SecondRightMaxAcceleration number
---@field ZVauleCheckTime number
---@field ZVauleCheckScale number
---@field CaveProtectTestLength number
---@field CaveMoveOffset number
---@field AddGForceHeight number
---@field SpwanCloseGrivitiyTime number
---@field SpwanCheckLandDis number
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
---@field isOpenGravity boolean
---@field JoystickDir FVector2D
---@field backWingsOutput number
---@field TopWingsOutput number
---@field TopWingsAdaptOutput number
---@field AutonomousverticalUpDis number
---@field nowDisToLand number
---@field EngineIsRunning boolean
---@field prePosZ number
---@field bCalcInHeightAdpatStatingAtServer boolean
---@field isInHeightAdpatStating boolean
---@field bShouldDsControl boolean
---@field bForceUpdateverticalUpDis boolean
---@field UpdateDistanceToLandTickTime number
---@field UpdateDistanceToLandTickInterval number
---@field bUseCacheFrameVelocity boolean
---@field CurFrameVelocity FVector
local USTExtraHelicopterVehicleMovementComponent = {}

---@param NewValue number
function USTExtraHelicopterVehicleMovementComponent:SetSTverticalUpDis(NewValue) end

---@param deltaTime number
---@param upinput number
function USTExtraHelicopterVehicleMovementComponent:UpdateInHeightAdpatStatingAtServer(deltaTime, upinput) end

---@param FowardInput number
---@param RightInput number
---@param UpInput number
---@param nowcameraRationYaw number
---@param nowverticalUpDis number
function USTExtraHelicopterVehicleMovementComponent:ServerUpdateInput(FowardInput, RightInput, UpInput, nowcameraRationYaw, nowverticalUpDis) end

---@param deltaTime number
---@param upinput number
function USTExtraHelicopterVehicleMovementComponent:UpdateverticalUpDis(deltaTime, upinput) end

function USTExtraHelicopterVehicleMovementComponent:UpdateDistanceToLand() end

---获取当前载具的速度矢量
---@return FVector
function USTExtraHelicopterVehicleMovementComponent:GetCurVelocity() end

---@return boolean
function USTExtraHelicopterVehicleMovementComponent:IsShouldDsControl() end

function USTExtraHelicopterVehicleMovementComponent:SetEnableGravity() end
