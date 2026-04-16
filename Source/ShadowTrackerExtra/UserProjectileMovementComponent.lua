---@meta

---@class UUserProjectileMovementComponent: UProjectileMovementComponent
---@field bStopSimulatingIsSetUpdatedComponentNull boolean
local UUserProjectileMovementComponent = {}

---@param HitResult FHitResult
function UUserProjectileMovementComponent:StopSimulating(HitResult) end

---@param LaunchVelocity FVector
---@param bXYOverride boolean
---@param bZOverride boolean
function UUserProjectileMovementComponent:AddLaunch(LaunchVelocity, bXYOverride, bZOverride) end
