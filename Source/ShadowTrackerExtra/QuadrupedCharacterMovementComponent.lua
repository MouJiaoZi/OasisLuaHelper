---@meta

---四足AI移动组件，比如军犬
---@class UQuadrupedCharacterMovementComponent: UCustomCharacterMovementComponent
---@field PreMovementMode EMovementMode
---@field PreCustomMovementMode number
---@field bEnableWalkModeNetworkSimulatedSmoothRotationSpeed boolean @是否开启模拟端移动时mesh转向差值速度
---@field NetworkSimulatedSmoothRotationSpeed number @模拟端移动时mesh转向差值速度(每秒)
---@field bEnableWalkModeNetworkSimulatedSmoothRotationSpeed_AfterRootMotion boolean @是否开启模拟端RootMotion之后移动时mesh转向差值速度
---@field NetworkSimulatedSmoothRotationSpeed_AfterRootMotion number @RootMotion后模拟端移动时mesh转向差值其实速度(每秒)
---@field NetworkSimulatedSmoothRotation_AfterRootMotionInterpolationTime number @RootMotion后模拟端移动时mesh转向速度差值时间
---@field bUseAccelerationIgnoreVelocityOverMax boolean
---@field ConsiderSlowDownAngle number @使用加速度移动，在高速转向时，由于惯性会偏离原路径较多，导致可能进不去门，或者在浮空平台掉出去
---@field ConsiderSlowDownSpeed number
---@field WaterFrictionWithWaterActor number
---@field bKeepCurveRootMotionWhenTriggerInWater boolean
local UQuadrupedCharacterMovementComponent = {}

---获取移动模式下最大移动速度，不包括自定义移动模式，比如RootMotion
---@return number
function UQuadrupedCharacterMovementComponent:GetOnlyWalkMaxSpeed() end

---设置保持当前速度大小
---@param bInKeepVelocitySize boolean
---@param InKeepVelocitySize number
---@param InKeepVelocityTime number
function UQuadrupedCharacterMovementComponent:SetKeepVelocitySize(bInKeepVelocitySize, InKeepVelocitySize, InKeepVelocityTime) end
