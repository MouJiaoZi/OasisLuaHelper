---@meta

--- 获取背包组件
function UGCPickupRules.GetBackpackComponent(self) end

--- 获取武器管理组件
function UGCPickupRules.GetWeaponManagerComponent(self) end

--- 获取背包中指定物品的数量（总数，含已装备）
function UGCPickupRules.GetItemCountByDefineID(self, ItemDefineID) end

--- 获取背包中指定物品的未装备数量
function UGCPickupRules.GetItemCountByDefineIDUnEquip(self, ItemDefineID) end

--- 创建标准化的拾取结果
function UGCPickupRules.CreateUsefulResult(bUseful, Count, bAutoPick, Order) end

--- 在数组中查找元素
function UGCPickupRules.FindInTable(Table, Element) end

--- 检查物品是否具有指定的子类型标签
function UGCPickupRules.HasTagSub(ItemID, TagName) end

--- 检查物品是否具有指定标签
function UGCPickupRules.HasTag(ItemID, TagName) end

--- 获取物品配表数据
function UGCPickupRules.GetItemRes(ItemID) end

--- 获取物品排序权重
function UGCPickupRules.GetItemWeightForOrder(ItemID) end

--- 获取物品的拾取规则标签列表
function UGCPickupRules.GetItemPickUpTags(PickUpItem) end

--- 根据物品ID获取拾取规则标签（便捷方法）
function UGCPickupRules.GetItemPickUpTagsByItemID(ItemID) end

--- 前置检查：按顺序检查6项标签列表，命中则直接返回拾取结果
function UGCPickupRules.CheckPreConditions(self, ItemDefineID, ItemCount) end

--- 检查背包中是否有与指定物品同等级（同标签组）的物品
function UGCPickupRules.CheckBackpackHasEqualItem(self, ItemID, TagName) end

--- 检查背包中是否有比指定物品更高优先级的物品
function UGCPickupRules.CheckBackpackHasHigherPriorityItem(self, ItemID, TagName) end

--- 武器拾取规则
function UGCPickupRules.IsWeaponUseful(self, ItemDefineID, Count) end

--- 检查武器是否在方案推荐武器列表中
function UGCPickupRules.IsWeaponInPlanList(self, WeaponItemID) end

--- 获取方案开关配置值
function UGCPickupRules.GetSwitcherConfig(self, configName) end

--- 检查是否启用新版方案
function UGCPickupRules.IsNewPlanApply(self) end

--- 配件拾取规则
function UGCPickupRules.IsAttachmentUseful(self, ItemDefineID, Count) end

--- 判断配件是否应装到指定武器上（基于方案配置优先级）
function UGCPickupRules.IsAttachNeedOnWeapon(self, AttachID, WeaponID, OtherAttachID) end

--- 获取备选配件列表中该配件的需求数量
function UGCPickupRules.GetStandbyAttachNeedCount(self, AttachItemID) end

--- 弹药拾取规则
function UGCPickupRules.IsAmmoUseful(self, ItemDefineID, Count) end

--- 获取方案中指定武器的子弹需求数
function UGCPickupRules.GetPlanWeaponBulletNeed(self, WeaponItemID) end

--- 药品拾取规则
function UGCPickupRules.IsMedicineUseful(self, ItemDefineID, Count) end

--- 投掷物拾取规则
function UGCPickupRules.IsThrowableUseful(self, ItemDefineID, Count) end

--- 通用消耗品拾取规则（ItemType=6中未被药品/投掷物标签匹配的其他消耗品）
function UGCPickupRules.IsConsumableUseful(self, ItemDefineID, Count) end

--- 获取方案中药品期望数量（含等价ID转换）
function UGCPickupRules.GetPlanDrugNeed(self, ItemID) end

--- 获取方案中投掷物期望数量
function UGCPickupRules.GetPlanGrenadeNeed(self, ItemID) end

--- 获取方案中其他物品期望数量
function UGCPickupRules.GetPlanOtherNeed(self, ItemID) end

--- 获取物品的策划配表拾取限制数量
function UGCPickupRules.GetLimitPickCount(ItemID) end

--- 护甲拾取规则
function UGCPickupRules.IsArmorUseful(self, ItemDefineID, Count) end

--- 头盔拾取规则
function UGCPickupRules.IsHelmetUseful(self, ItemDefineID, Count) end

--- 背包拾取规则
function UGCPickupRules.IsBackpackUseful(self, ItemDefineID, Count) end

--- 通用装备拾取规则（未细分的装备类型）
function UGCPickupRules.IsEquipmentUseful(self, ItemDefineID, Count) end

--- 装备比较核心逻辑
function UGCPickupRules.CompareEquipment(self, ItemDefineID, Count, Order) end

--- 按装备属性对比（EquipmentAttrType）
function UGCPickupRules.CompareEquipmentByAttr(self, pickItemDefineID, backItemDefineID) end

--- 建造物拾取规则
function UGCPickupRules.IsBuildUseful(self, ItemDefineID, Count) end

--- 职业物品拾取规则
function UGCPickupRules.IsOccupationUseful(self, ItemDefineID, Count) end

--- 默认拾取规则（无匹配规则时兜底）
function UGCPickupRules.IsDefaultUseful(self, ItemDefineID, Count) end

--- 将规则函数注册到拾取组件，配置Tag -> 规则函数的映射
function UGCPickupRules.RegisterRulesToComponent(Component) end

--- 获取已注册的规则数量
function UGCPickupRules.GetRulesCount(Component) end

--- 打印已注册的规则信息（调试用）
function UGCPickupRules.PrintRulesInfo(Component) end

--- 测试单个物品的拾取规则（调试用）
function UGCPickupRules.TestRule(Component, ItemID, Count) end