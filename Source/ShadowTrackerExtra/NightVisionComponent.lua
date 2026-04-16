---@meta

---@class UNightVisionComponent: UStaticMeshComponent
---@field TPPRelativeTransform FTransform
---@field FPPRelativeTransform FTransform
---@field ScopeRelativeTransform FTransform
---@field AutoSizeRelativeTransform FTransform
---@field AutoSizeScaleRate FVector
local UNightVisionComponent = {}

---@param _IsActivate boolean
function UNightVisionComponent:SetActivate(_IsActivate) end
