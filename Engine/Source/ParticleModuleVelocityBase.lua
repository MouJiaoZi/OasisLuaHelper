---@meta

---@class UParticleModuleVelocityBase: UParticleModule
---@field bInWorldSpace number @If true, then treat the velocity as world-space defined. NOTE: LocalSpace emitters that are moving will see strange results...
---@field bApplyOwnerScale number @If true, then apply the particle system components scale to the velocity value.
local UParticleModuleVelocityBase = {}
