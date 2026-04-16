---@meta

---A slot for UGridPanel, these slots all share the same size as the largest slot in the grid.
---@class UGridSlot: UPanelSlot
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
---@field Row number @The row index of the cell this slot is in
---@field RowSpan number
---@field Column number @The column index of the cell this slot is in
---@field ColumnSpan number
---@field Layer number @Positive values offset this cell to be hit-tested and drawn on top of others. Default is 0; i.e. no offset.
---@field Nudge FVector2D @Offset this slot's content by some amount; positive values offset to lower right
local UGridSlot = {}

---@param InPadding FMargin
function UGridSlot:SetPadding(InPadding) end

---Sets the row index of the slot, this determines what cell the slot is in the panel
---@param InRow number
function UGridSlot:SetRow(InRow) end

---How many rows this this slot spans over
---@param InRowSpan number
function UGridSlot:SetRowSpan(InRowSpan) end

---Sets the column index of the slot, this determines what cell the slot is in the panel
---@param InColumn number
function UGridSlot:SetColumn(InColumn) end

---How many columns this slot spans over
---@param InColumnSpan number
function UGridSlot:SetColumnSpan(InColumnSpan) end

---Sets positive values offset this cell to be hit-tested and drawn on top of others.
---@param InLayer number
function UGridSlot:SetLayer(InLayer) end

---@param InHorizontalAlignment EHorizontalAlignment
function UGridSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UGridSlot:SetVerticalAlignment(InVerticalAlignment) end
