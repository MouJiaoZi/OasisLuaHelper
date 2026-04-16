---@meta

---Slot for the UOverlay panel.  Allows content to be hover above other content.
---@class UOverlaySlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UOverlaySlot = {}

---@param InPadding FMargin
function UOverlaySlot:SetPadding(InPadding) end

---@param InHorizontalAlignment EHorizontalAlignment
function UOverlaySlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UOverlaySlot:SetVerticalAlignment(InVerticalAlignment) end
