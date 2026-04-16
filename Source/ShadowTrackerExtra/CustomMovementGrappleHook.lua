---@meta

---@class UCustomMovementGrappleHook: UCustomMovemeneSimpleFlying
local UCustomMovementGrappleHook = {}

---@param DeltaTime number
---@param Friction number
---@param bFluid boolean
---@param BrakingDeceleration number
function UCustomMovementGrappleHook:CalcVelocity_BPNative(DeltaTime, Friction, bFluid, BrakingDeceleration) end

---@param InitialVelocity FVector
---@param Gravity FVector
---@param DeltaTime number
---@return FVector
function UCustomMovementGrappleHook:GetFlyingVelocity_BPNative(InitialVelocity, Gravity, DeltaTime) end

---@return FVector
function UCustomMovementGrappleHook:GetFlyCenter() end

---@return number
function UCustomMovementGrappleHook:GetHookDistance() end

---@return number
function UCustomMovementGrappleHook:GetMinDistance() end
