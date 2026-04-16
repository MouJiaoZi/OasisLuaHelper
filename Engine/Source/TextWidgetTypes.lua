---@meta

---Common data for all widgets that use shaped text. Contains the common options that should be exposed for the underlying Slate widget.
---@class FShapedTextOptions
---@field bOverride_TextShapingMethod number
---@field bOverride_TextFlowDirection number
---@field TextShapingMethod ETextShapingMethod @Which text shaping method should the text within this widget use? (unset to use the default returned by GetDefaultTextShapingMethod)
---@field TextFlowDirection ETextFlowDirection @Which text flow direction should the text within this widget use? (unset to use the default returned by GetDefaultTextFlowDirection)
FShapedTextOptions = {}


---Base class for all widgets that use a text layout. Contains the common options that should be exposed for the underlying Slate widget.
---@class UTextLayoutWidget: UWidget
---@field ShapedTextOptions FShapedTextOptions @Controls how the text within this widget should be shaped.
---@field Justification ETextJustify @How the text should be aligned with the margin.
---@field VerticalJustification ETextVerticalJustify
---@field bNeedVerticalJustificationWhenOverflow boolean @Should the text still be justified vertically when it overflow its block.
---@field AutoWrapText boolean @True if we're wrapping text automatically based on the computed horizontal space for this widget.
---@field WrapTextAt number @Whether text wraps onto a new line when it's length exceeds this width; if this value is zero or negative, no wrapping occurs.
---@field WrappingPolicy ETextWrappingPolicy @The wrapping policy to use.
---@field Margin FMargin @The amount of blank space left around the edges of text area.
---@field LineHeightPercentage number @The amount to scale each lines height by.
local UTextLayoutWidget = {}
