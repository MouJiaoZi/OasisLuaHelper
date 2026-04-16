---@meta

---Allows thousands of items to be displayed in a list.  Generates widgets dynamically for each item.
---@class UListView: UTableViewBase
---@field ItemHeight number @The height of each widget
---@field Items ULuaArrayHelper<UObject> @The list of items to generate widgets for
---@field SelectionMode ESelectionMode @The selection method for the list
---@field OnGenerateRowEvent FOnGenerateRowUObject @Called when a widget needs to be generated
local UListView = {}
