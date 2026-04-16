---@meta

---@class UUniversalProjectileMovementComponent: UProjectileMovementComponent
---@field bOverlapSimulate boolean
---@field bNeedStopWhenImpact boolean
---@field PassThroughActorClasses ULuaArrayHelper<AActor>
---@field PassThroughComponentClasses ULuaArrayHelper<UPrimitiveComponent>
---@field bIgnoreWorldBoundsChecks boolean
---@field OnUniversalProjectilePassedThroughSomething FUniversalProjectilePassThroughActor
---@field bResumeMoveAfterImpactWithNoLostFlag boolean
---@field LastVelocityBeforeStop FVector
---@field bIgnoreBounceReflectOnce boolean
---@field NumBounces_PRIVATE number
---@field MaxBounces number
local UUniversalProjectileMovementComponent = {}

---@param HitResult FHitResult
---@return boolean
function UUniversalProjectileMovementComponent:CanTargetReallyBlockProjectile(HitResult) end
