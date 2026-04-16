---@meta

---@class UTransformWidget: UContentWidget
---@field PivotTopLeft FVector2D
---@field PivotTopRight FVector2D
---@field PivotBottomLeft FVector2D
---@field PivotBottomRight FVector2D
local UTransformWidget = {}

---@param InPivot FVector2D
function UTransformWidget:SetPivotTopLeft(InPivot) end

---@param InPivot FVector2D
function UTransformWidget:SetPivotTopRight(InPivot) end

---@param InPivot FVector2D
function UTransformWidget:SetPivotBottomLeft(InPivot) end

---@param InPivot FVector2D
function UTransformWidget:SetPivotBottomRight(InPivot) end
