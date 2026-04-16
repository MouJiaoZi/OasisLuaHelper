---@meta

---Method of interpolation between this key and the next.
---@class ERichCurveInterpMode
---@field RCIM_Linear number @Linear
---@field RCIM_Constant number @Constant
---@field RCIM_Cubic number @Cubic
---@field RCIM_None number @None
ERichCurveInterpMode = {}


---If using RCIM_Cubic, this enum describes how the tangents should be controlled in editor.
---@class ERichCurveTangentMode
---@field RCTM_Auto number @Auto
---@field RCTM_User number @User
---@field RCTM_Break number @Break
---@field RCTM_None number @None
ERichCurveTangentMode = {}


---Enumerates tangent weight modes.
---@class ERichCurveTangentWeightMode
---@field RCTWM_WeightedNone number @None
---@field RCTWM_WeightedArrive number @Arrive
---@field RCTWM_WeightedLeave number @Leave
---@field RCTWM_WeightedBoth number @Both
ERichCurveTangentWeightMode = {}


---Enumerates extrapolation options.
---@class ERichCurveExtrapolation
---@field RCCE_Cycle number @Cycle
---@field RCCE_CycleWithOffset number @CycleWithOffset
---@field RCCE_Oscillate number @Oscillate
---@field RCCE_Linear number @Linear
---@field RCCE_Constant number @Constant
---@field RCCE_None number @None
ERichCurveExtrapolation = {}


---One key in a rich, editable float curve
---@class FRichCurveKey
---@field InterpMode ERichCurveInterpMode @Interpolation mode between this key and the next
---@field TangentMode ERichCurveTangentMode @Mode for tangents at this key
---@field TangentWeightMode ERichCurveTangentWeightMode @If either tangent at this key is 'weighted'
---@field Time number @Time at this key
---@field Value number @Value at this key
---@field ArriveTangent number @If RCIM_Cubic, the arriving tangent at this key
---@field ArriveTangentWeight number @If RCTWM_WeightedArrive or RCTWM_WeightedBoth, the weight of the left tangent
---@field LeaveTangent number @If RCIM_Cubic, the leaving tangent at this key
---@field LeaveTangentWeight number @If RCTWM_WeightedLeave or RCTWM_WeightedBoth, the weight of the right tangent
FRichCurveKey = {}


---A rich, editable float curve
---@class FRichCurve
---@field PreInfinityExtrap ERichCurveExtrapolation @Pre-infinity extrapolation state
---@field PostInfinityExtrap ERichCurveExtrapolation @Post-infinity extrapolation state
---@field DefaultValue number @Default value
---@field Keys ULuaArrayHelper<FRichCurveKey> @Sorted array of keys
FRichCurve = {}
