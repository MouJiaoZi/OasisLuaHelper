---@meta

---@class UHorizontalBoxSlot: UPanelSlot
---@field Padding FMargin @The amount of padding between the slots parent and the content.
---@field Size FSlateChildSize @How much space this slot should occupy in the direction of the panel.
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
local UHorizontalBoxSlot = {}

---@param InPadding FMargin
function UHorizontalBoxSlot:SetPadding(InPadding) end

---@param InSize FSlateChildSize
function UHorizontalBoxSlot:SetSize(InSize) end

---@param InHorizontalAlignment EHorizontalAlignment
function UHorizontalBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UHorizontalBoxSlot:SetVerticalAlignment(InVerticalAlignment) end
