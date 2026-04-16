---@meta

---Indicates at what point in the sequence evaluation events should fire
---@class EFireEventsAtPosition
---@field AtStartOfEvaluation number @Fire events before anything else is evaluated in the sequence
---@field AtEndOfEvaluation number @Fire events after everything else has been evaluated in the sequence
---@field AfterSpawn number @Fire events right after any spawn tracks have been evaluated
EFireEventsAtPosition = {}


---Implements a movie scene track that triggers discrete events during playback.
---@class UMovieSceneEventTrack: UMovieSceneNameableTrack
---@field bFireEventsWhenForwards number @If events should be fired when passed playing the sequence forwards.
---@field bFireEventsWhenBackwards number @If events should be fired when passed playing the sequence backwards.
---@field EventPosition EFireEventsAtPosition @Defines where in the evaluation to trigger events
---@field EventReceivers ULuaArrayHelper<FMovieSceneObjectBindingID> @Defines a list of object bindings on which to trigger the events in this track. When empty, events will trigger in the default event contexts for the playback environment (such as the level blueprint, or widget).
---@field Sections ULuaArrayHelper<UMovieSceneSection> @The track's sections.
local UMovieSceneEventTrack = {}
