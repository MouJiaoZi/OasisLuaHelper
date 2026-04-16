---@meta

---Default instance data class that level sequences understand. Implements IMovieSceneTransformOrigin.
---@class UDefaultLevelSequenceInstanceData: UObject, IMovieSceneTransformOrigin
---@field TransformOrigin FTransform @Specifies a transform that offsets all absolute transform sections in this sequence. Will compound with attach tracks. Scale is ignored. Not applied to Relative or Additive sections.
---@field ShouldIgnoreScale boolean
local UDefaultLevelSequenceInstanceData = {}
