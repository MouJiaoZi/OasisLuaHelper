---@meta

---General purpose data structure for grouping all parameters needed when sizing or wrapping a string
---@class FTextSizingParameters
---@field DrawX number @a pixel value representing the horizontal screen location to begin rendering the string
---@field DrawY number @a pixel value representing the vertical screen location to begin rendering the string
---@field DrawXL number @a pixel value representing the width of the area available for rendering the string
---@field DrawYL number @a pixel value representing the height of the area available for rendering the string
---@field Scaling FVector2D @A value between 0.0 and 1.0, which represents how much the width/height should be scaled, where 1.0 represents 100% scaling.
---@field SpacingAdjust FVector2D @Horizontal spacing adjustment between characters and vertical spacing adjustment between wrapped lines
FTextSizingParameters = {}


---Used by UUIString::WrapString to track information about each line that is generated as the result of wrapping.
---@class FWrappedStringElement
---@field Value string @the string associated with this line
---@field LineExtent FVector2D @the size (in pixels) that it will take to render this string
FWrappedStringElement = {}
