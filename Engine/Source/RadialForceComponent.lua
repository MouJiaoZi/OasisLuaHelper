---@meta

---Used to emit a radial force or impulse that can affect physics objects and or destructible objects.
---@class URadialForceComponent: USceneComponent
---@field Radius number @The radius to apply the force or impulse in
---@field Falloff ERadialImpulseFalloff @How the force or impulse should fall off as object are further away from the center
---@field ImpulseStrength number @How strong the impulse should be
---@field bImpulseVelChange number @If true, the impulse will ignore mass of objects and will always result in a fixed velocity change
---@field bIgnoreOwningActor number @If true, do not apply force/impulse to any physics objects that are part of the Actor that owns this component.
---@field ForceStrength number @How strong the force should be
---@field DestructibleDamage number @If > 0.f, will cause damage to destructible meshes as well
---@field ObjectTypesToAffect ULuaArrayHelper<EObjectTypeQuery> @The object types that are affected by this radial force
local URadialForceComponent = {}

---Fire a single impulse
function URadialForceComponent:FireImpulse() end

---Add an object type for this radial force to affect
---@param ObjectType EObjectTypeQuery
function URadialForceComponent:AddObjectTypeToAffect(ObjectType) end

---Remove an object type that is affected by this radial force
---@param ObjectType EObjectTypeQuery
function URadialForceComponent:RemoveObjectTypeToAffect(ObjectType) end
