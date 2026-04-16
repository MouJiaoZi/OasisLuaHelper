---@meta

---Allows thousands of items to be displayed in a list.  Generates widgets dynamically for each item.
---@class UInstancedStructListView: UTableViewBase
---@field ItemHeight number @The height of each widget
---@field Padding FMargin @The	Padding of Items
---@field Style FTableRowStyle @The Style of the Row
---@field Items ULuaArrayHelper<FLiteInstancedStruct> @The list of items to generate widgets for
---@field SelectionMode ESelectionMode @The selection method for the list
---@field ScrollbarVisibility ESlateVisibility
---@field ScrollbarVisibilityDelegate FGetSlateVisibility @Called to determine the visibility of the scrollbar
---@field OnGenerateRowEvent FOnGenerateRowFLiteInstancedStruct @Called when a widget needs to be generated
---@field OnSelectionChangedEvent FOnInstancedStructSelectionChanged @Called when the selection changes
local UInstancedStructListView = {}

function UInstancedStructListView:RequestListRefresh() end

---@param InItems ULuaArrayHelper<FLiteInstancedStruct>
function UInstancedStructListView:SetItems(InItems) end

---@param InItem FLiteInstancedStruct
function UInstancedStructListView:AddItem(InItem) end

---@param InItem FLiteInstancedStruct
function UInstancedStructListView:RemoveItem(InItem) end

---@param Index number
function UInstancedStructListView:RemoveItemAt(Index) end

function UInstancedStructListView:ClearItems() end

---@param InItem FLiteInstancedStruct
---@param Index number
function UInstancedStructListView:InsertItem(InItem, Index) end

---@param InItem FLiteInstancedStruct
function UInstancedStructListView:SetSelection(InItem) end
