---@meta

---The Slot for the UWindowTitleBarArea
---@class UWindowTitleBarAreaSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UWindowTitleBarAreaSlot = {}

---@param InPadding FMargin
function UWindowTitleBarAreaSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UWindowTitleBarAreaSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UWindowTitleBarAreaSlot:SetVerticalAlignment(InVerticalAlignment) end
