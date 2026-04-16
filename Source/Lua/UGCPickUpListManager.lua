---@meta

--- 注册拾取组件
function UGCPickUpListManager:RegistComponent(PickUpListComp) end

--- 注销拾取组件
function UGCPickUpListManager:UnRegistComponent(PickUpListComp) end

--- 地面物品缓存变化回调
function UGCPickUpListManager:OnPickupItemListCacheChange() end

--- 死亡盒子缓存变化回调
function UGCPickUpListManager:OnTomBoxItemListCacheChange() end

--- 拾取开关变化回调
function UGCPickUpListManager:OnUpdateListDataChange() end

--- 预加载拾取面板
function UGCPickUpListManager:PreloadPickUpPanel() end

--- 销毁拾取面板
function UGCPickUpListManager:DestroyPickUpPanel() end

--- 添加自定义控件
function UGCPickUpListManager:AddCustomWidget() end

--- 获取地面物品缓存列表
function UGCPickUpListManager:GetPickupItemListCache() end

--- 获取死亡盒子缓存列表
function UGCPickUpListManager:GetTomBoxItemListCache() end

--- 获取物品有用性缓存
function UGCPickUpListManager:GetItemUsefulCache(itemuid) end

--- 检查是否启用列表数据更新
function UGCPickUpListManager:IsUpdateListDataEnabled() end

--- 获取死亡盒子显示模式
function UGCPickUpListManager:GetTomBoxShowMode() end

--- 设置死亡盒子显示模式
function UGCPickUpListManager:SetTomBoxShowMode(Mode) end

--- 预设显示模式
function UGCPickUpListManager:PresetShowMode(ShowMode) end

--- 显示/隐藏拾取面板
function UGCPickUpListManager:ShowPickUpListPanel(bVisible) end

--- 展开/收起拾取面板
function UGCPickUpListManager:ExpandOrCollapsePickUpListPanel(bExpand) end

--- 设置瞄准时隐藏
function UGCPickUpListManager:SetHideForAim(bHide) end

--- 暂停自动拾取指定物品
function UGCPickUpListManager:PauseAutoPick(ItemDefineID) end

--- 停止拾取
function UGCPickUpListManager:StopPick() end

--- 开始拾取
function UGCPickUpListManager:StartPick() end

--- 清空有用性缓存
function UGCPickUpListManager:ClearUsefulCache() end

--- 设置禁止自动拾取
function UGCPickUpListManager:SetForbitAutoPick(bForbit) end

--- 设置可以自动拾取
function UGCPickUpListManager:SetCanAutoPick(bCanPick) end

--- 重置自动拾取状态
function UGCPickUpListManager:ResetAutoPick() end

--- 添加禁止拾取物品标签
function UGCPickUpListManager:AddForbitPickItemTag(Tag) end

--- 移除禁止拾取物品标签
function UGCPickUpListManager:RemoveForbitPickItemTag(Tag) end

--- 设置是否显示死亡盒子
function UGCPickUpListManager:SetShowDeadBox(bShow) end

--- 设置自动拾取开关
function UGCPickUpListManager:SetAutoPickupSwitcher(bEnable) end

--- 设置禁用自动拾取设置
function UGCPickUpListManager:SetDisableAutoPickSetting(bDisable) end

--- 设置模式禁止自动拾取
function UGCPickUpListManager:SetForbitAutoPickbyMode(bForbit) end

--- 添加禁止自动拾取的物品
function UGCPickUpListManager:AddForbitAutoPickItem(ItemID) end

--- 移除禁止自动拾取的物品
function UGCPickUpListManager:RemoveForbitAutoPickItem(ItemID) end

--- 检查物品是否被禁止自动拾取
function UGCPickUpListManager:IsItemForbitAutoPick(ItemID) end

--- 检查自动拾取是否启用
function UGCPickUpListManager:IsAutoPickEnabled() end

--- 获取自动拾取延迟
function UGCPickUpListManager:GetAutoPickDelay() end

--- 设置自动拾取延迟
function UGCPickUpListManager:SetAutoPickDelay(Delay) end

--- 获取暂停自动拾取延迟
function UGCPickUpListManager:GetPauseAutoPickDelay() end

--- 设置暂停自动拾取延迟
function UGCPickUpListManager:SetPauseAutoPickDelay(Delay) end

--- 获取有用物品数量限制
function UGCPickUpListManager:GetUsefulLimit() end

--- 设置有用物品数量限制
function UGCPickUpListManager:SetUsefulLimit(Limit) end

--- 添加禁用动态状态
function UGCPickUpListManager:AddDisableDynamicState(State) end

--- 移除禁用动态状态
function UGCPickUpListManager:RemoveDisableDynamicState(State) end

--- 设置观战时是否显示拾取列表
function UGCPickUpListManager:SetPickupActorListVisibleForOB(bVisible) end

--- 获取PlayerController
function UGCPickUpListManager:GetPlayerController() end

--- 获取组件引用
function UGCPickUpListManager:GetComponent() end

--- 获取面板引用
function UGCPickUpListManager:GetPanel() end

--- 检查组件是否有效
function UGCPickUpListManager:IsComponentValid() end

--- 检查面板是否有效
function UGCPickUpListManager:IsPanelValid() end