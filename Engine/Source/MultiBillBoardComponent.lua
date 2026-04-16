---@meta

---@class FBillboardData
---@field Position FVector
---@field UVs ULuaArrayHelper<FVector2D>
FBillboardData = {}


---@class FBillBoardMaterialSpriteElement
---@field bSizeIsInScreenSpace number @Whether the size is defined in screen-space or world-space.
---@field BaseSizeX number @The base width of the sprite, multiplied with the DistanceToSizeCurve.
---@field BaseSizeY number @The base height of the sprite, multiplied with the DistanceToSizeCurve.
FBillBoardMaterialSpriteElement = {}


---@class UMultiBillBoardComponent: UPrimitiveComponent
---@field Elements ULuaArrayHelper<FBillBoardMaterialSpriteElement> @Current array of material billboard elements
---@field BillboardDatas ULuaArrayHelper<FBillboardData>
local UMultiBillBoardComponent = {}

---Set all elements of this material billboard component
---@param NewElements ULuaArrayHelper<FBillBoardMaterialSpriteElement>
function UMultiBillBoardComponent:SetElements(NewElements) end

---Adds an element to the sprite.
---@param Material UMaterialInterface
---@param DistanceToOpacityCurve UCurveFloat
---@param bSizeIsInScreenSpace boolean
---@param BaseSizeX number
---@param BaseSizeY number
---@param DistanceToSizeCurve UCurveFloat
function UMultiBillBoardComponent:AddElement(Material, DistanceToOpacityCurve, bSizeIsInScreenSpace, BaseSizeX, BaseSizeY, DistanceToSizeCurve) end

---@param NewLocation FVector
---@param UV0 FVector2D
---@param UV1 FVector2D
---@return number
function UMultiBillBoardComponent:K2_AddBillBoard(NewLocation, UV0, UV1) end

---@param ID number
function UMultiBillBoardComponent:RemoveBillboard(ID) end

function UMultiBillBoardComponent:ClearAllBillBoards() end

---@param ID number
---@param UV0 FVector2D
---@param UV1 FVector2D
function UMultiBillBoardComponent:SetBillboardUV(ID, UV0, UV1) end
