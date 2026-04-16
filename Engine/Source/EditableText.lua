---@meta

---Editable text box widget
---@class UEditableText: UWidget
---@field Text string @The text content for this editable text box widget
---@field TextDelegate FGetText @A bindable delegate to allow logic to drive the text of the widget
---@field HintText string @Hint text that appears when there is no text in the text box
---@field HintTextDelegate FGetText @A bindable delegate to allow logic to drive the hint text of the widget
---@field WidgetStyle FEditableTextStyle @The style
---@field Font_DEPRECATED FSlateFontInfo @Font color and opacity (overrides Style)
---@field ColorAndOpacity_DEPRECATED FSlateColor @Text color and opacity (overrides Style)
---@field IsReadOnly boolean @Sets whether this text box can actually be modified interactively by the user
---@field IsPassword boolean @Sets whether this text box is for storing a password
---@field MinimumDesiredWidth number @Minimum width that a text block should be
---@field IsCaretMovedWhenGainFocus boolean @Workaround as we lose focus when the auto completion closes.
---@field SelectAllTextWhenFocused boolean @Whether to select all text when the user clicks to give focus on the widget
---@field RevertTextOnEscape boolean @Whether to allow the user to back out of changes when they press the escape key
---@field ClearKeyboardFocusOnCommit boolean @Whether to clear keyboard focus when pressing enter to commit changes
---@field SelectAllTextOnCommit boolean @Whether to select all text when pressing enter to commit changes
---@field AllowContextMenu boolean @Whether the context menu can be opened
---@field KeyboardType EVirtualKeyboardType @If we're on a platform that requires a virtual keyboard, what kind of keyboard should this widget use?
---@field ShapedTextOptions FShapedTextOptions @Controls how the text within this widget should be shaped.
---@field OnTextChanged FOnEditableTextChangedEvent @Called whenever the text is changed interactively by the user
---@field OnTextCommitted FOnEditableTextCommittedEvent @Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.
---@field OnTextBeginEditTransation FOnEditableTextBeginEditTransationEvent @Called to begin an undoable editable text transaction
---@field OnTextEndEditTransaction FOnEditableTextEndEditTransactionEvent @Called to end an undoable editable text transaction
---@field OnTextFocusReceived FOnEditableTextFocusReceivedEvent
local UEditableText = {}

---Gets the widget text
---@return string
function UEditableText:GetText() end

---Directly sets the widget text. Warning: This will wipe any binding created for the Text property!
---@param InText string
function UEditableText:SetText(InText) end

---@param InbIsPassword boolean
function UEditableText:SetIsPassword(InbIsPassword) end

---@param InHintText string
function UEditableText:SetHintText(InHintText) end

---@param InbIsReadyOnly boolean
function UEditableText:SetIsReadOnly(InbIsReadyOnly) end

---@param Font FSlateFontInfo
function UEditableText:SetFont(Font) end

---@param Color FSlateColor
function UEditableText:SetColorAndOpacity(Color) end
