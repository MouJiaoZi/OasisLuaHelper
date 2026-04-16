---@meta

---A pointer to a track held within an evaluation template
---@class FMovieSceneEvaluationFieldTrackPtr
---@field SequenceID FMovieSceneSequenceID @The sequence ID that identifies to which sequence the track belongs
---@field TrackIdentifier FMovieSceneTrackIdentifier @The Identifier of the track inside the track map (see FMovieSceneEvaluationTemplate::Tracks)
FMovieSceneEvaluationFieldTrackPtr = {}


---A pointer to a particular segment of a track held within an evaluation template
---@class FMovieSceneEvaluationFieldSegmentPtr
---@field SegmentIndex number @The index of the segment within the track (see FMovieSceneEvaluationTrack::Segments)
FMovieSceneEvaluationFieldSegmentPtr = {}


---Lookup table index for a group of evaluation templates
---@class FMovieSceneEvaluationGroupLUTIndex
---@field LUTOffset number @The offset within FMovieSceneEvaluationGroup::SegmentPtrLUT that this index starts
---@field NumInitPtrs number @The number of initialization pointers are stored after &FMovieSceneEvaluationGroup::SegmentPtrLUT[0] + LUTOffset.
---@field NumEvalPtrs number @The number of evaluation pointers are stored after &FMovieSceneEvaluationGroup::SegmentPtrLUT[0] + LUTOffset + NumInitPtrs.
FMovieSceneEvaluationGroupLUTIndex = {}


---Holds segment pointers for all segments that are active for a given range of the sequence
---@class FMovieSceneEvaluationGroup
---@field LUTIndices ULuaArrayHelper<FMovieSceneEvaluationGroupLUTIndex> @Array of indices that define all the flush groups in the range.
---@field SegmentPtrLUT ULuaArrayHelper<FMovieSceneEvaluationFieldSegmentPtr> @A grouping of evaluation pointers that occur in this range of the sequence
FMovieSceneEvaluationGroup = {}


---Struct that stores the key for an evaluated entity, and the index at which it was (or is to be) evaluated
---@class FMovieSceneOrderedEvaluationKey
---@field Key FMovieSceneEvaluationKey
---@field EvaluationIndex number
FMovieSceneOrderedEvaluationKey = {}


---Informational meta-data that applies to a given time range
---@class FMovieSceneEvaluationMetaData
---@field ActiveSequences ULuaArrayHelper<FMovieSceneSequenceID> @Array of sequences that are active in this time range.
---@field ActiveEntities ULuaArrayHelper<FMovieSceneOrderedEvaluationKey> @Array of entities (tracks and/or sections) that are active in this time range.
FMovieSceneEvaluationMetaData = {}


---Memory layout optimized primarily for speed of searching the applicable ranges
---@class FMovieSceneEvaluationField
---@field Ranges ULuaArrayHelper<FFloatRange> @Ranges stored separately for fast (cache efficient) lookup. Each index has a corresponding entry in FMovieSceneEvaluationField::Groups.
---@field Groups ULuaArrayHelper<FMovieSceneEvaluationGroup> @Groups that store segment pointers for each of the above ranges. Each index has a corresponding entry in FMovieSceneEvaluationField::Ranges.
---@field MetaData ULuaArrayHelper<FMovieSceneEvaluationMetaData> @Meta data that maps to entries in the 'Ranges' array.
FMovieSceneEvaluationField = {}
