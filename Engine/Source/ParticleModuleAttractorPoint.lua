---@meta

---@class UParticleModuleAttractorPoint: UParticleModuleAttractorBase
---@field Position any @The position of the point attractor from the source of the emitter.
---@field Range any @The radial range of the attractor.
---@field Strength any @The strength of the point attractor.
---@field StrengthByDistance number @The strength curve is a function of distance or of time.
---@field bAffectBaseVelocity number @If true, the velocity adjustment will be applied to the base velocity.
---@field bOverrideVelocity number @If true, set the velocity.
---@field bUseWorldSpacePosition number @If true, treat the position as world space.  So don't transform the the point to localspace.
---@field Positive_X number @Whether particles can move along the positive X axis.
---@field Positive_Y number @Whether particles can move along the positive Y axis.
---@field Positive_Z number @Whether particles can move along the positive Z axis.
---@field Negative_X number @Whether particles can move along the negative X axis.
---@field Negative_Y number @Whether particles can move along the negative Y axis.
---@field Negative_Z number @Whether particles can move along the negative Z axis.
local UParticleModuleAttractorPoint = {}
