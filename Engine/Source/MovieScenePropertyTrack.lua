---@meta

---Base class for tracks that animate an object property
---@class UMovieScenePropertyTrack: UMovieSceneNameableTrack
---@field PropertyName string @Name of the property being changed
---@field PropertyPath string @Path to the property from the source object being changed
---@field Sections ULuaArrayHelper<UMovieSceneSection> @All the sections in this list
local UMovieScenePropertyTrack = {}
