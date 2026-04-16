---@meta

--- 从物品数据中获取ItemID
---@param ItemDataStructure table @物品数据结构 FSearchedPickUpItemResult
---@return number @物品ID
function UGC_PickUpItem_Utils.GetItemID(ItemDataStructure) end

--- 获取物品数量
---@param ItemDataStructure table @物品数据结构
---@return number @物品数量
function UGC_PickUpItem_Utils.GetItemCount(ItemDataStructure) end

--- 获取物品Wrapper
---@param ItemDataStructure table @物品数据结构
---@return APickUpWrapperActor @物品Wrapper
function UGC_PickUpItem_Utils.GetItemWrapper(ItemDataStructure) end

--- 获取物品主数据
---@param ItemDataStructure table @物品数据结构
---@return FBattleItemData @物品数据
function UGC_PickUpItem_Utils.GetMainItemData(ItemDataStructure) end

--- 获取物品配置数据
---@param ItemID number @物品ID
---@return FBattleItem_TabRes @物品配置
function UGC_PickUpItem_Utils.GetItemConfig(ItemID) end

--- 执行拾取物品
---@param ItemDataStructure table @物品数据结构
---@param WidgetContext UUserWidget @Widget上下文（用于获取PlayerController）
---@return boolean @是否成功发起拾取
function UGC_PickUpItem_Utils.ExecutePickup(ItemDataStructure, WidgetContext) end

--- 通知拾取开始，标记需要刷新
function UGC_PickUpItem_Utils.NotifyPickupStarted(WidgetContext) end

--- 检查物品是否被保护（不可拾取）
---@param ItemWrapper APickUpWrapperActor @物品Wrapper
---@param WidgetContext UUserWidget @Widget上下文
---@return boolean @是否被保护
function UGC_PickUpItem_Utils.CheckItemProtected(ItemWrapper, WidgetContext) end

--- 设置Widget锁定状态
---@param Widget UUserWidget @Widget
---@param bLocked boolean @是否锁定
function UGC_PickUpItem_Utils.SetWidgetLockState(Widget, bLocked) end

--- 批量隐藏控件
---@param Widget UUserWidget @Widget
---@param WidgetNames table @控件名称列表
function UGC_PickUpItem_Utils.HideWidgets(Widget, WidgetNames) end

--- 设置控件可见性
---@param Widget any @控件
---@param bVisible boolean @是否可见
---@param bHitTest boolean @是否响应点击（默认false）
function UGC_PickUpItem_Utils.SetWidgetVisible(Widget, bVisible, bHitTest) end