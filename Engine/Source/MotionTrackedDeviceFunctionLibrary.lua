---@meta

---@class UMotionTrackedDeviceFunctionLibrary: UBlueprintFunctionLibrary
local UMotionTrackedDeviceFunctionLibrary = {}

---Returns true if it is necessary for the game to manage how many motion tracked devices it is asking to be tracked simultaneously. On some platforms this is unnecessary because all supported devices can be tracked simultaneously.
---@return boolean
function UMotionTrackedDeviceFunctionLibrary:IsMotionTrackedDeviceCountManagementNecessary() end

---Set whether motion tracked controllers activate on creation by default, or do not and must be explicitly activated.
---@param Enable boolean
function UMotionTrackedDeviceFunctionLibrary:SetIsControllerMotionTrackingEnabledByDefault(Enable) end

---Get the maximum number of controllers that can be tracked.
---@return number
function UMotionTrackedDeviceFunctionLibrary:GetMaximumMotionTrackedControllerCount() end

---Get the number of controllers for which tracking is enabled.
---@return number
function UMotionTrackedDeviceFunctionLibrary:GetMotionTrackingEnabledControllerCount() end

---Returns true if tracking is enabled for the specified device.
---@param PlayerIndex number
---@param Hand EControllerHand
---@return boolean
function UMotionTrackedDeviceFunctionLibrary:IsMotionTrackingEnabledForDevice(PlayerIndex, Hand) end

---Returns true if tracking is enabled for the specified device.
---@param MotionControllerComponent UMotionControllerComponent
---@return boolean
function UMotionTrackedDeviceFunctionLibrary:IsMotionTrackingEnabledForComponent(MotionControllerComponent) end

---Enable tracking of the specified controller, by player index and tracked device type.
---@param PlayerIndex number
---@param Hand EControllerHand
---@return boolean
function UMotionTrackedDeviceFunctionLibrary:EnableMotionTrackingOfDevice(PlayerIndex, Hand) end

---Enable tracking of the specified controller, by player index and tracked device type.
---@param MotionControllerComponent UMotionControllerComponent
---@return boolean
function UMotionTrackedDeviceFunctionLibrary:EnableMotionTrackingForComponent(MotionControllerComponent) end

---Disable tracking of the specified controller, by player index and tracked device type.
---@param PlayerIndex number
---@param Hand EControllerHand
function UMotionTrackedDeviceFunctionLibrary:DisableMotionTrackingOfDevice(PlayerIndex, Hand) end

---Disable tracking of the specified controller, by player index and tracked device type.
---@param MotionControllerComponent UMotionControllerComponent
function UMotionTrackedDeviceFunctionLibrary:DisableMotionTrackingForComponent(MotionControllerComponent) end

---Disable tracking for all controllers.
function UMotionTrackedDeviceFunctionLibrary:DisableMotionTrackingOfAllControllers() end

---Disable tracking for all controllers associated with the specified player.
---@param PlayerIndex number
function UMotionTrackedDeviceFunctionLibrary:DisableMotionTrackingOfControllersForPlayer(PlayerIndex) end
