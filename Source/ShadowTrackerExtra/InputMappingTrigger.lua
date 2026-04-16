---@meta

---@class ETriggerType
---@field Explicit number
---@field Implicit number
ETriggerType = {}


---@class EInputTriggerState
---@field None number
---@field Ongoing number
---@field Triggered number
EInputTriggerState = {}


---@class ETriggerEvent
---@field None number
---@field Triggered number
---@field Started number
---@field Ongoing number
---@field Canceled number
---@field Completed number
ETriggerEvent = {}


---@class UInputMappingTrigger: UObject
---@field ActuationThreshold number
---@field bShouldAlwaysTick boolean
---@field LastValue FInputMappingValue
local UInputMappingTrigger = {}

---@return ETriggerType
function UInputMappingTrigger:GetTriggerType() end

---@param PlayerInput UInputMappingSubSystem
---@param ModifiedValue FInputMappingValue
---@param DeltaTime number
---@return EInputTriggerState
function UInputMappingTrigger:UpdateState(PlayerInput, ModifiedValue, DeltaTime) end


---@class UInputMappingTriggerPressed: UInputMappingTrigger
local UInputMappingTriggerPressed = {}


---@class UInputMappingTriggerReleased: UInputMappingTrigger
local UInputMappingTriggerReleased = {}
