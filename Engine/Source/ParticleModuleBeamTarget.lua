---@meta

---@class UParticleModuleBeamTarget: UParticleModuleBeamBase
---@field TargetMethod Beam2SourceTargetMethod @The method flag.
---@field TargetName string @The target point sources of each beam, when using the end point method.
---@field Target any @Default target-point information to use if the beam method is endpoint.
---@field bTargetAbsolute number @Whether to treat the as an absolute position in world space.
---@field bLockTarget number @Whether to lock the Target to the life of the particle.
---@field TargetTangentMethod Beam2SourceTargetTangentMethod @The method to use for the Target tangent.
---@field TargetTangent any @The tangent for the Target point for each beam.
---@field bLockTargetTangent number @Whether to lock the Target to the life of the particle.
---@field TargetStrength any @The strength of the tangent from the Target point for each beam.
---@field bLockTargetStength number @Whether to lock the Target to the life of the particle.
---@field LockRadius number @Default target-point information to use if the beam method is endpoint.
local UParticleModuleBeamTarget = {}
