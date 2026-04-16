---@meta

---@class EMovieSceneEventFirePCType
---@field None number
---@field Local number
---@field DS number
---@field All number
EMovieSceneEventFirePCType = {}


---@class FMovieSceneEventParameters
FMovieSceneEventParameters = {}


---@class FEventPayload
---@field EventName string @The name of the event to trigger
---@field Parameters FMovieSceneEventParameters @The event parameters
FEventPayload = {}


---A curve of events
---@class FMovieSceneEventSectionData
---@field KeyTimes ULuaArrayHelper<number> @Sorted array of key times
---@field KeyValues ULuaArrayHelper<FEventPayload> @Array of values that correspond to each key time
FMovieSceneEventSectionData = {}


---Implements a section in movie scene event tracks.
---@class UMovieSceneEventSection: UMovieSceneSection
---@field Events_DEPRECATED FNameCurve
---@field EventData FMovieSceneEventSectionData
local UMovieSceneEventSection = {}
