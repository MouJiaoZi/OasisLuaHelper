---@meta

---@class ETimeStretchCurveMapping
---@field T_Original number
---@field T_TargetMin number
---@field T_TargetMax number
---@field MAX number
ETimeStretchCurveMapping = {}


---@class FTimeStretchCurveMarker
---@field Alpha number
FTimeStretchCurveMarker = {}


---@class FTimeStretchCurve
---@field SamplingRate number @Desired Sampling rate of above curve. This will be rounded off so we sample the whole curve with a fixed time step.
---@field CurveValueMinPrecision number @Minimum delta allowed between consecutive sampled segments. below this value, segments will be combined to optimize number of markers.
---@field Markers ULuaArrayHelper<FTimeStretchCurveMarker> @Optimized list of markers.
FTimeStretchCurve = {}


---@class FTimeStretchCurveInstance
---@field bHasValidData boolean
FTimeStretchCurveInstance = {}
