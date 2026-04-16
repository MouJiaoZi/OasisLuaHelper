---@meta

---The Slot for the UStackBox, contains the widget that is flowed vertically or horizontally.
---@class UStackBoxSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field Size FSlateChildSize @How much space this slot should occupy in the direction of the panel.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UStackBoxSlot = {}

---@return FMargin
function UStackBoxSlot:GetPadding() end

---@param InPadding FMargin
function UStackBoxSlot:SetPadding(InPadding) end

---@return FSlateChildSize
function UStackBoxSlot:GetSize() end

---@param InSize FSlateChildSize
function UStackBoxSlot:SetSize(InSize) end

---@return EHorizontalAlignment
function UStackBoxSlot:GetHorizontalAlignment() end

---@param InHorizontalAlignment EHorizontalAlignment
function UStackBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@return EVerticalAlignment
function UStackBoxSlot:GetVerticalAlignment() end

---@param InVerticalAlignment EVerticalAlignment
function UStackBoxSlot:SetVerticalAlignment(InVerticalAlignment) end
