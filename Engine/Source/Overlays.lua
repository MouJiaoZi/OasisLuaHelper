---@meta

---@class FOverlayItem
---@field StartTime FTimespan @When the overlay should be displayed
---@field EndTime FTimespan @When the overlay should be cleared
---@field Text string @Text that appears onscreen when the overlay is shown
---@field Position FVector2D @The position of the text on screen (Between 0.0 and 1.0)
FOverlayItem = {}


---An interface class for creating overlay data assets
---@class UOverlays: UObject
local UOverlays = {}
