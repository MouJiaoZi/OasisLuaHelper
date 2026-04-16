---@meta

---Function to use for each target falloff
---@class ERBFFunctionType
---@field Gaussian number
---@field Exponential number
---@field Linear number
---@field Cubic number
---@field Quintic number
ERBFFunctionType = {}


---Method for determining distance from input to targets
---@class ERBFDistanceMethod
---@field Euclidean number @Standard n-dimensional distance measure
---@field Quaternion number @Treat inputs as quaternion
---@field SwingAngle number @Treat inputs as quaternion, and find distance between rotated TwistAxis direction
ERBFDistanceMethod = {}


---Struct storing a particular entry within the RBF
---@class FRBFEntry
---@field Values ULuaArrayHelper<number> @Set of values for this target, size must be TargetDimensions
FRBFEntry = {}


---Data about a particular target in the RBF, including scaling factor
---@class FRBFTarget
---@field ScaleFactor number @How large to scale
---@field bApplyCustomCurve boolean @Whether we want to apply an additional custom curve when activating this target
---@field CustomCurve FRichCurve @Custom curve to apply to activation of this target, if bApplyCustomCurve is true
FRBFTarget = {}


---Parameters used by RBF solver
---@class FRBFParams
---@field TargetDimensions number @How many dimensions input data has
---@field Radius number @Default radius for each target, scaled by per-Target ScaleFactor
---@field Function ERBFFunctionType
---@field DistanceMethod ERBFDistanceMethod
---@field TwistAxis EBoneAxis @Axis to use when DistanceMethod is SwingAngle
---@field WeightThreshold number @Weight below which we shouldn't bother returning a contribution from a target
FRBFParams = {}
