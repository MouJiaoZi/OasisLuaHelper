---@meta

---@class UPVEProjectileMovementComponent: UProjectileMovementComponent
---@field bOverlapSimulate boolean
---@field PassThroughActorClasses ULuaArrayHelper<AActor>
---@field PassThroughComponentClasses ULuaArrayHelper<UPrimitiveComponent>
---@field OnPVEProjectilePassedThroughSomething FPVEProjectilePassThroughActor
local UPVEProjectileMovementComponent = {}

---@param bNeedUpdateImmide boolean
function UPVEProjectileMovementComponent:ResumeMoveAfterImpactWithNoLost(bNeedUpdateImmide) end

---@param HitResult FHitResult
---@return boolean
function UPVEProjectileMovementComponent:CanTargetReallyBlockProjectile(HitResult) end
