---@meta

---Movie CameraCuts are sections on the CameraCuts track, that show what the viewer "sees"
---@class UMovieSceneCameraCutSection: UMovieSceneSection
---@field CameraGuid FGuid @The camera possessable or spawnable that this movie CameraCut uses
---@field BlendInTime number
---@field BlendInType EMovieSceneBuiltInEasing
---@field BlendOutTime number
---@field BlendOutType EMovieSceneBuiltInEasing
---@field bUseAutoFixupConsecutive boolean
---@field bLockControlRotation boolean
local UMovieSceneCameraCutSection = {}
