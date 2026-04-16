---@meta

---The Slot for the UScaleBoxSlot, contains the widget displayed in a button's single slot
---@class UScaleBoxSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UScaleBoxSlot = {}

---@param InPadding FMargin
function UScaleBoxSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UScaleBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UScaleBoxSlot:SetVerticalAlignment(InVerticalAlignment) end
