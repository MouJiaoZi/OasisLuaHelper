---@meta

---The Slot for the UButtonSlot, contains the widget displayed in a button's single slot
---@class UButtonSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UButtonSlot = {}

---@param InPadding FMargin
function UButtonSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UButtonSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UButtonSlot:SetVerticalAlignment(InVerticalAlignment) end
