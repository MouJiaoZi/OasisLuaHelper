---@meta

---@class UParticleModuleSpawnPerUnit: UParticleModuleSpawnBase
---@field UnitScalar number @The scalar to apply to the distance traveled. The value from SpawnPerUnit is divided by this value to give the actual number of particles per unit.
---@field SpawnPerUnit any @The amount to spawn per meter distribution. The value is retrieved using the EmitterTime.
---@field bIgnoreSpawnRateWhenMoving number @If true, process the default spawn rate when not moving... When not moving, skip the default spawn rate. If false, return the bProcessSpawnRate setting.
---@field MovementTolerance number @The tolerance for moving vs. not moving w.r.t. the bIgnoreSpawnRateWhenMoving flag. Ie, if (DistanceMoved < (UnitScalar x MovementTolerance)) then consider it not moving.
---@field MaxFrameDistance number @The maximum valid movement for a single frame. If 0.0, then the check is not performed. Currently, if the distance moved between frames is greater than this then NO particles will be spawned. This is primiarily intended to cover cases where the PSystem is attached to teleporting objects.
---@field bIgnoreMovementAlongX number @If true, ignore the X-component of the movement
---@field bIgnoreMovementAlongY number @If true, ignore the Y-component of the movement
---@field bIgnoreMovementAlongZ number @If true, ignore the Z-component of the movement
local UParticleModuleSpawnPerUnit = {}
