---@meta

---@class UCustomMovementProjectile: UCustomMovementBase
---@field GravityScale number
---@field bRotateCharacter boolean
---@field bRotateController boolean
---@field MinZVelocity number
---@field NotTakeFallingDamageTime number
---@field bResetRotationOnEnter boolean
---@field bResetVelocityOnEnter boolean
---@field InitVelocity FVector
---@field bEnableChangeVelocity boolean
---@field AirControl number
---@field bCanMoveAcrossWaterSurface boolean
---@field MoveAcrossWaterSurfaceTolerance number
---@field bExitCheckLandSpot boolean
local UCustomMovementProjectile = {}

---@param _InitVelocity FVector
---@param _GravityScale number
---@param _bRotateCharacter boolean
---@param _bEnableChangeVelocity boolean
function UCustomMovementProjectile:InitParams(_InitVelocity, _GravityScale, _bRotateCharacter, _bEnableChangeVelocity) end

---@param deltaTime number
---@param Iterations number
function UCustomMovementProjectile:PhysCustom(deltaTime, Iterations) end

---@return number
function UCustomMovementProjectile:GetGravity() end
