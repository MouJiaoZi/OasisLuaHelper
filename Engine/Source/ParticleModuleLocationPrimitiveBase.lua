---@meta

---@class UParticleModuleLocationPrimitiveBase: UParticleModuleLocationBase
---@field Positive_X number @Whether the positive X axis is valid for spawning.
---@field Positive_Y number @Whether the positive Y axis is valid for spawning.
---@field Positive_Z number @Whether the positive Z axis is valid for spawning.
---@field Negative_X number @Whether the negative X axis is valid for spawning.
---@field Negative_Y number @Whether the negative Y axis is valid for spawning.
---@field Negative_Z number @Whether the negative Zaxis is valid for spawning.
---@field SurfaceOnly number @Whether particles will only spawn on the surface of the primitive.
---@field Velocity number @Whether the particle should get its velocity from the position within the primitive.
---@field VelocityScale any @The scale applied to the velocity. (Only used if 'Velocity' is checked).
---@field StartLocation any @The location of the bounding primitive relative to the position of the emitter.
local UParticleModuleLocationPrimitiveBase = {}
