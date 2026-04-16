---@meta

---@class UDecalBakingParameterComponent: USceneComponent
---@field DecalSize FVector
---@field UVScaleBias FVector4
---@field TintColor FLinearColor
---@field CropUVScaleBias FVector4
---@field CropRotation number
---@field bEnableDepthCompare boolean
local UDecalBakingParameterComponent = {}

---@return FBoxSphereBounds
function UDecalBakingParameterComponent:GetDecalBounds() end
