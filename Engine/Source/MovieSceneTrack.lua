---@meta

---@class EEvaluationRunSide
---@field None number @都不运行
---@field Client number @仅客户端
---@field Server number @仅DS
---@field LowDevice number @仅低端机
---@field MiddleDevice number @仅中端机
---@field HighDevice number @仅高端机
---@field LowMemory number @仅低内存
---@field MiddleMemory number @仅低内存
---@field HighMemory number @仅高内存
---@field OnlyViewTarget number @仅ViewTarget
---@field ExposedAvatar number @走光Avatar
---@field NonExposedAvatar number @非走光Avatar
---@field SuperDevice number @超高机型
---@field OnlyNotViewTarget number @除ViewTarget
---@field ALLDevice number @所有机型
---@field ALLMemory number @所有内存
---@field AllAvatar number @所有Avatar
---@field All number
EEvaluationRunSide = {}


---@class ETrackCheckNeedRunType
---@field ETrackCheckNeedRunType_Once number @CheckOnce
---@field ETrackCheckNeedRunType_PerFrame number @CheckPerFrame
ETrackCheckNeedRunType = {}


---@class FMovieSceneTrackCompilationParams
---@field bForEditorPreview boolean @Whether we're generating for an editor preview, or for efficient runtime evaluation
---@field bDuringBlueprintCompile boolean @Whether we're generating during a blueprint compile. As such, UObject types may not have been fully loaded.
FMovieSceneTrackCompilationParams = {}


---Generic evaluation options for any track
---@class FMovieSceneTrackEvalOptions
---@field bCanEvaluateNearestSection number @true when the value of bEvalNearestSection is to be considered for the track
---@field bEvalNearestSection number @When evaluating empty space on a track, will evaluate the last position of the previous section (if possible), or the first position of the next section, in that order of preference.
---@field bEvaluateInPreroll number @Evaluate this track as part of its parent sub-section's pre-roll, if applicable
---@field bEvaluateInPostroll number @Evaluate this track as part of its parent sub-section's post-roll, if applicable
---@field bEvaluateNearestSection_DEPRECATED number
FMovieSceneTrackEvalOptions = {}


---Base class for a track in a Movie Scene
---@class UMovieSceneTrack: UMovieSceneSignedObject
---@field EvalOptions FMovieSceneTrackEvalOptions @General evaluation options for a given track
---@field EvaluationRunSide number
---@field MinRunnableTCQuality number
---@field SavedTrackTags ULuaArrayHelper<string>
local UMovieSceneTrack = {}
