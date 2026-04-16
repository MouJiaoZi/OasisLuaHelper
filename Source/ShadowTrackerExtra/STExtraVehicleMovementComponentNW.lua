---@meta

---@class FVehicleDifferentialNWData
---@field DrivenWheelIndex ULuaArrayHelper<number> @Type of differential
FVehicleDifferentialNWData = {}


---多轮载具基类 -lyonarzhang
---@class USTExtraVehicleMovementComponentNW: USTExtraVehicleMovementComponent4W
---@field DifferentialSetupNW FVehicleDifferentialNWData @Differential for NW
---@field CleanThrottleUnderWater boolean
local USTExtraVehicleMovementComponentNW = {}

---@param rate number
function USTExtraVehicleMovementComponentNW:SetBoosting(rate) end
