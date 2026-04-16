---@meta

---@class EProjectilePassThroughType
---@field Ignore number
---@field PassThrough number
---@field Block number
EProjectilePassThroughType = {}


---@class UEliteProjectileMovementComponent: UProjectileMovementComponent
---@field bClientMoveSmooth boolean
---@field PassThroughActorClasses ULuaArrayHelper<AActor>
---@field PassThroughComponentClasses ULuaArrayHelper<UPrimitiveComponent>
---@field OnProjectilePassedThroughSomething FProjectilePassThroughActor
---@field OnProjectileBeginPenetrate FProjectilePassThroughActor
---@field OnProjectileEndPenetrate FProjectilePassThroughActor
---@field OnProjectileTransformUpdated FProjecilteUpdateTransform
---@field MaxBounces number
---@field RandomBounceCone number
---@field StoppableNormalZ number
---@field bShouldStopWhenReachZ boolean
---@field bShouldBounceWhenHitTargetChannel boolean
---@field ChannelToBounceArray ULuaArrayHelper<ECollisionChannel>
---@field ProjectileAxis EAxis
---@field bInertanceAdditive boolean
---@field PenetratedTargetActors ULuaArrayHelper<AActor>
---@field PenetratedTargetComponents ULuaArrayHelper<UPrimitiveComponent>
local UEliteProjectileMovementComponent = {}

---@param HitResult FHitResult
---@return EProjectilePassThroughType
function UEliteProjectileMovementComponent:CanTargetReallyBlockProjectile(HitResult) end

---@param ActorToPenetrate AActor
---@param bWantsPenetrating boolean
function UEliteProjectileMovementComponent:PenetrateActorWhenMoving(ActorToPenetrate, bWantsPenetrating) end

---@param ComponentToPenetrate UPrimitiveComponent
---@param bWantsPenetrating boolean
function UEliteProjectileMovementComponent:PenetrateComponentWhenMoving(ComponentToPenetrate, bWantsPenetrating) end
