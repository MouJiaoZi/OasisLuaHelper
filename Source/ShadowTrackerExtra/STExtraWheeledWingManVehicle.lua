---@meta

---@class ESWingManMovementMode
---@field eMovement4W number
---@field eMovementAircraft number
ESWingManMovementMode = {}


---@class ASTExtraWheeledWingManVehicle: ASTExtraWheeledVehicle
---@field TopWingsEffectName string
---@field BackWingsEffectName string
---@field DustEffectName string
---@field WaterDustEffectName string
---@field SandDustEffectName string
---@field GrassDustEffectName string
---@field SnowDustEffectName string
---@field WaterPlaneEffectName string
---@field TopWingsBoneName string
---@field BackWingsBoneName string
---@field OnLandHeight number
---@field IdleSpeed number
---@field WingAccelerateMaxTime number
---@field showWaterPlaneffectHeight number
---@field WaterPlaneffectHeigh number
---@field LeftRightMinInput number
---@field TopWinsfxLoop FSTExtraVehicleSfxLoop
---@field TopWinsEnginefxLoop FSTExtraVehicleSfxLoop
---@field helicoterBurningfxLoop FSTExtraVehicleSfxLoop
---@field CurMovementMode ESWingManMovementMode
local ASTExtraWheeledWingManVehicle = {}

---@param MovementMode ESWingManMovementMode
function ASTExtraWheeledWingManVehicle:ServerSetMovementMode(MovementMode) end
