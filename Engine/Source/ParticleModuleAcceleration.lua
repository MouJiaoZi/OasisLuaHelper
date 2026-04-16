---@meta

---@class UParticleModuleAcceleration: UParticleModuleAccelerationBase
---@field Acceleration any @The initial acceleration of the particle. Value is obtained using the EmitterTime at particle spawn. Each frame, the current and base velocity of the particle is then updated using the formula velocity += acceleration * DeltaTime where DeltaTime is the time passed since the last frame.
---@field bApplyOwnerScale number @If true, then apply the particle system components scale to the acceleration value.
local UParticleModuleAcceleration = {}
