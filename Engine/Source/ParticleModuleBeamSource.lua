---@meta

---@class UParticleModuleBeamSource: UParticleModuleBeamBase
---@field SourceMethod Beam2SourceTargetMethod @The method flag.
---@field SourceName string @The strength of the tangent from the source point for each beam.
---@field bSourceAbsolute number @Whether to treat the as an absolute position in world space.
---@field Source any @Default source-point to use.
---@field bLockSource number @Whether to lock the source to the life of the particle.
---@field SourceTangentMethod Beam2SourceTargetTangentMethod @The method to use for the source tangent.
---@field SourceTangent any @The tangent for the source point for each beam.
---@field bLockSourceTangent number @Whether to lock the source to the life of the particle.
---@field SourceStrength any @The strength of the tangent from the source point for each beam.
---@field bLockSourceStength number @Whether to lock the source to the life of the particle.
local UParticleModuleBeamSource = {}
