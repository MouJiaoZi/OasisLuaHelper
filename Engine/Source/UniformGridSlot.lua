---@meta

---A slot for UUniformGridPanel, these slots all share the same size as the largest slot in the grid.
---@class UUniformGridSlot: UPanelSlot
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
---@field Row number @The row index of the cell this slot is in
---@field Column number @The column index of the cell this slot is in
local UUniformGridSlot = {}

---Sets the row index of the slot, this determines what cell the slot is in the panel
---@param InRow number
function UUniformGridSlot:SetRow(InRow) end

---Sets the column index of the slot, this determines what cell the slot is in the panel
---@param InColumn number
function UUniformGridSlot:SetColumn(InColumn) end

---@param InHorizontalAlignment EHorizontalAlignment
function UUniformGridSlot:SetHorizontalAlignment(InHorizontalAlignment) end

---@param InVerticalAlignment EVerticalAlignment
function UUniformGridSlot:SetVerticalAlignment(InVerticalAlignment) end
