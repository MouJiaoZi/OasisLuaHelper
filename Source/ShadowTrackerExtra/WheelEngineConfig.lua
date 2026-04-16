---@meta

---Represents a type of tire surface used to specify friction values against physical materials.
---@class UWheelEngineConfig: UObject
---@field EngineSetup FVehicleEngineData
---@field SteeringCurve FRuntimeFloatCurve @Maximum steering versus forward speed (km/h)
---@field SteeringInputRate FVehicleInputRate
---@field Mass number @Mass to set the vehicle chassis to. It's much easier to tweak vehicle settings when the mass doesn't change due to tweaks with the physics asset. [kg]
---@field DragCoefficient number @DragCoefficient of the vehicle chassis.
---@field ChassisWidth number @Chassis width used for drag force computation (cm)
---@field ChassisHeight number @Chassis height used for drag force computation (cm)
---@field NeedOpenPhysxLock boolean
---@field FuelConsumeFactor number
local UWheelEngineConfig = {}

---@param WheeledVehicle ASTExtraWheeledVehicle
function UWheelEngineConfig:ApplyEngineConfig(WheeledVehicle) end

---@param WheeledVehicle ASTExtraWheeledVehicle
function UWheelEngineConfig:ApplyEngineConfigEvent(WheeledVehicle) end
