---@meta

---A numerical entry box that allows for direct entry of the number or allows the user to click and slide the number.
---@class USpinBox: UWidget
---@field Value number @Value stored in this spin box
---@field ValueDelegate FGetFloat @A bindable delegate to allow logic to drive the value of the widget
---@field WidgetStyle FSpinBoxStyle @The Style
---@field Delta number @The amount by which to change the spin box value as the slider moves.
---@field SliderExponent number @The exponent by which to increase the delta as the mouse moves. 1 is constant (never increases the delta).
---@field Font FSlateFontInfo @Font color and opacity (overrides style)
---@field Justification ETextJustify @The justification the value text should appear as.
---@field MinDesiredWidth number @The minimum width of the spin box
---@field ClearKeyboardFocusOnCommit boolean @Whether to remove the keyboard focus from the spin box when the value is committed
---@field SelectAllTextOnCommit boolean @Whether to select the text in the spin box when the value is committed
---@field ForegroundColor FSlateColor
---@field OnValueChanged FOnSpinBoxValueChangedEvent @Called when the value is changed interactively by the user
---@field OnValueCommitted FOnSpinBoxValueCommittedEvent @Called when the value is committed. Occurs when the user presses Enter or the text box loses focus.
---@field OnBeginSliderMovement FOnSpinBoxBeginSliderMovement @Called right before the slider begins to move
---@field OnEndSliderMovement FOnSpinBoxValueChangedEvent @Called right after the slider handle is released by the user
---@field bOverride_MinValue number @Whether the optional MinValue attribute of the widget is set
---@field bOverride_MaxValue number @Whether the optional MaxValue attribute of the widget is set
---@field bOverride_MinSliderValue number @Whether the optional MinSliderValue attribute of the widget is set
---@field bOverride_MaxSliderValue number @Whether the optional MaxSliderValue attribute of the widget is set
---@field MinValue number @The minimum allowable value that can be manually entered into the spin box
---@field MaxValue number @The maximum allowable value that can be manually entered into the spin box
---@field MinSliderValue number @The minimum allowable value that can be specified using the slider
---@field MaxSliderValue number @The maximum allowable value that can be specified using the slider
local USpinBox = {}

---Get the current value of the spin box.
---@return number
function USpinBox:GetValue() end

---Set the value of the spin box.
---@param NewValue number
function USpinBox:SetValue(NewValue) end

---Get the current minimum value that can be manually set in the spin box.
---@return number
function USpinBox:GetMinValue() end

---Set the minimum value that can be manually set in the spin box.
---@param NewValue number
function USpinBox:SetMinValue(NewValue) end

---Clear the minimum value that can be manually set in the spin box.
function USpinBox:ClearMinValue() end

---Get the current maximum value that can be manually set in the spin box.
---@return number
function USpinBox:GetMaxValue() end

---Set the maximum value that can be manually set in the spin box.
---@param NewValue number
function USpinBox:SetMaxValue(NewValue) end

---Clear the maximum value that can be manually set in the spin box.
function USpinBox:ClearMaxValue() end

---Get the current minimum value that can be specified using the slider.
---@return number
function USpinBox:GetMinSliderValue() end

---Set the minimum value that can be specified using the slider.
---@param NewValue number
function USpinBox:SetMinSliderValue(NewValue) end

---Clear the minimum value that can be specified using the slider.
function USpinBox:ClearMinSliderValue() end

---Get the current maximum value that can be specified using the slider.
---@return number
function USpinBox:GetMaxSliderValue() end

---Set the maximum value that can be specified using the slider.
---@param NewValue number
function USpinBox:SetMaxSliderValue(NewValue) end

---Clear the maximum value that can be specified using the slider.
function USpinBox:ClearMaxSliderValue() end

---@param InForegroundColor FSlateColor
function USpinBox:SetForegroundColor(InForegroundColor) end
