---@meta

---@class FTrackOverpassHeightLimitInfo
---@field CrossDistance number
---@field LimitDistRange number
---@field LimitHeight number
---@field PowerNum number
FTrackOverpassHeightLimitInfo = {}


---@class USTExtraRacingTrackOverpassComponent: UActorComponent
---@field OverpassHetLimitList ULuaArrayHelper<FTrackOverpassHeightLimitInfo>
---@field bNeedRefresh boolean
---@field DefaultSplitDist number
---@field DefaultSplitNum number
---@field DefaultHeightDelta number
---@field DefaultDistRange number
---@field DefaultPower number
---@field DebugDrawDuration number
---@field DebugDrawSegment number
---@field DebugExtraDist number
---@field DrawDebugColor FLinearColor
local USTExtraRacingTrackOverpassComponent = {}
