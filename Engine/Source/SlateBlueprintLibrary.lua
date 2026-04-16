---@meta

---@class USlateBlueprintLibrary: UBlueprintFunctionLibrary
local USlateBlueprintLibrary = {}

---Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.
---@param Geometry FGeometry
---@param AbsoluteCoordinate FVector2D
---@return boolean
function USlateBlueprintLibrary:IsUnderLocation(Geometry, AbsoluteCoordinate) end

---Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.
---@param Geometry FGeometry
---@param AbsoluteCoordinate FVector2D
---@return FVector2D
function USlateBlueprintLibrary:AbsoluteToLocal(Geometry, AbsoluteCoordinate) end

---Translates local coordinates into absolute coordinates Absolute coordinates could be either desktop or window space depending on what space the root of the widget hierarchy is in.
---@param Geometry FGeometry
---@param LocalCoordinate FVector2D
---@return FVector2D
function USlateBlueprintLibrary:LocalToAbsolute(Geometry, LocalCoordinate) end

---@param Geometry FGeometry
---@return FVector2D
function USlateBlueprintLibrary:GetLocalSize(Geometry) end

---@param Geometry FGeometry
---@return FVector2D
function USlateBlueprintLibrary:GetAbsoluteSize(Geometry) end

---@param Geometry FGeometry
---@return FVector2D
function USlateBlueprintLibrary:GetAbsolutePosition(Geometry) end

---@param A FSlateBrush
---@param B FSlateBrush
---@return boolean
function USlateBlueprintLibrary:EqualEqual_SlateBrush(A, B) end

---Translates local coordinate of the geometry provided into local viewport coordinates. other uses where you need a coordinate in the space of viewport resolution units. to add another widget to the viewport at the same position in viewport space as this location, this is what you would use.
---@param WorldContextObject UObject
---@param Geometry FGeometry
---@param LocalCoordinate FVector2D
---@param PixelPosition FVector2D
---@param ViewportPosition FVector2D
function USlateBlueprintLibrary:LocalToViewport(WorldContextObject, Geometry, LocalCoordinate, PixelPosition, ViewportPosition) end

---Translates absolute coordinate in desktop space of the geometry provided into local viewport coordinates. other uses where you need a coordinate in the space of viewport resolution units. to add another widget to the viewport at the same position in viewport space as this location, this is what you would use.
---@param WorldContextObject UObject
---@param AbsoluteDesktopCoordinate FVector2D
---@param PixelPosition FVector2D
---@param ViewportPosition FVector2D
function USlateBlueprintLibrary:AbsoluteToViewport(WorldContextObject, AbsoluteDesktopCoordinate, PixelPosition, ViewportPosition) end

---Translates a screen position in pixels into the local space of a widget with the given geometry.
---@param WorldContextObject UObject
---@param Geometry FGeometry
---@param ScreenPosition FVector2D
---@param LocalCoordinate FVector2D
function USlateBlueprintLibrary:ScreenToWidgetLocal(WorldContextObject, Geometry, ScreenPosition, LocalCoordinate) end

---Translates a screen position in pixels into absolute application coordinates.
---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@param AbsoluteCoordinate FVector2D
function USlateBlueprintLibrary:ScreenToWidgetAbsolute(WorldContextObject, ScreenPosition, AbsoluteCoordinate) end

---Translates a screen position in pixels into the local space of the viewport widget.
---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@param ViewportPosition FVector2D
function USlateBlueprintLibrary:ScreenToViewport(WorldContextObject, ScreenPosition, ViewportPosition) end

---Provide GetGlobalScrollAmount() to Lua. 【PC】【CG030】鼠标中键立马可以标记物品&加上提示可滚轮来控制列表与鼠标中键图标滑动列表 https://tapd.woa.com/r/t?id=120275309&type=story added by johncsfchen
---@return number
function USlateBlueprintLibrary:GetSlateConstant_GlobalScrollAmount() end

function USlateBlueprintLibrary:ReleaseAllMouseCapture() end

---@param InIndex number
function USlateBlueprintLibrary:ReleaseMouseCaptureWithIndex(InIndex) end

function USlateBlueprintLibrary:ReleaseAllMousePassThroughCapture() end

---@param InIndex number
function USlateBlueprintLibrary:ReleaseMousePassThroughCaptureWithIndex(InIndex) end

---@param PointerIndex number
---@param Widget UWidget
---@return boolean
function USlateBlueprintLibrary:SetMouseCaptor(PointerIndex, Widget) end

---@param PointerIndex number
---@param Widget UWidget
---@return boolean
function USlateBlueprintLibrary:SetMousePassThroughCaptor(PointerIndex, Widget) end
