---@meta

---The Slot for the UScrollBox, contains the widget that are scrollable
---@class UScrollBoxSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
local UScrollBoxSlot = {}

---@param InPadding FMargin
function UScrollBoxSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UScrollBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end
