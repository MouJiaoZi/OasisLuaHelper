---@meta

---The Slot for the UVerticalBox, contains the widget that is flowed vertically
---@class UVerticalBoxSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field Size FSlateChildSize @How much space this slot should occupy in the direction of the panel.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UVerticalBoxSlot = {}

---@param InPadding FMargin
function UVerticalBoxSlot:SetPadding(InPadding) end

---@param InSize FSlateChildSize
function UVerticalBoxSlot:SetSize(InSize) end

---@param InHorizontalAlignment EHorizontalAlignment
function UVerticalBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UVerticalBoxSlot:SetVerticalAlignment(InVerticalAlignment) end
