---@meta

---@class FMovieSceneCameraShakeSectionData
---@field ShakeClass UCameraShake @Class of the camera shake to play
---@field PlayScale number @Scalar that affects shake intensity
---@field PlaySpace ECameraAnimPlaySpace
---@field UserDefinedPlaySpace FRotator
FMovieSceneCameraShakeSectionData = {}


---@class UMovieSceneCameraShakeSection: UMovieSceneSection
---@field ShakeData FMovieSceneCameraShakeSectionData
---@field ShakeClass_DEPRECATED UCameraShake
---@field PlayScale_DEPRECATED number
---@field PlaySpace_DEPRECATED ECameraAnimPlaySpace
---@field UserDefinedPlaySpace_DEPRECATED FRotator
local UMovieSceneCameraShakeSection = {}
