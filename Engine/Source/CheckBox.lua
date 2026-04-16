---@meta

---@class FOnCheckBoxComponentStateChanged : ULuaMulticastDelegate
FOnCheckBoxComponentStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsChecked: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCheckBoxComponentStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsChecked boolean
function FOnCheckBoxComponentStateChanged:Broadcast(bIsChecked) end


---The checkbox widget allows you to display a toggled state of 'unchecked', 'checked' and 'indeterminable.  You can use the checkbox for a classic checkbox, or as a toggle button, or as radio buttons. * Single Child * Toggle
---@class UCheckBox: UContentWidget
---@field CheckedState ECheckBoxState @Whether the check box is currently in a checked state
---@field CheckedStateDelegate FGetCheckBoxState @A bindable delegate for the IsChecked.
---@field WidgetStyle FCheckBoxStyle @The checkbox bar style
---@field HorizontalAlignment EHorizontalAlignment @How the content of the toggle button should align within the given space
---@field Padding_DEPRECATED FMargin @Spacing between the check box image and its content
---@field BorderBackgroundColor_DEPRECATED FSlateColor @The color of the background border
---@field IsFocusable boolean @Sometimes a button should only be mouse-clickable and never keyboard focusable.
---@field OnCheckStateChanged FOnCheckBoxComponentStateChanged @Called when the checked state has changed
local UCheckBox = {}

---Returns true if this button is currently pressed
---@return boolean
function UCheckBox:IsPressed() end

---Returns true if the checkbox is currently checked
---@return boolean
function UCheckBox:IsChecked() end

---@return ECheckBoxState
function UCheckBox:GetCheckedState() end

---Sets the checked state.
---@param InIsChecked boolean
function UCheckBox:SetIsChecked(InIsChecked) end

---Sets the checked state.
---@param InCheckedState ECheckBoxState
function UCheckBox:SetCheckedState(InCheckedState) end
