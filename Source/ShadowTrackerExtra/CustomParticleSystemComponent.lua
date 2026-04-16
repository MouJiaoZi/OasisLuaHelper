---@meta

---@class UCustomParticleSystemComponent: UParticleSystemComponent
---@field CollisionIgnoreActors ULuaArrayHelper<AActor>
---@field bShowImpactInfo boolean
local UCustomParticleSystemComponent = {}

---@param IgnoreActor AActor
function UCustomParticleSystemComponent:AddCollisionIgnoreActor(IgnoreActor) end
