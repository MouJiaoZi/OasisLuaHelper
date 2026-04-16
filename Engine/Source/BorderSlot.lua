---@meta

---The Slot for the UBorderSlot, contains the widget displayed in a border's single slot
---@class UBorderSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UBorderSlot = {}

---@param InPadding FMargin
function UBorderSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UBorderSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UBorderSlot:SetVerticalAlignment(InVerticalAlignment) end
