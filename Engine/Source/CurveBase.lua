---@meta

---Defines a curve of interpolated points to evaluate over a given range
---@class UCurveBase: UObject, FCurveOwnerInterface
local UCurveBase = {}

---Get the time range across all curves
---@param MinTime number
---@param MaxTime number
function UCurveBase:GetTimeRange(MinTime, MaxTime) end

---Get the value range across all curves
---@param MinValue number
---@param MaxValue number
function UCurveBase:GetValueRange(MinValue, MaxValue) end
