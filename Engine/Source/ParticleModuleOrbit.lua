---@meta

---@class EOrbitChainMode
---@field EOChainMode_Add number @Add the module values to the previous results
---@field EOChainMode_Scale number @Multiply the module values by the previous results
---@field EOChainMode_Link number @'Break' the chain and apply the values from the	previous results
---@field EOChainMode_MAX number
EOrbitChainMode = {}


---Container struct for holding options on the data updating for the module.
---@class FOrbitOptions
---@field bProcessDuringSpawn number @Whether to process the data during spawning.
---@field bProcessDuringUpdate number @Whether to process the data during updating.
---@field bUseEmitterTime number @Whether to use emitter time during data retrieval.
---@field bUseParticleIDInsteadOfTime number @Whether to use particle ID instead of time (emitter time or particle time).
---@field ParticleIDLoop number @If >0, the distribution input will be ParticleID % ParticleIDLoop
FOrbitOptions = {}


---@class UParticleModuleOrbit: UParticleModuleOrbitBase
---@field ChainMode EOrbitChainMode @Orbit modules will chain together in the order they appear in the module stack. The combination of a module with the one prior to it is defined by using one of the following enumerations: EOChainMode_Add		Add the values to the previous results EOChainMode_Scale	Multiply the values by the previous results EOChainMode_Link	'Break' the chain and apply the values from the	previous results
---@field OffsetAmount any @The amount to offset the sprite from the particle position.
---@field OffsetOptions any @The options associated with the OffsetAmount look-up.
---@field RotationAmount any @The amount (in 'turns') to rotate the offset about the particle position. 0.0 = no rotation 0.5	= 180 degree rotation 1.0 = 360 degree rotation
---@field RotationOptions any @The options associated with the RotationAmount look-up.
---@field RotationRateAmount any @The rate (in 'turns') at which to rotate the offset about the particle positon. 0.0 = no rotation 0.5	= 180 degree rotation 1.0 = 360 degree rotation
---@field RotationRateOptions any @The options associated with the RotationRateAmount look-up.
local UParticleModuleOrbit = {}
