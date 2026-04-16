---@meta

---A border is a container widget that can contain one child widget, providing an opportunity to surround it with a background image and adjustable padding. * Single Child * Image
---@class UBorder: UContentWidget
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the content horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the content vertically.
---@field bShowEffectWhenDisabled number @Whether or not to show the disabled effect when this border is disabled
---@field ContentColorAndOpacity FLinearColor @Color and opacity multiplier of content in the border
---@field ContentColorAndOpacityDelegate FGetLinearColor @A bindable delegate for the ContentColorAndOpacity.
---@field ResetBlendColor boolean
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field Background FSlateBrush @Brush to drag as the background
---@field BackgroundDelegate FGetSlateBrush @A bindable delegate for the Brush.
---@field BrushColor FLinearColor @Color and opacity of the actual border image
---@field BrushColorDelegate FGetLinearColor @A bindable delegate for the BrushColor.
---@field DesiredSizeScale FVector2D @Scales the computed desired size of this border and its contents. Useful for making things that slide open without having to hard-code their size. Note: if the parent widget is set up to ignore this widget's desired size, then changing this value will have no effect.
---@field OnMouseButtonDownEvent FOnPointerEvent
---@field OnMouseButtonUpEvent FOnPointerEvent
---@field OnMouseMoveEvent FOnPointerEvent
---@field OnMouseDoubleClickEvent FOnPointerEvent
local UBorder = {}

---@param InContentColorAndOpacity FLinearColor
function UBorder:SetContentColorAndOpacity(InContentColorAndOpacity) end

---@param bResetBlendColor boolean
function UBorder:SetResetBlendColor(bResetBlendColor) end

---@param InPadding FMargin
function UBorder:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UBorder:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UBorder:SetVerticalAlignment(InVerticalAlignment) end

---@param InBrushColor FLinearColor
function UBorder:SetBrushColor(InBrushColor) end

---@param InBrush FSlateBrush
function UBorder:SetBrush(InBrush) end

---@param Asset USlateBrushAsset
function UBorder:SetBrushFromAsset(Asset) end

---@param Texture UTexture2D
function UBorder:SetBrushFromTexture(Texture) end

---@param Material UMaterialInterface
function UBorder:SetBrushFromMaterial(Material) end

---Sets the DesireSizeScale of this border.
---@param InScale FVector2D
function UBorder:SetDesiredSizeScale(InScale) end
