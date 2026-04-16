---@meta

---@class UPerspectiveWidget: UContentWidget
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
---@field Padding FMargin
---@field Brush FSlateBrush
---@field RealBrush FSlateBrush
---@field RealBrushDelegate FGetSlateBrush
---@field DesiredSizeScale FVector2D
---@field PivotTopLeft FVector2D
---@field PivotTopRight FVector2D
---@field PivotBottomLeft FVector2D
---@field PivotBottomRight FVector2D
---@field PerspectiveTranslation FVector2D
---@field PerspectiveRotateAngle number
---@field MatParameterScaleX string
---@field MatParameterScaleY string
---@field MatParameterShearX string
---@field MatParameterShearY string
---@field MatParameterPerspectiveX string
---@field MatParameterPerspectiveY string
---@field MatParameterShiftX string
---@field MatParameterShiftY string
---@field MatParameterTranslation string
---@field MatParameterRotateAngle string
local UPerspectiveWidget = {}

---@param InPadding FMargin
function UPerspectiveWidget:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UPerspectiveWidget:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UPerspectiveWidget:SetVerticalAlignment(InVerticalAlignment) end

---@param InBrush FSlateBrush
function UPerspectiveWidget:SetBrush(InBrush) end

---@param Texture UTexture2D
---@param bMatchSize boolean
function UPerspectiveWidget:SetBrushFromTexture(Texture, bMatchSize) end

---@param Material UMaterialInterface
function UPerspectiveWidget:SetBrushFromMaterial(Material) end

---@param InScale FVector2D
function UPerspectiveWidget:SetDesiredSizeScale(InScale) end

---@param InPivot FVector2D
function UPerspectiveWidget:SetPivotTopLeft(InPivot) end

---@param InPivot FVector2D
function UPerspectiveWidget:SetPivotTopRight(InPivot) end

---@param InPivot FVector2D
function UPerspectiveWidget:SetPivotBottomLeft(InPivot) end

---@param InPivot FVector2D
function UPerspectiveWidget:SetPivotBottomRight(InPivot) end

---@param InTranslation FVector2D
function UPerspectiveWidget:SetPerspectiveTranslation(InTranslation) end

---@param InAngle number
function UPerspectiveWidget:SetPerspectiveRotateAngle(InAngle) end

function UPerspectiveWidget:UpdatePerspectiveTrans() end
