---@meta

---@class FWidgetNavigationData
---@field Rule EUINavigationRule
---@field WidgetToFocus string
---@field Widget UWidget
FWidgetNavigationData = {}


---@class UWidgetNavigation: UObject
---@field Up FWidgetNavigationData @Happens when the user presses up arrow, joystick, d-pad.
---@field Down FWidgetNavigationData @Happens when the user presses down arrow, joystick, d-pad.
---@field Left FWidgetNavigationData @Happens when the user presses left arrow, joystick, d-pad.
---@field Right FWidgetNavigationData @Happens when the user presses right arrow, joystick, d-pad.
---@field Next FWidgetNavigationData @Happens when the user presses Tab.
---@field Previous FWidgetNavigationData @Happens when the user presses Shift+Tab.
local UWidgetNavigation = {}
