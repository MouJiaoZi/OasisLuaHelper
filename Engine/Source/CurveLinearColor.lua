---@meta

---@class FRuntimeCurveLinearColor
FRuntimeCurveLinearColor = {}


---@class UCurveLinearColor: UCurveBase
local UCurveLinearColor = {}

---@param InTime number
---@return FLinearColor
function UCurveLinearColor:GetLinearColorValue(InTime) end

---@param InTime number
---@return FQuat
function UCurveLinearColor:GetRotationValue(InTime) end
