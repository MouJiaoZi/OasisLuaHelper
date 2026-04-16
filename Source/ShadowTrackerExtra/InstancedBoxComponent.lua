---@meta

---@class FInstancedBoxInstanceData
---@field Transform FMatrix
---@field BoxExtent FVector
FInstancedBoxInstanceData = {}


---@class UInstancedBoxComponent: UBoxComponent
---@field PerInstanceBoxData ULuaArrayHelper<FInstancedBoxInstanceData>
local UInstancedBoxComponent = {}

---Update the transform for the instance specified.
---@param InstanceIndex number
---@param NewInstanceTransform FTransform
---@param bWorldSpace boolean
---@param bMarkRenderStateDirty boolean
---@param bTeleport boolean
---@return boolean
function UInstancedBoxComponent:UpdateInstanceTransform(InstanceIndex, NewInstanceTransform, bWorldSpace, bMarkRenderStateDirty, bTeleport) end

---Get the number of instances in this component.
---@return number
function UInstancedBoxComponent:GetInstanceCount() end
