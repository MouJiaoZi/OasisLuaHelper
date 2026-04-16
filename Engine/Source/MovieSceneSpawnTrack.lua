---@meta

---Handles when a spawnable should be spawned and destroyed
---@class UMovieSceneSpawnTrack: UMovieSceneTrack
---@field Sections ULuaArrayHelper<UMovieSceneSection> @All the sections in this track
---@field ObjectGuid FGuid @The guid relating to the object we are to spawn and destroy
local UMovieSceneSpawnTrack = {}
