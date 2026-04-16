---@meta

---@class UParticleLODLevel: UObject
---@field Level number @The index value of the LOD level
---@field bEnabled number @True if the LOD level is enabled, meaning it should be updated and rendered.
---@field Modules ULuaArrayHelper<UParticleModule> @An array of particle modules that contain the adjusted data for the LOD level
---@field SpawningModules ULuaArrayHelper<UParticleModuleSpawnBase> @SpawningModules - These are called to determine how many particles to spawn.
---@field SpawnModules ULuaArrayHelper<UParticleModule> @SpawnModules - These are called when particles are spawned.
---@field UpdateModules ULuaArrayHelper<UParticleModule> @UpdateModules - These are called when particles are updated.
---@field OrbitModules ULuaArrayHelper<UParticleModuleOrbit> @OrbitModules These are used to do offsets of the sprite from the particle location.
---@field EventReceiverModules ULuaArrayHelper<UParticleModuleEventReceiverBase> @Event receiver modules only!
---@field ConvertedModules number
---@field PeakActiveParticles number
---@field ActualPeakParticles number
local UParticleLODLevel = {}
