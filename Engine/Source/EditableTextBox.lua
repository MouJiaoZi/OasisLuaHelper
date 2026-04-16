---@meta

---Allows the user to type in custom text.  Only permits a single line of text to be entered. * No Children * Text Entry
---@class UEditableTextBox: UWidget
---@field Text string @The text content for this editable text box widget
---@field TextDelegate FGetText @A bindable delegate to allow logic to drive the text of the widget
---@field WidgetStyle FEditableTextBoxStyle @The style
---@field HintText string @Hint text that appears when there is no text in the text box
---@field HintTextDelegate FGetText @A bindable delegate to allow logic to drive the hint text of the widget
---@field Font_DEPRECATED FSlateFontInfo @Font color and opacity (overrides Style)
---@field ForegroundColor_DEPRECATED FLinearColor @Text color and opacity (overrides Style)
---@field BackgroundColor_DEPRECATED FLinearColor @The color of the background/border around the editable text (overrides Style)
---@field ReadOnlyForegroundColor_DEPRECATED FLinearColor @Text color and opacity when read-only (overrides Style)
---@field IsReadOnly boolean @Sets whether this text box can actually be modified interactively by the user
---@field IsPassword boolean @Sets whether this text box is for storing a password
---@field MinimumDesiredWidth number @Minimum width that a text block should be
---@field Padding_DEPRECATED FMargin @Padding between the box/border and the text widget inside (overrides Style)
---@field IsCaretMovedWhenGainFocus boolean @Workaround as we lose focus when the auto completion closes.
---@field SelectAllTextWhenFocused boolean @Whether to select all text when the user clicks to give focus on the widget
---@field RevertTextOnEscape boolean @Whether to allow the user to back out of changes when they press the escape key
---@field ClearKeyboardFocusOnCommit boolean @Whether to clear keyboard focus when pressing enter to commit changes
---@field SelectAllTextOnCommit boolean @Whether to select all text when pressing enter to commit changes
---@field AllowContextMenu boolean @Whether the context menu can be opened
---@field KeyboardType EVirtualKeyboardType @If we're on a platform that requires a virtual keyboard, what kind of keyboard should this widget use?
---@field ShapedTextOptions FShapedTextOptions @Controls how the text within this widget should be shaped.
---@field OnTextChanged FOnEditableTextBoxChangedEvent @Called whenever the text is changed interactively by the user
---@field OnTextCommitted FOnEditableTextBoxCommittedEvent @Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.
local UEditableTextBox = {}

---@return string
function UEditableTextBox:GetText() end

---@param InText string
function UEditableTextBox:SetText(InText) end

---@param InText string
function UEditableTextBox:SetHintText(InText) end

---@param InError string
function UEditableTextBox:SetError(InError) end

---@param bReadOnly boolean
function UEditableTextBox:SetIsReadOnly(bReadOnly) end

function UEditableTextBox:ClearError() end

---@return boolean
function UEditableTextBox:HasError() end
