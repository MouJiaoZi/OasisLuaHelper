---@meta

---@class ELocationEmitterSelectionMethod
---@field ELESM_Random number
---@field ELESM_Sequential number
---@field ELESM_MAX number
ELocationEmitterSelectionMethod = {}


---@class UParticleModuleLocationEmitter: UParticleModuleLocationBase
---@field EmitterName string @The name of the emitter to use that the source location for particle.
---@field SelectionMethod ELocationEmitterSelectionMethod @The method to use when selecting a spawn target particle from the emitter. Can be one of the following: ELESM_Random		Randomly select a particle from the source emitter. ELESM_Sequential	Step through each particle from the source emitter in order.
---@field InheritSourceVelocity number @If true, the spawned particle should inherit the velocity of the source particle.
---@field InheritSourceVelocityScale number @Amount to scale the source velocity by when inheriting it.
---@field bInheritSourceRotation number @If true, the spawned particle should inherit the rotation of the source particle.
---@field InheritSourceRotationScale number @Amount to scale the source rotation by when inheriting it.
---@field bApplySourceOrbitOffset number @If true, the spawned particle should uses the location with the orbit offset of the source particle.
local UParticleModuleLocationEmitter = {}
