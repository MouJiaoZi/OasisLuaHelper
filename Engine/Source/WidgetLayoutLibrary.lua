---@meta

---@class UWidgetLayoutLibrary: UBlueprintFunctionLibrary
local UWidgetLayoutLibrary = {}

---Gets the projected world to screen position for a player, then converts it into a widget position, which takes into account any quality scaling.
---@param PlayerController APlayerController
---@param WorldLocation FVector
---@param ScreenPosition FVector2D
---@return boolean
function UWidgetLayoutLibrary:ProjectWorldLocationToWidgetPosition(PlayerController, WorldLocation, ScreenPosition) end

---Gets the current DPI Scale being applied to the viewport and all the Widgets.
---@param WorldContextObject UObject
---@return number
function UWidgetLayoutLibrary:GetViewportScale(WorldContextObject) end

---Gets the size of the game viewport.
---@param WorldContextObject UObject
---@return FVector2D
function UWidgetLayoutLibrary:GetViewportSize(WorldContextObject) end

---Gets the geometry of the widget holding all widgets added to the "Viewport".  You can use this geometry to convert between absolute and local space of widgets held on this widget.
---@param WorldContextObject UObject
---@return FGeometry
function UWidgetLayoutLibrary:GetViewportWidgetGeometry(WorldContextObject) end

---Gets the geometry of the widget holding all widgets added to the "Player Screen". You can use this geometry to convert between absolute and local space of widgets held on this widget.
---@param PlayerController APlayerController
---@return FGeometry
function UWidgetLayoutLibrary:GetPlayerScreenWidgetGeometry(PlayerController) end

---Gets the platform's mouse cursor position.  This is the 'absolute' desktop location of the mouse.
---@return FVector2D
function UWidgetLayoutLibrary:GetMousePositionOnPlatform() end

---Gets the platform's mouse cursor position in the local space of the viewport widget.
---@param WorldContextObject UObject
---@return FVector2D
function UWidgetLayoutLibrary:GetMousePositionOnViewport(WorldContextObject) end

---Gets the mouse position of the player controller, scaled by the DPI.  If you're trying to go from raw mouse screenspace coordinates to fullscreen widget space, you'll need to transform the mouse into DPI Scaled space.  This function performs that scaling. MousePositionScaledByDPI = MousePosition * (1 / ViewportScale).
---@param Player APlayerController
---@param LocationX number
---@param LocationY number
---@return boolean
function UWidgetLayoutLibrary:GetMousePositionScaledByDPI(Player, LocationX, LocationY) end

---Removes all widgets from the viewport.
---@param WorldContextObject UObject
function UWidgetLayoutLibrary:RemoveAllWidgets(WorldContextObject) end

---@param Widget UWidget
---@param NewLayerPolicy number
function UWidgetLayoutLibrary:SetNewUsedLayerPolicy(Widget, NewLayerPolicy) end
