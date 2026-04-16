---@meta

---Enumeration specifying how to evaluate a particular section when inside a segment
---@class ESectionEvaluationFlags
---@field None number @No special flags - normal evaluation
---@field PreRoll number @Segment resides inside the 'pre-roll' time for the section
---@field PostRoll number @Segment resides inside the 'post-roll' time for the section
ESectionEvaluationFlags = {}


---Evaluation data that specifies information about what to evaluate for a given template
---@class FSectionEvaluationData
---@field ImplIndex number @The implementation index we should evaluate (index into FMovieSceneEvaluationTrack::ChildTemplates)
---@field ForcedTime number @A forced time to evaluate this section at
---@field Flags ESectionEvaluationFlags @Additional flags for evaluating this section
FSectionEvaluationData = {}


---Information about a single segment of an evaluation track
---@class FMovieSceneSegment
FMovieSceneSegment = {}
