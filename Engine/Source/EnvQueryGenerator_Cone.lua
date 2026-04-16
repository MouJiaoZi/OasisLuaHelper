---@meta

---@class UEnvQueryGenerator_Cone: UEnvQueryGenerator_ProjectedPoints
---@field AlignedPointsDistance FAIDataProviderFloatValue @Distance between each point of the same angle
---@field ConeDegrees FAIDataProviderFloatValue @Maximum degrees of the generated cone
---@field AngleStep FAIDataProviderFloatValue @The step of the angle increase. Angle step must be >=1 Smaller values generate less items
---@field Range FAIDataProviderFloatValue @Generation distance
---@field CenterActor UEnvQueryContext @The actor (or actors) that will generate a cone in their facing direction
---@field bIncludeContextLocation number @Whether to include CenterActors' locations when generating items. Note that this option skips the MinAngledPointsDistance parameter.
local UEnvQueryGenerator_Cone = {}
