---@meta

---The Slot for the USizeBoxSlot, contains the widget displayed in a button's single slot
---@class USizeBoxSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local USizeBoxSlot = {}

---@param InPadding FMargin
function USizeBoxSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function USizeBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function USizeBoxSlot:SetVerticalAlignment(InVerticalAlignment) end
