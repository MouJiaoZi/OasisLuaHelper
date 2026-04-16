---@meta

---@class FRuntimeVectorCurve
FRuntimeVectorCurve = {}


---@class UCurveVector: UCurveBase
local UCurveVector = {}

---Evaluate this float curve at the specified time
---@param InTime number
---@return FVector
function UCurveVector:GetVectorValue(InTime) end
