---@meta

---Camera cut track evaluation template
---@class FMovieSceneCameraCutSectionTemplate
---@field CameraGuid FGuid @GUID of the camera we should cut to in this sequence
---@field CutTransform FTransform
---@field bHasCutTransform boolean
---@field BlendInTime number
---@field BlendInType EMovieSceneBuiltInEasing
---@field BlendOutTime number
---@field BlendOutType EMovieSceneBuiltInEasing
---@field RangeUpper number
---@field bLockControlRotation boolean
FMovieSceneCameraCutSectionTemplate = {}
