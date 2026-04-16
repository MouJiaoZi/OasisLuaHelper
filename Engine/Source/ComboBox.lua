---@meta

---The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.
---@class UComboBox: UWidget
---@field Items ULuaArrayHelper<UObject> @The list of items to be displayed on the combobox.
---@field OnGenerateWidgetEvent FGenerateWidgetForObject @Called when the widget is needed for the item.
---@field bIsFocusable boolean
local UComboBox = {}
