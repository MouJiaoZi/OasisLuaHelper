---@meta

---The Slot for the UWidgetSwitcher, contains the widget that is flowed vertically
---@class UWidgetSwitcherSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UWidgetSwitcherSlot = {}

---@param InPadding FMargin
function UWidgetSwitcherSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UWidgetSwitcherSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UWidgetSwitcherSlot:SetVerticalAlignment(InVerticalAlignment) end
