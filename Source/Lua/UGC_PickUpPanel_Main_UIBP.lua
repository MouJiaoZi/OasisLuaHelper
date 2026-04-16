---@meta

--- 挂载死亡盒子面板背景自定义UI
function UGC_PickUpPanel_Main_UIBP:MountPanelBGCustomUI() end

--- 销毁自定义背景UI
function UGC_PickUpPanel_Main_UIBP:DestroyCustomBGWidget() end

--- 刷新死亡盒子列表，从组件获取数据
function UGC_PickUpPanel_Main_UIBP:RefreshTomBoxList() end

--- 刷新死亡盒子物品列表（支持多个盒子）
function UGC_PickUpPanel_Main_UIBP:RefreshDeathBoxItemList() end

--- 遍历 TombBoxReuseList_BP 的所有 Row，对每个 Row:
--- 1. 在 WrapBox_List 中创建/复用足够的物品Widget，并调用 SetItemData 填充真实数据
--- 2. 调用 UpdateTombBoxItemLua 绑定 Wrapper（处理禁止拾取、盒子名称等逻辑）
--- ModifyLogicPanel 按盒子数量创建Row，Row[i] 直接对应 CachedTomBoxList[i+1]
function UGC_PickUpPanel_Main_UIBP:UpdateAllRowWrapperBindings(ReuseList) end

--- 手动在 Row 内创建/复用物品Widget，并调用 SetItemData 填充真实数据
--- 使用 UE.LoadClass + UE.CreateWidget 方式创建 UGC_PickUpItem_UIBP 并添加到 WrapBox_List
function UGC_PickUpPanel_Main_UIBP:FillRowItems(RowWidget, boxIdx, boxItemCount, boxItemList) end

--- 地面物品列表项更新回调（由BTReuseListNew.itemUpdateDelegate触发）
---@param widget UUserWidget @表项Widget
---@param index number @引（0-based）
function UGC_PickUpPanel_Main_UIBP:HandleUpdateItemData(widget, index) end

--- 设置死亡盒子Item数据（解耦接口：只传基本数据类型和回调）
---@param widget UUserWidget @_Item控件
---@param PickItem FSearchedPickUpItemResult @品原始数据
---@param Useful table|boolean @用性信息
---@param itemIdx number @品索引(0-based)
---@param boxIdx number @子索引(1-based)
function UGC_PickUpPanel_Main_UIBP:SetDeathBoxItemData(widget, PickItem, Useful, itemIdx, boxIdx) end