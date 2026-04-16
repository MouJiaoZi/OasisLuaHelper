---@meta

---背包格子控件
---@class UGC_Backpack_Item_UIBP
local UGC_Backpack_Item_UIBP = {}

---格子显示选中状态
---@param bSelect boolean @是否选中
function UGC_Backpack_Item_UIBP:ShowSelected(bSelect) end

---更新格子数据(!!!)
---@param ItemDefineID ItemDefineID @物品DefineID
---@param Count number @数量
---@param AdditionData table @控件额外数据, 选中数据/拖拽数据都会包含
function UGC_Backpack_Item_UIBP:UpdateItemData(ItemDefineID, Count, AdditionData) end

---更新格子拖拽数据(!!!)
---@param DragType string @拖拽类型，用于区分不同的拖拽处理
---@param DragDirectionMode EDragDropDirectionMode @默认自由拖拽，若处于滚动列表中，需与滚动方向相反设置
---@param DragClickCallback function @拖拽点击回调
---@param DragStartCallback function @拖拽开始回调
---@param DragCancelCallback function @拖拽取消回调
function UGC_Backpack_Item_UIBP:UpdateDragData(DragType, DragDirectionMode, DragClickCallback, DragStartCallback, DragCancelCallback) end

---更新格子解锁状态
---@param State EBackpackItemState @格子状态, 默认为Unlock
function UGC_Backpack_Item_UIBP:UpdateItemState(State) end

---设置格子叠加UI
---@param SoftWidgetPaths FSoftClassPath[] @叠加UI路径列表
---@param PostCallback function @叠加UI加载完成回调 {UISlot:挂点Slot, CustomUI:叠加控件}
function UGC_Backpack_Item_UIBP:SetCustomUIList(SoftWidgetPaths, PostCallback) end

---显示解锁信息
---@param bShow boolean @是否显示解锁信息
---@param CoinID number @代币物品ID
---@param CostNum number @解锁所需代币数量
function UGC_Backpack_Item_UIBP:SetUnlockInfo(bShow, CoinID, CostNum) end

---控件的UI数据
---@return table @UI数据
function UGC_Backpack_Item_UIBP:GetUIData() end

---显示 新 标记
---@param bNew boolean @是否显示 新 标记
function UGC_Backpack_Item_UIBP:SetIsNewItem(bNew) end