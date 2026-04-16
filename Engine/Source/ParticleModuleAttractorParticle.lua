---@meta

---@class EAttractorParticleSelectionMethod
---@field EAPSM_Random number @Random
---@field EAPSM_Sequential number @Sequential
---@field EAPSM_MAX number
EAttractorParticleSelectionMethod = {}


---@class UParticleModuleAttractorParticle: UParticleModuleAttractorBase
---@field EmitterName string @The source emitter for attractors
---@field Range any @The radial range of the attraction around the source particle. Particle-life relative.
---@field bStrengthByDistance number @The strength curve is a function of distance or of time.
---@field Strength any @The strength of the attraction (negative values repel). Particle-life relative if StrengthByDistance is false.
---@field bAffectBaseVelocity number @If true, the velocity adjustment will be applied to the base velocity.
---@field SelectionMethod EAttractorParticleSelectionMethod @The method to use when selecting an attractor target particle from the emitter. One of the following: Random		- Randomly select a particle from the source emitter. Sequential  - Select a particle using a sequential order.
---@field bRenewSource number @Whether the particle should grab a new particle if it's source expires.
---@field bInheritSourceVel number @Whether the particle should inherit the source veloctiy if it expires.
---@field LastSelIndex number
local UParticleModuleAttractorParticle = {}
