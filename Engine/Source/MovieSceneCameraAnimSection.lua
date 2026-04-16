---@meta

---@class FMovieSceneCameraAnimSectionData
---@field PlayRate number @How fast to play back the animation.
---@field PlayScale number @Scalar to control intensity of the animation.
---@field BlendInTime number
---@field BlendOutTime number
---@field bLooping boolean
FMovieSceneCameraAnimSectionData = {}


---@class UMovieSceneCameraAnimSection: UMovieSceneSection
---@field AnimData FMovieSceneCameraAnimSectionData
---@field PlayRate_DEPRECATED number
---@field PlayScale_DEPRECATED number
---@field BlendInTime_DEPRECATED number
---@field BlendOutTime_DEPRECATED number
---@field bLooping_DEPRECATED boolean
local UMovieSceneCameraAnimSection = {}
