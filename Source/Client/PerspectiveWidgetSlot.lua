---@meta

---@class UPerspectiveWidgetSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UPerspectiveWidgetSlot = {}

---@param InPadding FMargin
function UPerspectiveWidgetSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UPerspectiveWidgetSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UPerspectiveWidgetSlot:SetVerticalAlignment(InVerticalAlignment) end
