---@meta

---Keyable struct that represents a particular entity within an evaluation template (either a section/template or a track)
---@class FMovieSceneEvaluationKey
---@field SequenceID FMovieSceneSequenceID @ID of the sequence that the entity is contained within
---@field TrackIdentifier FMovieSceneTrackIdentifier @ID of the track this key relates to
---@field SectionIdentifier number @ID of the section this key relates to (or -1 where this key relates to a track)
FMovieSceneEvaluationKey = {}
