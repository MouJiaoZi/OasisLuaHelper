---@meta

---@class ETrailsRenderAxisOption
---@field Trails_CameraUp number @Camera Up
---@field Trails_SourceUp number @Source Up
---@field Trails_WorldUp number @World Up
---@field Trails_MAX number
ETrailsRenderAxisOption = {}


---@class UParticleModuleTypeDataRibbon: UParticleModuleTypeDataBase
---@field MaxTessellationBetweenParticles number @The maximum amount to tessellate between two particles of the trail. Depending on the distance between the particles and the tangent change, the system will select a number of tessellation points [0..MaxTessellationBetweenParticles]
---@field SheetsPerTrail number @The number of sheets to render for the trail.
---@field MaxTrailCount number @The number of live trails
---@field MaxParticleInTrailCount number @Max particles per trail
---@field bDeadTrailsOnDeactivate number @If true, when the system is deactivated, mark trails as dead. This means they will still render, but will not have more particles added to them, even if the system re-activates...
---@field bDeadTrailsOnSourceLoss number @If true, when the source of a trail is 'lost' (ie, the source particle dies), mark the current trail as dead.
---@field bClipSourceSegement number @If true, do not join the trail to the source position
---@field bEnablePreviousTangentRecalculation number @If true, recalculate the previous tangent when a new particle is spawned
---@field bTangentRecalculationEveryFrame number @If true, recalculate tangents every frame to allow velocity/acceleration to be applied
---@field bSpawnInitialParticle number @If true, ribbon will spawn a particle when it first starts moving
---@field RenderAxis ETrailsRenderAxisOption @The 'render' axis for the trail (what axis the trail is stretched out on) Trails_CameraUp - Traditional camera-facing trail. Trails_SourceUp - Use the up axis of the source for each spawned particle. Trails_WorldUp  - Use the world up axis.
---@field TangentSpawningScalar number @The tangent scalar for spawning. Angles between tangent A and B are mapped to [0.0f .. 1.0f] This is then multiplied by TangentTessellationScalar to give the number of particles to spawn
---@field bRenderGeometry number @If true, render the trail geometry (this should typically be on)
---@field bRenderSpawnPoints number @If true, render stars at each spawned particle point along the trail
---@field bRenderTangents number @If true, render a line showing the tangent at each spawned particle point along the trail
---@field bRenderTessellation number @If true, render the tessellated path between spawned particles
---@field TilingDistance number @The (estimated) covered distance to tile the 2nd UV set at. If 0.0, a second UV set will not be passed in.
---@field DistanceTessellationStepSize number @The distance step size for tessellation. # Tessellation Points = TruncToInt((Distance Between Spawned Particles) / DistanceTessellationStepSize))
---@field bEnableTangentDiffInterpScale number @If this flag is enabled, the system will scale the number of interpolated vertices based on the difference in the tangents of neighboring particles. Each pair of neighboring particles will compute the following CheckTangent value: CheckTangent = ((ParticleA Tangent DOT ParticleB Tangent) - 1.0f) * 0.5f If CheckTangent is LESS THAN 0.5, then the DistanceTessellationStepSize will be scaled based on the result. This will map so that from parallel to orthogonal (0..90 degrees) will scale from [0..1]. Anything greater than 90 degrees will clamp at a scale of 1.
---@field TangentTessellationScalar number @The tangent scalar for tessellation. Angles between tangent A and B are mapped to [0.0f .. 1.0f] This is then multiplied by TangentTessellationScalar to give the number of points to tessellate
local UParticleModuleTypeDataRibbon = {}
