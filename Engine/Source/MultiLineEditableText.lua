---@meta

---Editable text box widget
---@class UMultiLineEditableText: UTextLayoutWidget
---@field Text string @The text content for this editable text box widget
---@field HintText string @Hint text that appears when there is no text in the text box
---@field HintTextDelegate FGetText @A bindable delegate to allow logic to drive the hint text of the widget
---@field WidgetStyle FTextBlockStyle @The style
---@field bIsReadOnly boolean @Sets whether this text block can be modified interactively by the user
---@field Font_DEPRECATED FSlateFontInfo @Font color and opacity (overrides Style)
---@field AllowContextMenu boolean @Whether the context menu can be opened
---@field UseModiferKeyForNewLine boolean
---@field OnTextChanged FOnMultiLineEditableTextChangedEvent @Called whenever the text is changed interactively by the user
---@field OnTextCommitted FOnMultiLineEditableTextCommittedEvent @Called whenever the text is committed.  This happens when the user presses enter or the text box loses focus.
---@field OnTextBeginEditTransation FOnMultiLineEditableTextBeginEditTransationEvent @Called to begin an undoable editable text transaction
---@field OnTextEndEditTransaction FOnMultiLineEditableTextEndEditTransactionEvent @Called to end an undoable editable text transaction
---@field OnTextFocusReceived FOnMultiLineEditableTextFocusReceivedEvent @Called when editable text received focus
local UMultiLineEditableText = {}

---@return string
function UMultiLineEditableText:GetText() end

---@param InText string
function UMultiLineEditableText:SetText(InText) end

---@param InHintText string
function UMultiLineEditableText:SetHintText(InHintText) end

---@param bReadOnly boolean
function UMultiLineEditableText:SetIsReadOnly(bReadOnly) end

---@param InWidgetStyle FTextBlockStyle
function UMultiLineEditableText:SetWidgetStyle(InWidgetStyle) end

---@param bReadOnly boolean
function UMultiLineEditableText:SetModiferKeyForNewLine(bReadOnly) end

---@param InWrapTextAt number
function UMultiLineEditableText:SetWrapTextAt(InWrapTextAt) end

---@param InFontInfo FSlateFontInfo
function UMultiLineEditableText:SetFont(InFontInfo) end

---@param Color FSlateColor
function UMultiLineEditableText:SetColorAndOpacity(Color) end
