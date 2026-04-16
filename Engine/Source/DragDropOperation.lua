---@meta

---Controls where the drag widget visual will appear when dragged relative to the pointer performing the drag operation.
---@class EDragPivot
---@field MouseDown number
---@field TopLeft number
---@field TopCenter number
---@field TopRight number
---@field CenterLeft number
---@field CenterCenter number
---@field CenterRight number
---@field BottomLeft number
---@field BottomCenter number
---@field BottomRight number
EDragPivot = {}


---@class FOnDragDropMulticast : ULuaMulticastDelegate
FOnDragDropMulticast = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Operation: UDragDropOperation) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDragDropMulticast:Add(Callback, Obj) end

---触发 Lua 广播
---@param Operation UDragDropOperation
function FOnDragDropMulticast:Broadcast(Operation) end


---This class is the base drag drop operation for UMG, extend it to add additional data and add new functionality.
---@class UDragDropOperation: UObject
---@field Tag string @A simple string tag you can optionally use to provide extra metadata about the operation.
---@field Pivot EDragPivot @Controls where the drag widget visual will appear when dragged relative to the pointer performing the drag operation.
---@field Offset FVector2D @A percentage offset (-1..+1) from the Pivot location, the percentage is of the desired size of the dragged visual.
---@field StartOffset FVector2D
---@field bRemoveMoveAnimDelay boolean
---@field OnDrop FOnDragDropMulticast
---@field OnDragCancelled FOnDragDropMulticast
---@field OnDragged FOnDragDropMulticast
local UDragDropOperation = {}

---@param PointerEvent FPointerEvent
function UDragDropOperation:Drop(PointerEvent) end

---@param PointerEvent FPointerEvent
function UDragDropOperation:DragCancelled(PointerEvent) end

---@param PointerEvent FPointerEvent
function UDragDropOperation:Dragged(PointerEvent) end
