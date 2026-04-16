---@meta

---@class ETrail2SourceMethod
---@field PET2SRCM_Default number @Default	- use the emitter position. This is the fallback for when other modes can't be resolved.
---@field PET2SRCM_Particle number @Particle	- use the particles from a given emitter in the system. The name of the emitter should be set in SourceName.
---@field PET2SRCM_Actor number @Actor		- use the actor as the source. The name of the actor should be set in SourceName.
---@field PET2SRCM_MAX number
ETrail2SourceMethod = {}


---@class UParticleModuleTrailSource: UParticleModuleTrailBase
---@field SourceMethod ETrail2SourceMethod @The source method for the trail.
---@field SourceName string @The name of the source - either the emitter or Actor.
---@field SourceStrength any @The strength of the tangent from the source point for each Trail.
---@field bLockSourceStength number @Whether to lock the source to the life of the particle.
---@field SourceOffsetCount number @SourceOffsetCount The number of source offsets that can be expected to be found on the instance. These must be named TrailSourceOffset#
---@field SourceOffsetDefaults ULuaArrayHelper<FVector> @Default offsets from the source(s). If there are < SourceOffsetCount slots, the grabbing of values will simply wrap.
---@field SelectionMethod EParticleSourceSelectionMethod @Particle selection method, when using the SourceMethod of Particle.
---@field bInheritRotation number @Interhit particle rotation - only valid for SourceMethod of PET2SRCM_Particle.
local UParticleModuleTrailSource = {}
