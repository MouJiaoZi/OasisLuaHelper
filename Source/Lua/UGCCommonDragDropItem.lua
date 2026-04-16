---@meta

---拖拽模式
---@class EDragDropMode
---@field DDM_None number
---@field DDM_Drag number
---@field DDM_Drop number
---@field DDM_DragAndDrop number
EDragDropMode = {}


---拖拽方向模式
---@class EDragDirectionMode
---@field DDM_Free number
---@field DDM_Horizonal number
---@field DDM_Vertical number
EDragDirectionMode = {}


---拖拽控件
---@class UGCCommonDragDropItem
local UGCCommonDragDropItem = {}

---设置拖拽时的控件
---@param Widget UUserWidget|Class @拖拽时的控件实例 或 类
---@param bCreate boolean @是否创建控件，传入Class则创建控件实例
function UGCCommonDragDropItem:SetDragWidget(Widget, bCreate) end

---设置拖拽方向模式
---@param DirectionMode EDragDirectionMode @拖拽方向模式
function UGCCommonDragDropItem:SetDragDirectionMode(DirectionMode) end

---设置拖拽模式
---@param DragDropMode EDragDropMode @拖拽模式
function UGCCommonDragDropItem:SetDragDropMode(DragDropMode) end

---注册拖拽(入口)
---@param DragDropData table @拖拽数据
---@param DragDropMode EDragDropMode @拖拽模式
function UGCCommonDragDropItem:RegisterDragDropData(DragDropData, DragDropMode) end

---设置拖拽数据
---@param Data table @拖拽数据
function UGCCommonDragDropItem:SetData(Data) end