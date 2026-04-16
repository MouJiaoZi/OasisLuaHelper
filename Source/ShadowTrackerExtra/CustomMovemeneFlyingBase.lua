---@meta

---@class UCustomMovemeneFlyingBase: UCustomMovementBase
---@field bLandCheckSpot boolean
---@field bLandOnlyFalling boolean
---@field bKeepOnGround boolean
---@field MoveableLandHardTime number
---@field MaxFlyHeight number
---@field DesentVelocityZWhenTooHigh number
---@field CeilingDistance number
---@field CanNotLandActorClasses ULuaArrayHelper<AActor>
local UCustomMovemeneFlyingBase = {}

---@param DeltaTime number
---@param AccelerationZ number
---@return boolean
function UCustomMovemeneFlyingBase:GetAccelerationZ_BP(DeltaTime, AccelerationZ) end

---@param DeltaTime number
---@param InAccelerationZ number
---@param OutAccelerationZ number
---@return boolean
function UCustomMovemeneFlyingBase:ModifyAccelerationZ_BP(DeltaTime, InAccelerationZ, OutAccelerationZ) end

---@return boolean
function UCustomMovemeneFlyingBase:ShouldLand() end

---@return number
function UCustomMovemeneFlyingBase:GetVelocityRatio() end
