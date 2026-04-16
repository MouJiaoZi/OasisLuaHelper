---@meta

---Enumeration to determine how a track should be evaluated
---@class EEvaluationMethod
---@field Static number @Evaluation only ever occurs at a single time. Delta is irrelevant. Example: Basic curve eval, animation
---@field Swept number @Evaluation from one frame to the next must consider the entire swept delta range on the track. Example: Events
EEvaluationMethod = {}


---Evaluation track that is stored within an evaluation template for a sequence. Contains user-defined evaluation templates, and an optional track implementation
---@class FMovieSceneEvaluationTrack
---@field ObjectBindingID FGuid @ID of the possessable or spawnable within the UMovieScene this track belongs to, if any. Zero guid where this relates to a master track.
---@field EvaluationPriority number @Evaluation priority. Highest is evaluated first
---@field EvaluationMethod EEvaluationMethod @Evaluation method - static or swept
---@field EvaluationRunSide number
---@field MinRunnableTCQuality number
---@field RunTagArray ULuaArrayHelper<string>
---@field Segments ULuaArrayHelper<FMovieSceneSegment> @Array of segmented ranges contained within the track.
---@field ChildTemplates ULuaArrayHelper<FMovieSceneEvalTemplatePtr> @Domain-specific evaluation templates (normally 1 per section)
---@field TrackTemplate FMovieSceneTrackImplementationPtr @Domain-specific track implementation override.
---@field EvaluationGroup string @Flush group that determines whether this track belongs to a group of tracks
---@field bEvaluateInPreroll number @Whether this track is evaluated in preroll
---@field bEvaluateInPostroll number @Whether this track is evaluated in postroll
FMovieSceneEvaluationTrack = {}
