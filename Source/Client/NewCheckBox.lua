---@meta

---@class FOnNewCheckBoxUndetermined : ULuaSingleDelegate
FOnNewCheckBoxUndetermined = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNewCheckBoxUndetermined:Bind(Callback, Obj) end

---执行委托
function FOnNewCheckBoxUndetermined:Execute() end


---@class UNewCheckBox: UCheckBox
---@field ClickSound EButtonClickSoundTypes
---@field Text string
---@field TextDelegate FGetText @A bindable delegate to allow logic to drive the text of the widget
---@field Font FSlateFontInfo
---@field CheckedTextColor FSlateColor
---@field UnCheckedTextColor FSlateColor
---@field UndeterminedTextColor FSlateColor
---@field OnUndeterminedClick FOnNewCheckBoxUndetermined
local UNewCheckBox = {}

---@param inSoundType EButtonClickSoundTypes
function UNewCheckBox:SetClickSound(inSoundType) end

---@return string
function UNewCheckBox:GetText() end

---@param InText string
function UNewCheckBox:SetText(InText) end

---@param checkedColor FSlateColor
---@param unCheckedColor FSlateColor
---@param disabledColor FSlateColor
function UNewCheckBox:SetTextColor(checkedColor, unCheckedColor, disabledColor) end

---Sets the checked state.
---@param InCheckedState ECheckBoxState
function UNewCheckBox:SetCheckedState(InCheckedState) end
