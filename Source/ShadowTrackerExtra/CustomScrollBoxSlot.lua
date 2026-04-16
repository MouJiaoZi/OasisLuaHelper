---@meta

---@class UCustomScrollBoxSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
local UCustomScrollBoxSlot = {}

---@param InPadding FMargin
function UCustomScrollBoxSlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UCustomScrollBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end
