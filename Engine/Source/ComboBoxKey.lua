---@meta

---The combobox allows you to display a list of options to the user in a dropdown menu for them to select one. Use OnGenerateConentWidgetEvent to return a custom built widget.
---@class UComboBoxKey: UWidget
---@field WidgetStyle FComboBoxStyle @The combobox style.
---@field ItemStyle FTableRowStyle @The item row style.
---@field ScrollBarStyle FScrollBarStyle @The scroll bar style.
---@field ForegroundColor FSlateColor @The foreground color to pass through the hierarchy.
---@field ContentPadding FMargin
---@field MaxListHeight number @The max height of the combobox list that opens
---@field bHasDownArrow boolean @When false, the down arrow is not generated and it is up to the API consumer to make their own visual hint that this is a drop down.
---@field bEnableGamepadNavigationMode boolean @When false, directional keys will change the selection. When true, ComboBox must be activated and will only capture arrow input while activated.
---@field bIsFocusable boolean @When true, allows the combo box to receive keyboard focus
---@field OnGenerateContentWidget FGenerateWidgetEvent @Called when the widget is needed for the content.
---@field OnGenerateItemWidget FGenerateWidgetEvent @Called when the widget is needed for the item.
---@field OnSelectionChanged FOnSelectionChangedEvent @Called when a new item is selected in the combobox.
---@field OnOpening FOnOpeningEvent @Called when the combobox is opening
local UComboBoxKey = {}

---Add an element to the option list.
---@param Option string
function UComboBoxKey:AddOption(Option) end

---Remove an element to the option list.
---@param Option string
---@return boolean
function UComboBoxKey:RemoveOption(Option) end

---Remove all the elements of the option list.
function UComboBoxKey:ClearOptions() end

---Clear the current selection.
function UComboBoxKey:ClearSelection() end

---Set the current selected option.
---@param Option string
function UComboBoxKey:SetSelectedOption(Option) end

---Get the current selected option
---@return string
function UComboBoxKey:GetSelectedOption() end

---Is the combobox menu opened.
---@return boolean
function UComboBoxKey:IsOpen() end

---Set the padding for content.
---@param InPadding FMargin
function UComboBoxKey:SetContentPadding(InPadding) end

---Get the padding for content.
---@return FMargin
function UComboBoxKey:GetContentPadding() end

---Is the combobox navigated by gamepad.
---@return boolean
function UComboBoxKey:IsEnableGamepadNavigationMode() end

---Set whether the combobox is navigated by gamepad.
---@param InEnableGamepadNavigationMode boolean
function UComboBoxKey:SetEnableGamepadNavigationMode(InEnableGamepadNavigationMode) end

---Is the combobox arrow showing.
---@return boolean
function UComboBoxKey:IsHasDownArrow() end

---Set whether the combobox arrow is showing.
---@param InHasDownArrow boolean
function UComboBoxKey:SetHasDownArrow(InHasDownArrow) end

---Get the maximum height of the combobox list.
---@return number
function UComboBoxKey:GetMaxListHeight() end

---Set the maximum height of the combobox list.
---@param InMaxHeight number
function UComboBoxKey:SetMaxListHeight(InMaxHeight) end

---Set the style of the combobox.
---@param InWidgetStyle FComboBoxStyle
function UComboBoxKey:SetWidgetStyle(InWidgetStyle) end

---Set the style of the items.
---@param InItemStyle FTableRowStyle
function UComboBoxKey:SetItemStyle(InItemStyle) end

---Is the combobox focusable.
---@return boolean
function UComboBoxKey:IsFocusable() end

---Get the foreground color of the button.
---@return FSlateColor
function UComboBoxKey:GetForegroundColor() end
