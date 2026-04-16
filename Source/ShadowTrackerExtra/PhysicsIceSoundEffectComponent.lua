---@meta

---@class UPhysicsIceSoundEffectComponent: UPhysicsSoundEffectComponent
---@field PullSoundEventID number
---@field PullVelocitySize number
---@field DropVelocitySize number
---@field DropSoundCD number
---@field EnableDropSound boolean
local UPhysicsIceSoundEffectComponent = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UPhysicsIceSoundEffectComponent:OnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end
