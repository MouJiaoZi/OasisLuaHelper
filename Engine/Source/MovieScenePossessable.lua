---@meta

---MovieScenePossessable is a "typed slot" used to allow the MovieScene to control an already-existing object
---@class FMovieScenePossessable
---@field Guid FGuid @Unique identifier of the possessable object.
---@field Name string @Name label for this slot
---@field ParentGuid FGuid @GUID relating to this possessable's parent, if applicable.
FMovieScenePossessable = {}
