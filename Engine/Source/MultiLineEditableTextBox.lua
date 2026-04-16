---@meta

---Allows a user to enter multiple lines of text
---@class UMultiLineEditableTextBox: UTextLayoutWidget
---@field Text string @The text content for this editable text box widget
---@field HintText string @Hint text that appears when there is no text in the text box
---@field HintTextDelegate FGetText @A bindable delegate to allow logic to drive the hint text of the widget
---@field WidgetStyle FEditableTextBoxStyle @The style
---@field TextStyle FTextBlockStyle @The text style
---@field bIsReadOnly boolean @Sets whether this text block can be modified interactively by the user
---@field AllowContextMenu boolean @Whether the context menu can be opened
---@field Font_DEPRECATED FSlateFontInfo @Font color and opacity (overrides Style)
---@field ForegroundColor_DEPRECATED FLinearColor @Text color and opacity (overrides Style)
---@field BackgroundColor_DEPRECATED FLinearColor @The color of the background/border around the editable text (overrides Style)
---@field ReadOnlyForegroundColor_DEPRECATED FLinearColor @Text color and opacity when read-only (overrides Style)
---@field OnTextChanged FOnMultiLineEditableTextBoxChangedEvent @Called whenever the text is changed interactively by the user
---@field OnTextCommitted FOnMultiLineEditableTextBoxCommittedEvent @Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.
local UMultiLineEditableTextBox = {}

---@return string
function UMultiLineEditableTextBox:GetText() end

---@param InText string
function UMultiLineEditableTextBox:SetText(InText) end

---@param InText string
function UMultiLineEditableTextBox:SetHintText(InText) end

---@param InError string
function UMultiLineEditableTextBox:SetError(InError) end

---@param bReadOnly boolean
function UMultiLineEditableTextBox:SetIsReadOnly(bReadOnly) end

---@param bEnable boolean
function UMultiLineEditableTextBox:SetIsEnableMultiLineTextInsertNewLine(bEnable) end
