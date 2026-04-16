---@meta

---@class UReusePageC: UUserWidget
---@field OnUpdateItem FOnUpdateItemDelegate
---@field OnPageChanged FOnPageChangedDelegate
---@field OnCreateItem FOnCreateItemDelegate
---@field OnBeginDrag FOnSimpleDelegate
---@field OnEndDrag FOnEndDragDelegate
---@field OnEndScroll FOnEndScrollDelegate
---@field OnTouchStart FOnSimpleDelegate
---@field OnTouchEnd FOnSimpleDelegate
---@field OnMouseLost FOnSimpleDelegate
---@field ItemClass UUserWidget
---@field IsLoopPage number
---@field IsVertical number
---@field CanDrag number
---@field IsPreciseDrag number
---@field DisableOverscroll number
---@field IsConstantScroll number
---@field IsWheelTurnToPages number
---@field IsEnterStopAutoPlay number
---@field DragTriggerDistance number
---@field CanDragLimit number
---@field AutoPlayRate number
---@field ShowPageNum number
---@field PageOffset number
---@field DragPageNum number
---@field DChgPageParam number
---@field ScrollInertial number
---@field ScrollRate number
---@field CanvasClipping EWidgetClipping
local UReusePageC = {}

---@param InCount number
function UReusePageC:Reload(InCount) end

---@param InCount number
function UReusePageC:ReloadOnlyCount(InCount) end

function UReusePageC:Refresh() end

---@param InIndex number
function UReusePageC:RefreshOne(InIndex) end

function UReusePageC:MoveNextPage() end

function UReusePageC:MovePrePage() end

---@param InIdx number
function UReusePageC:SelectPage(InIdx) end

function UReusePageC:ClearCache() end

---@param InSpeed number
function UReusePageC:PlayConstant(InSpeed) end

---@param ResultItemList ULuaArrayHelper<UUserWidget>
---@param OnlyVisible boolean
function UReusePageC:GetAllItems(ResultItemList, OnlyVisible) end
