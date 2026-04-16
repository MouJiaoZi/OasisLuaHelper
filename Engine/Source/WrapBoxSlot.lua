---@meta

---The Slot for the UWrapBox, contains the widget that is flowed vertically
---@class UWrapBoxSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field bFillEmptySpace boolean @Should this slot fill the remaining space on the line?
---@field bForceNewLine boolean @Force this slot display to a new line
---@field FillSpanWhenLessThan number @If the total available space in the wrap panel drops below this threshold, this slot will attempt to fill an entire line. NOTE: A value of 0, denotes no filling will occur.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
local UWrapBoxSlot = {}

---@param InPadding FMargin
function UWrapBoxSlot:SetPadding(InPadding) end

---@param InbFillEmptySpace boolean
function UWrapBoxSlot:SetFillEmptySpace(InbFillEmptySpace) end

---@param InFillSpanWhenLessThan number
function UWrapBoxSlot:SetFillSpanWhenLessThan(InFillSpanWhenLessThan) end

---@param bInForceNewLine boolean
function UWrapBoxSlot:SetForceNewLine(bInForceNewLine) end

---@param InHorizontalAlignment EHorizontalAlignment
function UWrapBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UWrapBoxSlot:SetVerticalAlignment(InVerticalAlignment) end
