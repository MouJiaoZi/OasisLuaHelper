---@meta

---@class USoccerMovementComponent: UProjectileMovementComponent
---@field bEnableHitAccelerate boolean
---@field CharacterImpulseThreshold number
---@field CanHitCollisionChannel ULuaArrayHelper<ECollisionChannel>
---@field bEnableAccelerateCorrection boolean
---@field AccelerateCorrection number
local USoccerMovementComponent = {}

---@param Impulse FVector
---@param bOverrideXY boolean
---@param bOverrideZ boolean
function USoccerMovementComponent:AddImpulse(Impulse, bOverrideXY, bOverrideZ) end

---@param HitResult FHitResult
function USoccerMovementComponent:StopSimulating(HitResult) end
