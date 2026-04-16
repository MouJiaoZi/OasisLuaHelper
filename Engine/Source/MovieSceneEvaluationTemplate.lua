---@meta

---@class FMovieSceneTrackIdentifiers
---@field Data ULuaArrayHelper<FMovieSceneTrackIdentifier>
FMovieSceneTrackIdentifiers = {}


---@class FMovieSceneTemplateGenerationLedger
---@field LastTrackIdentifier FMovieSceneTrackIdentifier
---@field TrackReferenceCounts ULuaMapHelper<FMovieSceneTrackIdentifier, number> @Map of track identifiers to number of references within th template (generally 1, maybe >1 for shared tracks)
---@field TrackSignatureToTrackIdentifier ULuaMapHelper<FGuid, FMovieSceneTrackIdentifiers> @Map of track signature to array of track identifiers that it created
FMovieSceneTemplateGenerationLedger = {}


---Template that is used for efficient runtime evaluation of a movie scene sequence. Potentially serialized into the asset.
---@class FMovieSceneEvaluationTemplate
---@field Tracks ULuaMapHelper<number, FMovieSceneEvaluationTrack> @Map of evaluation tracks from identifier to track
---@field EvaluationField FMovieSceneEvaluationField @Evaluation field for efficient runtime evaluation
---@field Hierarchy FMovieSceneSequenceHierarchy @Map of all sequences found in this template (recursively)
---@field TemplateLedger FMovieSceneTemplateGenerationLedger
---@field bHasLegacyTrackInstances number @When set, this template contains legacy track instances that require the initialization of a legacy sequence instance
---@field bKeepStaleTracks number @Primarily used in editor to keep stale tracks around during template regeneration to ensure we can call OnEndEvaluation on them.
FMovieSceneEvaluationTemplate = {}


---@class FMovieSceneSequenceCachedSignature
---@field Sequence UMovieSceneSequence
---@field CachedSignature FGuid
FMovieSceneSequenceCachedSignature = {}


---@class FCachedMovieSceneEvaluationTemplate
FCachedMovieSceneEvaluationTemplate = {}
