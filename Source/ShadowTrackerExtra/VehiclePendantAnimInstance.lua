---@meta

---@class UVehiclePendantAnimInstance: UAnimInstance
---@field AnimStateUpdateInterval number
---@field IsMovingDeterminSpeedThreshold number
---@field bConsiderAnimUpdateRate boolean
---@field DynamicSpeedControlAlpha number
---@field MaxSpeedControlAlpha number
---@field MaxDynamicSpeed number
---@field bIsMoving boolean
---@field OwnerVehicleAvatarComp UObject
---@field AnimStateUpdateCounter number
local UVehiclePendantAnimInstance = {}

---@param DeltaSeconds number
function UVehiclePendantAnimInstance:UpdateAnimState(DeltaSeconds) end
