---@meta

---@class EDeadZoneType
---@field Unscaled number
---@field Scaled number
EDeadZoneType = {}


---@class UInputMappingModifier: UObject
local UInputMappingModifier = {}

---ModifyRaw Will be called by each modifier in the modifier chain
---@param PlayerInput UInputMappingSubSystem
---@param CurrentValue FInputMappingValue
---@param DeltaTime number
---@return FInputMappingValue
function UInputMappingModifier:ModifyRaw(PlayerInput, CurrentValue, DeltaTime) end


---@class UInputMappingModifierDeadZone: UInputMappingModifier
---@field LowerThreshold number
---@field UpperThreshold number
---@field Type EDeadZoneType
local UInputMappingModifierDeadZone = {}
