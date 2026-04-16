---@meta

---球类载具的浮力移动组件
---@class USTExtraFloatingBallMovementComponent: UPawnMovementComponent
---@field MaxForwardForceInPhysicsMode number
---@field MaxSideForceInPhysicsMode number
---@field MaxForwardTorqueInPhysicsMode number
---@field MaxSideTorqueInPhysicsMode number
---@field SteeringSpeed number
---@field SteeringDistThreshold number
---@field SteeringWheelRate number
---@field bDampingForceLessPointUnderWater boolean
---@field DampingForceLessPointNumUnderWater number
---@field bMoveNeedFuel boolean
---@field DrawDebug boolean
---@field bUseCustomForce boolean
---@field CustomAccelerate number
---@field CustomMaxHorizonSpeed number
---@field CustomHorizonSpeedFriction number
---@field CustomVerticalSpeedFriction number
---@field ForwardInputRate number
---@field RightInputRate number
---@field CameraRationYaw number
---@field HandBrakeRate number
---@field STForwardInputRate number
---@field STRightInputRate number
---@field STCameraRationYaw number
---@field STHandBrakeRate number
---@field CacheBodyCOM FVector
---@field IsContactedWater boolean
---@field IsEngineOn boolean
---@field IsBodySleeping boolean
---@field ModifiedInputVector FVector2D
---@field CurrentRotationYaw number
---@field RealForwardDir FVector
---@field RealRightDir FVector
---@field FinalTorque FVector
---@field FinalForce FVector
local USTExtraFloatingBallMovementComponent = {}

---主控端发送输入给服务端更新输入数据
---@param InForwardInput number
---@param InRightInput number
---@param InCameraRationYaw number
---@param InHandBrakeRate number
function USTExtraFloatingBallMovementComponent:ServerUpdateInput(InForwardInput, InRightInput, InCameraRationYaw, InHandBrakeRate) end

---载具是否有动力
---@return boolean
function USTExtraFloatingBallMovementComponent:HasPower() end

---@param DeltaTime number
function USTExtraFloatingBallMovementComponent:ApplyCustomForce(DeltaTime) end
