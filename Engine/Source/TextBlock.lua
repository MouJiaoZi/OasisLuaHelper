---@meta

---A simple static text widget. * No Children * Text
---@class UTextBlock: UTextLayoutWidget
---@field Text string @The text to display
---@field TextDelegate FGetText @A bindable delegate to allow logic to drive the text of the widget
---@field ColorAndOpacity FSlateColor @The color of the text
---@field ColorAndOpacityDelegate FGetSlateColor @A bindable delegate for the ColorAndOpacity.
---@field Font FSlateFontInfo @The font to render the text with
---@field ShadowOffset FVector2D @The direction the shadow is cast
---@field ShadowColorAndOpacity FLinearColor @The color of the shadow
---@field ShadowColorAndOpacityDelegate FGetLinearColor @A bindable delegate for the ShadowColorAndOpacity.
---@field MinDesiredWidth number @The minimum desired size for the text
---@field AutoEllipsisText boolean
---@field MutiEllipsisText boolean
---@field MutiEllipsisLine number
---@field bWrapWithInvalidationPanel boolean @If true, it will automatically wrap this text widget with an invalidation panel
---@field OnTextBlockTextChangeDelegate FTextBlockTextChangeDelegate
local UTextBlock = {}

---Sets the color and opacity of the text in this text block
---@param InColorAndOpacity FSlateColor
function UTextBlock:SetColorAndOpacity(InColorAndOpacity) end

---@param HexString string
function UTextBlock:SetColorRGBStr(HexString) end

---Sets the opacity of the text in this text block
---@param InOpacity number
function UTextBlock:SetOpacity(InOpacity) end

---Sets the color and opacity of the text drop shadow Note: if opacity is zero no shadow will be drawn
---@param InShadowColorAndOpacity FLinearColor
function UTextBlock:SetShadowColorAndOpacity(InShadowColorAndOpacity) end

---Sets the offset that the text drop shadow should be drawn at
---@param InShadowOffset FVector2D
function UTextBlock:SetShadowOffset(InShadowOffset) end

---Dynamically set the font info for this text block
---@param InFontInfo FSlateFontInfo
function UTextBlock:SetFont(InFontInfo) end

---Set the text justification for this text block
---@param InJustification ETextJustify
function UTextBlock:SetJustification(InJustification) end

---@param InJustification ETextVerticalJustify
function UTextBlock:SetVerticalJustification(InJustification) end

---@param InEnable boolean
function UTextBlock:SetNeedVerticalJustificationWhenOverflow(InEnable) end

---Set the minimum desired width for this text block
---@param InMinDesiredWidth number
function UTextBlock:SetMinDesiredWidth(InMinDesiredWidth) end

---@param InAutoEllipsisText boolean
function UTextBlock:SetAutoEllipsisText(InAutoEllipsisText) end

---@param InWrapTextAt number
function UTextBlock:SetWrapTextAt(InWrapTextAt) end

---@param InMutiEllipsisText boolean
function UTextBlock:SetMutiEllipsisText(InMutiEllipsisText) end

---Gets the widget text
---@return string
function UTextBlock:GetText() end

---@return string
function UTextBlock:GetLocalText() end

---Directly sets the widget text. Warning: This will wipe any binding created for the Text property!
---@param InText string
function UTextBlock:SetText(InText) end
