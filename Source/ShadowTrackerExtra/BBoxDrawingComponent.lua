---@meta

---@class UBBoxDrawingComponent: UPrimitiveComponent
---@field BoundingBoxColor FLinearColor
local UBBoxDrawingComponent = {}

---@param NewColor FLinearColor
---@param bMarkRenderStateDirty boolean
function UBBoxDrawingComponent:UpdateBoundingBoxColor(NewColor, bMarkRenderStateDirty) end
