---@meta

---@class FMaterialSpriteElement
---@field bSizeIsInScreenSpace number @Whether the size is defined in screen-space or world-space.
---@field BaseSizeX number @The base width of the sprite, multiplied with the DistanceToSizeCurve.
---@field BaseSizeY number @The base height of the sprite, multiplied with the DistanceToSizeCurve.
FMaterialSpriteElement = {}


---A 2d material that will be rendered always facing the camera.
---@class UMaterialBillboardComponent: UPrimitiveComponent
---@field Elements ULuaArrayHelper<FMaterialSpriteElement> @Current array of material billboard elements
local UMaterialBillboardComponent = {}

---Set all elements of this material billboard component
---@param NewElements ULuaArrayHelper<FMaterialSpriteElement>
function UMaterialBillboardComponent:SetElements(NewElements) end

---Adds an element to the sprite.
---@param Material UMaterialInterface
---@param DistanceToOpacityCurve UCurveFloat
---@param bSizeIsInScreenSpace boolean
---@param BaseSizeX number
---@param BaseSizeY number
---@param DistanceToSizeCurve UCurveFloat
function UMaterialBillboardComponent:AddElement(Material, DistanceToOpacityCurve, bSizeIsInScreenSpace, BaseSizeX, BaseSizeY, DistanceToSizeCurve) end
