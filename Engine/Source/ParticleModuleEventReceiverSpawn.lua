---@meta

---@class UParticleModuleEventReceiverSpawn: UParticleModuleEventReceiverBase
---@field SpawnCount any @The number of particles to spawn.
---@field bUseParticleTime number @For Death-based event receiving, if this is true, it indicates that the ParticleTime of the event should be used to look-up the SpawnCount. Otherwise (and in all other events received), use the emitter time of the event.
---@field bUsePSysLocation number @If true, use the location of the particle system component for spawning. if false (default), use the location of the particle event.
---@field bInheritVelocity number @If true, use the velocity of the dying particle as the start velocity of the spawned particle.
---@field InheritVelocityScale any @If bInheritVelocity is true, scale the velocity with this.
---@field PhysicalMaterials ULuaArrayHelper<UPhysicalMaterial> @Array of physical materials that can be used to allow or ban a specific set of materials when receiving collision events.
---@field bBanPhysicalMaterials number @When true, the PhysicalMaterials list is used to ban specified materials for collision events but allow all others. When false, the PhysicalMaterials list is used to allow only specified materials for collision events and ban all others.
local UParticleModuleEventReceiverSpawn = {}
