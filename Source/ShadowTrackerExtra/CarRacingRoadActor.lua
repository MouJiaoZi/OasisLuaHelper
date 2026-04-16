---@meta

---@class FCarRacingRoadQueryResult
---@field bInsideRoad boolean
---@field Distance number
---@field Angle number
FCarRacingRoadQueryResult = {}


---@class ACarRacingRoadActor: AActor
---@field RoadID number
---@field NextRoadActors ULuaArrayHelper<ACarRacingRoadActor>
---@field bIsRoot boolean
local ACarRacingRoadActor = {}
