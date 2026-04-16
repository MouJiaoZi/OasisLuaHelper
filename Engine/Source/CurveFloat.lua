---@meta

---@class FRuntimeFloatCurve
---@field EditorCurveData FRichCurve
FRuntimeFloatCurve = {}


---@class UCurveFloat: UCurveBase
---@field FloatCurve FRichCurve @Keyframe data
---@field bIsEventCurve boolean @Flag to represent event curve
local UCurveFloat = {}

---Evaluate this float curve at the specified time
---@param InTime number
---@return number
function UCurveFloat:GetFloatValue(InTime) end
