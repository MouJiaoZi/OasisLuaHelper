---@meta

---The rich text block * Fancy Text * No Children
---@class UTagLogRichTextBlock: UTextLayoutWidget
---@field Text string @The text to display
---@field TextDelegate FGetText @A bindable delegate to allow logic to drive the text of the widget
---@field Font FSlateFontInfo @The default font for the text.
---@field Color FLinearColor @The default color for the text.
---@field DecoratorClasses ULuaArrayHelper<UTagLogRichTextBlockDecorator>
---@field InstanceDecorators ULuaArrayHelper<UTagLogRichTextBlockDecorator>
local UTagLogRichTextBlock = {}

---Returns widgets text.
---@return string
function UTagLogRichTextBlock:GetText() end

---Directly sets the widget text. Warning: This will wipe any binding created for the Text property!
---@param InText string
function UTagLogRichTextBlock:SetText(InText) end
