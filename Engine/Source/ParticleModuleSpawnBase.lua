---@meta

---@class UParticleModuleSpawnBase: UParticleModule
---@field bProcessSpawnRate number @If true, the SpawnRate of the SpawnModule of the emitter will be processed. If mutliple Spawn modules are 'stacked' in an emitter, if ANY of them have this set to false, it will not process the SpawnModule SpawnRate.
---@field bProcessBurstList number @If true, the BurstList of the SpawnModule of the emitter will be processed. If mutliple Spawn modules are 'stacked' in an emitter, if ANY of them have this set to false, it will not process the SpawnModule BurstList.
local UParticleModuleSpawnBase = {}
