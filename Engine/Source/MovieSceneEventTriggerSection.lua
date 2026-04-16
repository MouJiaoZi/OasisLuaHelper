---@meta

---NewEvent section that triggeres specific timed NewEvents.
---@class UMovieSceneEventTriggerSection: UMovieSceneNewEventSectionBase
---@field KeyTimes ULuaArrayHelper<number> @Array of times for each key
---@field KeyValues ULuaArrayHelper<FMovieSceneEventWrapper> @Array of values that correspond to each key time
local UMovieSceneEventTriggerSection = {}
