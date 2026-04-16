---@meta

---@class UCustomMovementSpaceRose: UCustomMovementFlying
---@field VerticalFriction number
---@field VerticalVelocityMaxStopTime number
---@field ResetAngle number
local UCustomMovementSpaceRose = {}

---@return number
function UCustomMovementSpaceRose:GetMaxHorizontalSpeed() end

---@param deltaTime number
---@return FVector
function UCustomMovementSpaceRose:GetFallingAcceleration(deltaTime) end

---@param DeltaTime number
---@return number
function UCustomMovementSpaceRose:GetAccelerationZ(DeltaTime) end

---@return boolean
function UCustomMovementSpaceRose:ShouldLand() end

---@param MoveFlag ECustomFlyingMoveFlag
---@param ResetFlagEnterTime boolean
---@return boolean
function UCustomMovementSpaceRose:SetFlyingMoveFlag(MoveFlag, ResetFlagEnterTime) end
