---@meta

---@class FAmphibiousFollowConsumeFuelStratagy
---@field CurSpeedKMH number
---@field FuelConsume number
FAmphibiousFollowConsumeFuelStratagy = {}


---@class UAmphibiousFollowVehicleComponent: UFollowVehicleBaseComponent
---@field LandModifyVelocityFollowVehicleCalculatorTemplate UModifyVelocityFollowVehicleCalculator
---@field WaterModifyVelocityFollowVehicleCalculatorTemplate UModifyVelocityFollowVehicleCalculator
---@field ShouldHandBrakeSpeedThreshold number
---@field LandFollowConsumeFuelStratagy ULuaArrayHelper<FAmphibiousFollowConsumeFuelStratagy>
---@field WaterFollowConsumeFuelStratagy ULuaArrayHelper<FAmphibiousFollowConsumeFuelStratagy>
---@field TargetFollowSpeed number
local UAmphibiousFollowVehicleComponent = {}

---@param LinVelKMH number
---@param StratagyArray ULuaArrayHelper<FAmphibiousFollowConsumeFuelStratagy>
---@param DeltaTime number
---@return number
function UAmphibiousFollowVehicleComponent:GetCurrentConsumeFuel(LinVelKMH, StratagyArray, DeltaTime) end
