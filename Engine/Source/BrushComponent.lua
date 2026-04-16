---@meta

---A brush component defines a shape that can be modified within the editor. They are used both as part of BSP building, and for volumes.
---@class UBrushComponent: UPrimitiveComponent
---@field PrePivot_DEPRECATED FVector @Local space translation
local UBrushComponent = {}

---@param Mesh UStaticMesh
function UBrushComponent:SetMeshCollisionProvider(Mesh) end
