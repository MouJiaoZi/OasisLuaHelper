---@meta

---How particles respond to collision events.
---@class EParticleCollisionResponse
---@field Bounce number @The particle will bounce off of the surface.
---@field Stop number @The particle will stop on the surface.
---@field Kill number @The particle will be killed.
EParticleCollisionResponse = {}


---@class UParticleModuleCollisionGPU: UParticleModuleCollisionBase
---@field Resilience any @Dampens the velocity of a particle in the direction normal to the collision plane.
---@field ResilienceScaleOverLife any @Modulates the resilience of the particle over its lifetime.
---@field Friction number @Friction applied to all particles during a collision or while moving along a surface.
---@field RandomSpread number @Controls how wide the bouncing particles are distributed (0 = disabled).
---@field RandomDistribution number @Controls bouncing particles distribution (1 = uniform distribution; 2 = squared distribution).
---@field RadiusScale number @Scale applied to the size of the particle to obtain the collision radius.
---@field RadiusBias number @Bias applied to the collision radius.
---@field Response EParticleCollisionResponse @How particles respond to a collision event.
---@field CollisionMode EParticleCollisionMode
local UParticleModuleCollisionGPU = {}
