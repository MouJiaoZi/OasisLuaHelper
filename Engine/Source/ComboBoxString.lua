---@meta

---The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.
---@class UComboBoxString: UWidget
---@field DefaultOptions ULuaArrayHelper<string> @The default list of items to be displayed on the combobox.
---@field SelectedOption string @The item in the combobox to select by default
---@field WidgetStyle FComboBoxStyle @The style.
---@field ItemStyle FTableRowStyle @The item row style.
---@field ScrollBarStyle FScrollBarStyle @The scroll bar style.
---@field ContentPadding FMargin
---@field MaxListHeight number @The max height of the combobox list that opens
---@field HasDownArrow boolean @When false, the down arrow is not generated and it is up to the API consumer to make their own visual hint that this is a drop down.
---@field EnableGamepadNavigationMode boolean @When false, directional keys will change the selection. When true, ComboBox must be activated and will only capture arrow input while activated.
---@field Font FSlateFontInfo @The default font to use in the combobox, only applies if you're not implementing OnGenerateWidgetEvent to factory each new entry.
---@field ForegroundColor FSlateColor @The foreground color to pass through the hierarchy.
---@field bIsFocusable boolean
---@field bForceNotify boolean
---@field OnGenerateWidgetEvent FGenerateWidgetForString @Called when the widget is needed for the item.
---@field OnGenerateSelectWidgetEvent FGenerateWidgetForString
---@field OnSelectionChanged FOnSelectionChangedEvent @Called when a new item is selected in the combobox.
---@field OnOpening FOnOpeningEvent @Called when the combobox is opening
---@field OnClosing FOnClosingEvent @Called when the combobox is closing
local UComboBoxString = {}

---@param Option string
function UComboBoxString:AddOption(Option) end

---@param Option string
---@return boolean
function UComboBoxString:RemoveOption(Option) end

---@param Option string
---@return number
function UComboBoxString:FindOptionIndex(Option) end

---@param Index number
---@return string
function UComboBoxString:GetOptionAtIndex(Index) end

function UComboBoxString:ClearOptions() end

function UComboBoxString:ClearSelection() end

---Refreshes the list of options.  If you added new ones, and want to update the list even if it's currently being displayed use this.
function UComboBoxString:RefreshOptions() end

---@param Option string
function UComboBoxString:SetSelectedOption(Option) end

---@return string
function UComboBoxString:GetSelectedOption() end

---@return number
function UComboBoxString:GetOptionCount() end
