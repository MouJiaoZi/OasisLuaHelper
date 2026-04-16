---@meta

---@class UCustomMovementHome: UCustomMovementFlying
---@field VerticalFriction number
local UCustomMovementHome = {}

---@return number
function UCustomMovementHome:GetMaxHorizontalSpeed() end

---@param deltaTime number
---@return FVector
function UCustomMovementHome:GetFallingAcceleration(deltaTime) end

---@param DeltaTime number
---@return number
function UCustomMovementHome:GetAccelerationZ(DeltaTime) end

---@return boolean
function UCustomMovementHome:ShouldLand() end

---@return number
function UCustomMovementHome:GetLateralFriction() end
