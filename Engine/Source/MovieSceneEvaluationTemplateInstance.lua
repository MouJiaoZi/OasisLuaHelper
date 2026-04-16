---@meta

---Root evaluation template instance used to play back any sequence
---@class FMovieSceneRootEvaluationTemplateInstance
---@field DirectorInstances ULuaMapHelper<FMovieSceneSequenceID, UObject> @Map of director instances by sequence ID. Kept alive by this map assuming this struct is reference collected
FMovieSceneRootEvaluationTemplateInstance = {}
