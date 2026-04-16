---@meta

---The rich text block * Fancy Text * No Children
---@class URichTextBlock: UTextLayoutWidget
---@field Text string @The text to display
---@field TextDelegate FGetText @A bindable delegate to allow logic to drive the text of the widget
---@field Font FSlateFontInfo @The default font for the text.
---@field Color FLinearColor @The default color for the text.
---@field Decorators ULuaArrayHelper<URichTextBlockDecorator>
local URichTextBlock = {}

---@return string
function URichTextBlock:GetLocalText() end
