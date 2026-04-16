---@meta

--- 构造函数
function UGC_PickUpItem_Row_BP:Construct() end

--- 销毁前清理
function UGC_PickUpItem_Row_BP:OnDestroy() end

--- 注册事件（预留扩展）
function UGC_PickUpItem_Row_BP:RegisterEvents() end

--- 注销事件（预留扩展）
function UGC_PickUpItem_Row_BP:UnRegisterEvents() end

--- 更新死亡盒子物品数据（由TombBoxReuseList_BP的itemUpdateDelegate触发）
function UGC_PickUpItem_Row_BP:UpdateTombBoxItemLua(Box, Count, PickUpComponent) end

--- 清理当前绑定的Wrapper事件
function UGC_PickUpItem_Row_BP:CleanupWrapperBinding() end

--- 判断当前玩家是否为物品"禁止拾取"的拥有者
function UGC_PickUpItem_Row_BP:IsOwnerPickupWrapper(ItemWrapper) end

--- 当"允许拾取结束时间"变化时的响应
function UGC_PickUpItem_Row_BP:OnWrapperAllowPickEndTimeChange() end

--- Escape_Pickup_Tips_S UI 创建完成后的回调
function UGC_PickUpItem_Row_BP:ShowUICallBack() end

--- 移除禁止拾取锁定，隐藏 Escape_Pickup_Tips_S 提示UI
function UGC_PickUpItem_Row_BP:RemoveAllowPickEndTimeLock(ItemWrapper) end

--- PC端鼠标悬浮提示加载完成回调
function UGC_PickUpItem_Row_BP:OnPCMouseTipsShow() end

--- 皮肤应用完成后的回调
function UGC_PickUpItem_Row_BP:ApplyWidgetSkinFinished() end

--- 销毁PC鼠标提示的委托对象
function UGC_PickUpItem_Row_BP:RemovePCMouseTipsShowDelegate() end