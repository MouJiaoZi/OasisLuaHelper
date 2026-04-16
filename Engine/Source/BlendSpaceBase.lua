---@meta

---Interpolation data types.
---@class EBlendSpaceAxis
---@field BSA_None number @None
---@field BSA_X number @Horizontal (X) Axis
---@field BSA_Y number @Vertical (Y) Axis
---@field BSA_Max number
EBlendSpaceAxis = {}


---@class ENotifyTriggerMode
---@field AllAnimations number @All Animations
---@field HighestWeightedAnimation number @Highest Weighted Animation
---@field None number
ENotifyTriggerMode = {}


---@class FInterpolationParameter
---@field InterpolationTime number @Interpolation Time for input, when it gets input, it will use this time to interpolate to target, used for smoother interpolation.
---@field InterpolationType EFilterInterpolationType @Type of interpolation used for filtering the input value to decide how to get to target.
FInterpolationParameter = {}


---@class FBlendParameter
---@field DisplayName string
---@field Min number @Min value for this parameter.
---@field Max number @Max value for this parameter.
---@field GridNum number @The number of grid divisions for this parameter (axis).
FBlendParameter = {}


---Sample data
---@class FBlendSample
---@field SampleValue FVector
---@field RateScale number
FBlendSample = {}


---Each elements in the grid
---@class FEditorElement
FEditorElement = {}


---result of how much weight of the grid element *
---@class FGridBlendSample
---@field GridElement any
---@field BlendWeight number
FGridBlendSample = {}


---@class FPerBoneInterpolation
---@field BoneReference FBoneReference
---@field InterpolationSpeedPerSec number
FPerBoneInterpolation = {}


---Allows multiple animations to be blended between based on input parameters
---@class UBlendSpaceBase: UAnimationAsset, IInterpolationIndexProvider
---@field bRotationBlendInMeshSpace boolean @When you use blend per bone, allows rotation to blend in mesh space. This only works if this does not contain additive animation samples This is more performance intensive
---@field AnimLength number @This animation length changes based on current input (resulting in different blend time)*
---@field TargetWeightInterpolationSpeedPerSec number @Target weight interpolation. When target samples are set, how fast you'd like to get to target. Improve target blending. i.e. for locomotion, if you interpolate input, when you move from left to right rapidly, you'll interpolate through forward, but if you use target weight interpolation, you'll skip forward, but interpolate between left to right
---@field NotifyTriggerMode ENotifyTriggerMode @The current mode used by the blendspace to decide which animation notifies to fire. Valid options are: - AllAnimations - All notify events will fire - HighestWeightedAnimation - Notify events will only fire from the highest weighted animation - None - No notify events will fire from any animations
---@field PerBoneBlend ULuaArrayHelper<FPerBoneInterpolation> @Define target weight interpolation per bone. This will blend in different speed per each bone setting
---@field SampleIndexWithMarkers number @Track index to get marker data from. Samples are tested for the suitability of marker based sync during load and if we can use marker based sync we cache an index to a representative sample here
---@field SampleData ULuaArrayHelper<FBlendSample> @Sample animation data *
---@field GridSamples ULuaArrayHelper<FEditorElement> @Grid samples, indexing scheme imposed by subclass *
local UBlendSpaceBase = {}
