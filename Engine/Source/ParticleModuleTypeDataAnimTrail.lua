---@meta

---@class UParticleModuleTypeDataAnimTrail: UParticleModuleTypeDataBase
---@field bDeadTrailsOnDeactivate number @If true, when the system is deactivated, mark trails as dead. This means they will still render, but will not have more particles added to them, even if the system re-activates...
---@field bEnablePreviousTangentRecalculation number @If true, recalculate the previous tangent when a new particle is spawned
---@field bTangentRecalculationEveryFrame number @If true, recalculate tangents every frame to allow velocity/acceleration to be applied
---@field TilingDistance number @The (estimated) covered distance to tile the 2nd UV set at. If 0.0, a second UV set will not be passed in.
---@field DistanceTessellationStepSize number @The distance step size for tessellation. # Tessellation Points = TruncToInt((Distance Between Spawned Particles) / DistanceTessellationStepSize)). If 0 then there is no distance tessellation.
---@field TangentTessellationStepSize number @The tangent scalar for tessellation. This is the degree change in the tangent direction [0...180] required to warrant an additional tessellation point. If 0 then there is no tangent tessellation.
---@field WidthTessellationStepSize number @The width step size for tessellation. This is the number of world units change in the width required to warrant an additional tessellation point. If 0 then there is no width tessellation.
local UParticleModuleTypeDataAnimTrail = {}
