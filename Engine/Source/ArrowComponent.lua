---@meta

---A simple arrow rendered using lines. Useful for indicating which way an object is facing.
---@class UArrowComponent: UPrimitiveComponent
---@field ArrowColor FColor
---@field ArrowSize number
---@field bIsScreenSizeScaled boolean @Set to limit the screen size of this arrow
---@field ScreenSize number @The size on screen to limit this arrow to (in screen space)
---@field bTreatAsASprite number @If true, don't show the arrow when EngineShowFlags.BillboardSprites is disabled.
local UArrowComponent = {}

---Updates the arrow's colour, and tells it to refresh
---@param NewColor FLinearColor
function UArrowComponent:SetArrowColor(NewColor) end
