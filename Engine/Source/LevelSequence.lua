---@meta

---Movie scene animation for Actors.
---@class ULevelSequence: UMovieSceneSequence
---@field ObjectReferences FLevelSequenceObjectReferenceMap @Legacy object references - should be read-only. Not deprecated because they need to still be saved
---@field BindingReferences FLevelSequenceBindingReferences @References to bound objects.
---@field PossessedObjects_DEPRECATED ULuaMapHelper<string, FLevelSequenceObject> @Deprecated property housing old possessed object bindings
local ULevelSequence = {}
