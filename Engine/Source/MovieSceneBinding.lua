---@meta

---A set of tracks bound to runtime objects
---@class FMovieSceneBinding
---@field ObjectGuid FGuid @Object binding guid for runtime objects
---@field BindingName string @Display name
---@field EditableDisplayName string @EditTable Display name
---@field Tracks ULuaArrayHelper<UMovieSceneTrack> @All tracks in this binding
FMovieSceneBinding = {}
