---@meta

---Enumerates types of color values that can be held by Slate color. Should we use the specified color? If not, then which color from the style should we use.
---@class ESlateColorStylingMode
---@field UseColor_Specified number @Color value is stored in this Slate color.
---@field UseColor_ColorTable number @Color value is stored in the linked color table.
---@field UseColor_Foreground number @Use the widget's foreground color.
---@field UseColor_Foreground_Subdued number @Use the widget's subdued color.
---@field UseColor_UseStyle number @Use the foreground color defined in a widget specific style.
ESlateColorStylingMode = {}


---A Slate color can be a directly specified value, or the color can be pulled from a WidgetStyle.
---@class FSlateColor
---@field SpecifiedColor FLinearColor
---@field ColorUseRule ESlateColorStylingMode
FSlateColor = {}
