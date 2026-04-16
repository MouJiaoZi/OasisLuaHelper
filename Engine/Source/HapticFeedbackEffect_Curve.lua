---@meta

---@class FHapticFeedbackDetails_Curve
---@field Combine FRuntimeFloatCurveHaptic @The amplitude to vibrate the haptic device at.  Amplitudes are normalized over the range [0.0, 1.0], with 1.0 being the max setting of the device
FHapticFeedbackDetails_Curve = {}


---@class UHapticFeedbackEffect_Curve: UHapticFeedbackEffect_Base
---@field HapticDetails FHapticFeedbackDetails_Curve
---@field AndroidTesting FJsonHaptic
---@field JsonValue string
local UHapticFeedbackEffect_Curve = {}
