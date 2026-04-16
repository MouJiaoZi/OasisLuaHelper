---@meta

---Abstract base class for movie scene animations (C++ version).
---@class UMovieSceneSequence: UMovieSceneSignedObject
---@field EvaluationTemplate FCachedMovieSceneEvaluationTemplate
---@field TemplateParameters FMovieSceneTrackCompilationParams
---@field InstancedSubSequenceEvaluationTemplates ULuaMapHelper<UObject, FCachedMovieSceneEvaluationTemplate>
---@field bParentContextsAreSignificant boolean @true if the result of GetParentObject is significant in object resolution for LocateBoundObjects. When true, if GetParentObject returns nullptr, the PlaybackContext will be used for LocateBoundObjects, other wise the object's parent will be used When false, the PlaybackContext will always be used for LocateBoundObjects
local UMovieSceneSequence = {}
