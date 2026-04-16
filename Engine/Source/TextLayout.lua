---@meta

---@class ETextJustify
---@field Left number @Justify the text logically to the left. When text is flowing left-to-right, this will align text visually to the left. When text is flowing right-to-left, this will align text visually to the right.
---@field Center number @Justify the text in the center. Text flow direction has no impact on this justification mode.
---@field Right number @Justify the text logically to the right. When text is flowing left-to-right, this will align text visually to the right. When text is flowing right-to-left, this will align text visually to the left.
ETextJustify = {}


---@class ETextVerticalJustify
---@field Top number
---@field Middle number
---@field Down number
ETextVerticalJustify = {}


---The different methods that can be used if a word is too long to be broken by the default line-break iterator.
---@class ETextWrappingPolicy
---@field DefaultWrapping number @No fallback, just use the given line-break iterator
---@field AllowPerCharacterWrapping number @Fallback to per-character wrapping if a word is too long
ETextWrappingPolicy = {}


---The different directions that text can flow within a paragraph of text.
---@class ETextFlowDirection
---@field Auto number @Automatically detect the flow direction for each paragraph from its text
---@field LeftToRight number @Force text to be flowed left-to-right
---@field RightToLeft number @Force text to be flowed right-to-left
ETextFlowDirection = {}
