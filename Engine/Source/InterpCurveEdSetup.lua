---@meta

---@class FCurveEdEntry
---@field CurveColor FColor
---@field CurveName string
---@field bHideCurve number
---@field bColorCurve number
---@field bFloatingPointColorCurve number
---@field bClamp number
---@field ClampLow number
---@field ClampHigh number
FCurveEdEntry = {}


---@class FCurveEdTab
---@field TabName string
---@field Curves ULuaArrayHelper<FCurveEdEntry>
---@field ViewStartInput number
---@field ViewEndInput number
---@field ViewStartOutput number
---@field ViewEndOutput number
FCurveEdTab = {}


---@class UInterpCurveEdSetup: UObject
---@field Tabs ULuaArrayHelper<FCurveEdTab>
---@field ActiveTab number
local UInterpCurveEdSetup = {}
