---@meta

---@class USTExtraFloatingVehicleMovementComponent: UPawnMovementComponent
---@field MaxAcceleration number
---@field StartAccelerationRate number
---@field StopAccelerationRate number
---@field MaxRotationYawAngle number
---@field RotationYawRate number
---@field BackwardForceScale number
---@field bDampingForceLessPointUnderWater boolean @在水中浮力球少于一定个数之后 进行动力衰减
---@field DampingForceLessPointNumUnderWater number @判断damping 力的阈值
---@field ClampMaxVelocity boolean @是否限制最大速度
---@field EnableSteeringInputWithoutThrottle boolean @是否能够无油门输入下&&空中状态下转向
---@field RotateForceWithoutThrottleInput number @无油门输入下转向的横向力最小值
---@field MaxVelocity number
---@field bClampInWaterMaxDownVelocity boolean @是否限制水中最大下沉速度
---@field InWaterMaxDownVelocity number @水中最大下沉速度
---@field Acceleration number
---@field RotationYawAngle number
---@field ApplyForceSocketName string
---@field DrawDebugForce boolean
---@field bFlipVehicleNoPower boolean
---@field FlipVehicleConditionMinRoll number
---@field bCleanInputWhenNoDriver boolean
---@field throttleInput number
---@field steeringInput number
---@field STThrottleInput number
---@field STSteeringInput number
local USTExtraFloatingVehicleMovementComponent = {}

---@param InSteeringInput number
---@param InThrottleInput number
function USTExtraFloatingVehicleMovementComponent:ServerUpdateInput(InSteeringInput, InThrottleInput) end

---@param InSteeringInput FFloat_NetQuantize8
---@param InThrottleInput FFloat_NetQuantize8
function USTExtraFloatingVehicleMovementComponent:ServerUpdateInputCompressed(InSteeringInput, InThrottleInput) end

---@param rate number
function USTExtraFloatingVehicleMovementComponent:SetThrottleInput(rate) end

---@param rate number
function USTExtraFloatingVehicleMovementComponent:SetSteeringInput(rate) end

---@param rate number
function USTExtraFloatingVehicleMovementComponent:SetBoosting(rate) end

---@return number
function USTExtraFloatingVehicleMovementComponent:GetMaxAcceleration() end

---@param InMaxAcceleration number
function USTExtraFloatingVehicleMovementComponent:SetMaxAcceleration(InMaxAcceleration) end

---@return number
function USTExtraFloatingVehicleMovementComponent:GetMaxRotationYawAngle() end

---@param InMaxRotationYawAngle number
function USTExtraFloatingVehicleMovementComponent:SetMaxRotationYawAngle(InMaxRotationYawAngle) end

---@return number
function USTExtraFloatingVehicleMovementComponent:GetMaxVelocity() end

---@param InMaxVelocity number
function USTExtraFloatingVehicleMovementComponent:SetMaxVelocity(InMaxVelocity) end

---@return number
function USTExtraFloatingVehicleMovementComponent:GetStartAccelerationRate() end

---@param InStartAccelerationRate number
function USTExtraFloatingVehicleMovementComponent:SetStartAccelerationRate(InStartAccelerationRate) end

---@return number
function USTExtraFloatingVehicleMovementComponent:GetBackwardForceScale() end

---@param InBackwardForceScale number
function USTExtraFloatingVehicleMovementComponent:SetBackwardForceScale(InBackwardForceScale) end

---@return boolean
function USTExtraFloatingVehicleMovementComponent:GetClampMaxVelocity() end

---@param InFlag boolean
function USTExtraFloatingVehicleMovementComponent:SetClampMaxVelocity(InFlag) end

function USTExtraFloatingVehicleMovementComponent:ClearFloatingMoveState() end
