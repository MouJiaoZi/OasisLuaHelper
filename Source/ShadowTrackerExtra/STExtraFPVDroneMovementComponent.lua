---@meta

---@class USTExtraFPVDroneMovementComponent: USTExtraUAVVehicleMovementComponent
---@field WheeledVehicleTargetOffsetZ number @轮式载具原点较低，位置叠加一个垂直的offset
---@field ExplodeDistance number
---@field VelocityFactor number @同时按下前进和下降时，水平速度与垂直速度的近似比值
---@field DiveMaxAcc number
---@field DiveMaxAngularAcc number
local USTExtraFPVDroneMovementComponent = {}

---@return boolean
function USTExtraFPVDroneMovementComponent:IsDiving() end

---@return boolean
function USTExtraFPVDroneMovementComponent:ReadyToExplode() end
