---@meta

---Value definition for any type-agnostic variable (exported as text)
---@class FMovieSceneEventPayloadVariable
---@field Value string
FMovieSceneEventPayloadVariable = {}


---Compiled reflection pointers for the event function and parameters
---@class FMovieSceneEventPtrs
FMovieSceneEventPtrs = {}


---@class FMovieSceneEvent
---@field Ptrs FMovieSceneEventPtrs @The function that should be called to invoke this event. Functions must have either no parameters, or a single, pass-by-value object/interface parameter, with no return parameter.
FMovieSceneEvent = {}


---@class FMovieSceneEventWrapper
---@field SceneEvent FMovieSceneEvent
FMovieSceneEventWrapper = {}


---Base class for all NewEvent sections. Manages dirtying the section and track on recompilation of the director blueprint.
---@class UMovieSceneNewEventSectionBase: UMovieSceneSection
local UMovieSceneNewEventSectionBase = {}
