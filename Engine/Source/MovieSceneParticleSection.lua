---@meta

---Defines the types of particle keys.
---@class EParticleKey
---@field Activate number
---@field Deactivate number
---@field Trigger number
---@field Loading number
EParticleKey = {}


---Particle section, for particle toggling and triggering.
---@class UMovieSceneParticleSection: UMovieSceneSection
---@field ParticleKeys FIntegralCurve @Curve containing the particle keys.
local UMovieSceneParticleSection = {}
