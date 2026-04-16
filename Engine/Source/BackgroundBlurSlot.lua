---@meta

---The Slot for the UBackgroundBlurSlot, contains the widget displayed in a BackgroundBlur's single slot
---@class UBackgroundBlurSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UBackgroundBlurSlot = {}

---@param InPadding FMargin
function UBackgroundBlurSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UBackgroundBlurSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UBackgroundBlurSlot:SetVerticalAlignment(InVerticalAlignment) end
