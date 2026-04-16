---@meta

---The base class for all UMG panel widgets.  Panel widgets layout a collection of child widgets.
---@class UPanelWidget: UWidget
---@field Slots ULuaArrayHelper<UPanelSlot> @The slots in the widget holding the child widgets of this panel.
---@field CachedContents_ForGC ULuaArrayHelper<UWidget>
local UPanelWidget = {}

---Gets number of child widgets in the container.
---@return number
function UPanelWidget:GetChildrenCount() end

---Gets the index of a specific child widget
---@param Content UWidget
---@return number
function UPanelWidget:GetChildIndex(Content) end

---@param Content UWidget
---@return boolean
function UPanelWidget:HasChild(Content) end

---Removes a child by it's index.
---@param Index number
---@return boolean
function UPanelWidget:RemoveChildAt(Index) end

---Moves the child widget from its current index to the new index provided, available in game.
---@param Index number
---@param Child UWidget
function UPanelWidget:ShiftChildToIndex(Index, Child) end

---Removes a specific widget from the container.
---@param Content UWidget
---@return boolean
function UPanelWidget:RemoveChild(Content) end

---@return boolean
function UPanelWidget:HasAnyChildren() end

---Remove all child widgets from the panel widget.
function UPanelWidget:ClearChildren() end
