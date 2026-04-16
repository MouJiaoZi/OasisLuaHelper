---@meta

---Movie scene sequence transform class that transforms from one time-space to another. | TimeScale	Offset	| | 0			1		| As such, traditional matrix mathematics can be applied to transform between different sequence's time-spaces. Transforms apply offset first, then time scale.
---@class FMovieSceneSequenceTransform
---@field TimeScale number @The sequence's time scale (or play rate)
---@field Offset number @Scalar time offset applied before the scale
FMovieSceneSequenceTransform = {}
