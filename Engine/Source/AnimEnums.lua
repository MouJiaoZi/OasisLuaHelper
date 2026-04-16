---@meta

---@class ERootMotionMode
---@field NoRootMotionExtraction number @Leave root motion in animation.
---@field IgnoreRootMotion number @Extract root motion but do not apply it.
---@field RootMotionFromEverything number @Root motion is taken from all animations contributing to the final pose, not suitable for network multiplayer setups.
---@field RootMotionFromMontagesOnly number @Root motion is only taken from montages, suitable for network multiplayer setups.
ERootMotionMode = {}


---For an additive animation, indicates what the animation is relative to.
---@class EAdditiveBasePoseType
---@field ABPT_None number @Will be deprecated.
---@field ABPT_RefPose number @Use the Skeleton's ref pose as base.
---@field ABPT_AnimScaled number @Use a whole animation as a base pose. BasePoseSeq must be set.
---@field ABPT_AnimFrame number @Use one frame of an animation as a base pose. BasePoseSeq and RefFrameIndex must be set (RefFrameIndex will be clamped).
---@field ABPT_MAX number
EAdditiveBasePoseType = {}


---Indicates animation data compression format.
---@class AnimationCompressionFormat
---@field ACF_None number
---@field ACF_Float96NoW number
---@field ACF_Fixed48NoW number
---@field ACF_IntervalFixed32NoW number
---@field ACF_Fixed32NoW number
---@field ACF_Float32NoW number
---@field ACF_Identity number
---@field ACF_VariableBitNoW number
---@field ACF_MAX number
AnimationCompressionFormat = {}
