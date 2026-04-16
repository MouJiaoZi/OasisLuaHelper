---@meta

---@class UParticleModuleSpawn: UParticleModuleSpawnBase
---@field Rate any @The rate at which to spawn particles.
---@field RateScale any @The scalar to apply to the rate.
---@field ParticleBurstMethod EParticleBurstMethod @The method to utilize when burst-emitting particles.
---@field BurstList ULuaArrayHelper<FParticleBurst> @The array of burst entries.
---@field BurstScale any @Scale all burst entries by this amount.
---@field bApplyGlobalSpawnRateScale number @If true, the SpawnRate will be scaled by the global CVar r.EmitterSpawnRateScale
local UParticleModuleSpawn = {}
