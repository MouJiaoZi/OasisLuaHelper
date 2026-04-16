---@meta

---Implements a movie scene track that triggers discrete events during playback.
---@class UMovieSceneNewEventTrack: UMovieSceneNameableTrack
---@field bFireEventsWhenForwards number @If events should be fired when passed playing the sequence forwards.
---@field bFireEventsWhenBackwards number @If events should be fired when passed playing the sequence backwards.
---@field EventPosition EFireEventsAtPosition @Defines where in the evaluation to trigger events
---@field Sections ULuaArrayHelper<UMovieSceneSection> @The track's sections.
local UMovieSceneNewEventTrack = {}
