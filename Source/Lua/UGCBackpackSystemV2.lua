---@meta

---@class EBackpackPanelType
---@field DepotMain number @废弃
---@field BattleMain number @背包主ui
---@field DeletePanel number @删除弹窗
---@field Upgrade number @解锁弹窗
---@field Coin number @代币转移弹窗
---@field Equipment number @装备面板
---@field LobbyMain number @废弃
EBackpackPanelType = {}


---背包数据来源类型
---@class EItemDataTypeStrs
---@field BattleBackpack number @背包物品
---@field BattleBagData number @仓库物品
---@field CommonEquipment number @通用装备
---@field WeaponFitting number @配件
---@field EquipWeapon number @主武器
---@field EquipSubWeapon number @副武器
---@field MeleeWeapon number @近战武器
EItemDataTypeStrs = {}


---背包格子状态
---@class EBackpackItemState
---@field Empty number @空格子
---@field Unlock number @已解锁, 有物品
---@field Lock number @上锁格子
---@field Overflow number @溢出容量格子
---@field Error number @异常格子
EBackpackItemState = {}


---自定义面板类型
---@class ECustomUIType
---@field CustomBackpackUI number @自定义背包UI
---@field CustomEquipUI number @自定义装备UI
---@field CustomItemUI number @自定义物品UI
ECustomUIType = {}


---@class EBackpackUIOperationResult
---@field None number @无作用
---@field HasEffect number @有作用
EBackpackUIOperationResult = {}


---需启用及配合新背包系统使用，具体参见 https://developer.gp.qq.com/wikieditor/#/catalog/20104
---@class UGCBackpackSystemV2
UGCBackpackSystemV2 = {}

---获取背包组件(客户端仅能获取到自己的）
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return UBackpackComponentV2 @UGC V2背包组件
function UGCBackpackSystemV2.GetBackpackComponentV2(Player) end

---获取背包UI组件(客户端）
---生效范围：客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return UBackpackUIComponentV2 @UGC V2背包UI组件
function UGCBackpackSystemV2.GetBackpackUIComponentV2(Player) end

---验证ItemDefineID是否合法
---防止外挂非法篡改ItemDefineID的数据
---请注意，空的ItemDefineID是合法的
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品 DefineID
---@return boolean @是否合法
function UGCBackpackSystemV2.VerifyItemDefineIDInBackpack(Player, ItemDefineID) end

---凭空添加物品
---生效范围：服务器
---使用 ItemID（配置ID）创建物品。创建的物品会自动尝试合并到已有堆叠上。堆叠时，如果超过最大堆叠数，将进行分堆。
---函数返回会返回成功添加的物品数量，和所有新创建的分堆的实例ID（只有产生新的分堆，才会返回实例ID）。
---如果有多个已有的的分堆，将会尽量尝试将所有分堆都填充到最大堆叠数，才开辟新的分堆。
---新物品不会合并到拥有实例化数据的物品分堆。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemID number @物品ID
---@param Count number @数量
---@return number, ItemDefineID[] @已成功添加的物品数量，成功添加的物品实例列表
function UGCBackpackSystemV2.AddItemV2(Player, ItemID, Count) end

---检查初始化持久化完成
---生效范围：服务器 & 客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return boolean @是否初始化持久化完成
function UGCBackpackSystemV2.CheckInitPersistCompleted(Player) end

---指定 ItemDefineID(实例ID) 添加物品
---生效范围：服务器
---这个是高级版的添加物品接口，简单需求建议使用“UGCBackpackSystemV2.AddItemV2”。
---由于 ItemDefineID 需要保证唯一，因此需要使用全新的 ItemDefineID 创建物品（UGCItemSystemV2.GetItemDefineID）。
---如果使用另一物品的 ItemDefineID 创建物品，将导致 ID 混乱。
---接口最多创建一个新堆叠，此堆叠的实例ID即函数传入的实例ID。如果此堆叠无法容纳所有需要创建的物品数量，将有一部分物品创建失败。
---接受的实例ID可以提前塞入实例化数据。
---此功能可以用于创建一些随机属性的装备，然后添加进入背包（当然也可以发挥创意，实现其它趣味功能）。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param DefineID ItemDefineID @物品 DefineID
---@param Count number @数量
---@param AllowMerge boolean @是否允许合并到已有堆叠(默认true)
---@return number @已成功添加的物品数量
function UGCBackpackSystemV2.AddItemByDefineIDV2(Player, DefineID, Count, AllowMerge) end

---指定ItemID(配置ID)移除物品
---不生成可拾取物
---生效范围：服务器&客户端
---移除时背包将只关注数量，不关注具体是哪个实例。一般适用于不同实例物品都等价的情况。
---由于是由服务器实际执行移除操作，客户端调用后无法立刻获得实际移除的物品数量。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemID number @物品 ID
---@param Count number @数量
---@return number @服务器:实际移除的物品数量 | 客户端:返回 0
function UGCBackpackSystemV2.RemoveItemV2(Player, ItemID, Count) end

---移除指定物品实例
---不生成可拾取物
---生效范围：服务器&客户端
---只会移除指定的物品实例，不会波及到其它物品实例。
---由于是由服务器实际执行移除操作，客户端调用后无法立刻获得实际移除的物品数量。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品 DefineID
---@param Count number @数量
---@return number @服务器:实际移除的物品数量 | 客户端:返回 0
function UGCBackpackSystemV2.RemoveItemByDefineIDV2(Player, ItemDefineID, Count) end

---指定ItemID(配置ID)丢弃物品
---生成可拾取物
---生效范围：服务器&客户端
---丢弃时背包将只关注数量，不关注具体是哪个实例。一般适用于不同实例物品都等价的情况。
---由于是由服务器实际执行丢弃操作，客户端调用后无法立刻获得实际丢弃的物品数量。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemID number @物品 ID
---@param Count number @数量
---@return number @服务器:实际丢弃的物品数量 | 客户端:返回 0
function UGCBackpackSystemV2.DropItemV2(Player, ItemID, Count) end

---丢弃指定物品实例
---生成可拾取物
---生效范围：服务器&客户端
---只会丢弃指定的物品实例，不会波及到其它物品实例。
---丢弃后生成的可拾取物（PickupWrapper）对应的实例ID与丢弃时指定的实例ID并不相同。
---可拾取物将获得一个全新的实例ID，新实例ID依然具有原始实例物品的所有实例化数据。
---由于是由服务器实际执行丢弃操作，客户端调用后无法立刻获得实际丢弃的物品数量。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品 DefineID
---@param Count number @数量
---@return number @服务器:实际丢弃的物品数量 | 客户端:返回 0
function UGCBackpackSystemV2.DropItemByDefineIDV2(Player, ItemDefineID, Count) end

---尝试整理物品
---尝试将背包中的物品整理整齐(将可堆叠的物品尽量堆叠起来)
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
function UGCBackpackSystemV2.TrySortOutItemV2(Player) end

---背包内的物品是否可以使用
---生效范围：服务器&客户端
---默认情况下，返回值等同于物编中物品的"是否可使用"配置
---若在背包组件上重写了CanUseItemV2，将调用重写后的函数并返回
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品 DefineID
---@return boolean @物品是否可以使用
function UGCBackpackSystemV2.CanUseItemV2(Player, ItemDefineID) end

---背包内的物品是否可以移除
---生效范围：服务器&客户端
---默认情况下，若物编中物品"是否可移除"配置为true，要移除多少就返回多少，否则返回0
---若在背包组件上重写了CanRemoveItemV2，将调用重写后的函数并返回
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品 DefineID
---@param Count number @要移除的数量
---@return number @物品可移除的数量
function UGCBackpackSystemV2.CanRemoveItemV2(Player, ItemDefineID, Count) end

---背包内的物品是否可以丢弃
---生效范围：服务器&客户端
---默认情况下，若物编中物品"是否可丢弃"配置为true，要移除多少就返回多少，否则返回0
---若在背包组件上重写了CanDropItemV2，将调用重写后的函数并返回
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品 DefineID
---@param Count number @要丢弃的数量
---@return number @物品可丢弃数量
function UGCBackpackSystemV2.CanDropItemV2(Player, ItemDefineID, Count) end

---使用指定物品
---生效范围：服务器&客户端
---只会使用指定的物品实例，不会波及到其它物品实例。
---由于是由服务器实际执行使用操作，客户端调用后无法立刻获得实际使用物品的结果。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品 DefineID
---@return boolean @服务器:是否使用成功 | 客户端:不管成功失败都返回 true
function UGCBackpackSystemV2.UseItemV2(Player, ItemDefineID) end

---取消使用指定物品
---与 UseItem 对应，用于清理状态
---永远成功，没有失败条件
---支持多次调用，不产生额外副作用，移除物品时自动调用清理
---生效范围：服务器&客户端
---在和平的设计中，物品没有维护"使用中"的状态，因此 Disuse 和 Use 并非是完全对称的概念（和平经典背包与V2背包都遵循这个规则）。物品 Disuse 主要是用于物品清理状态。
---由于是由服务器实际执行取消使用操作，客户端调用后无法立刻获得实际取消使用物品的结果。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品DefineID
function UGCBackpackSystemV2.DisuseItemV2(Player, ItemDefineID) end

---获取物品数量
---如果有多个实例，将获取它们的总数量
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemID number @物品ID
---@return number @背包内物品数量
function UGCBackpackSystemV2.GetItemCountV2(Player, ItemID) end

---获取物品实例数量
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品 DefineID
---@return number @背包内物品实例数量
function UGCBackpackSystemV2.GetItemCountByDefineIDV2(Player, ItemDefineID) end

---通过物品 ID，获取所有此 ID 物品实例
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemID number @物品ID
---@return ItemDefineID[] @满足条件的物品实例 DefineID
function UGCBackpackSystemV2.GetItemDefineIDsByIDV2(Player, ItemID) end

---通过物品 Tag，获取所有含此 Tag 物品实例
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemTag string @物品Tag
---@return ItemDefineID[] @满足条件的物品实例 DefineID
function UGCBackpackSystemV2.GetItemDefineIDsByTagV2(Player, ItemTag) end

---获取所有物品实例
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---只会获得V2背包支持的物品类型，一般为玩法功能性物品（武器、配件、弹药、药品、装备等）。
---经典背包中的部分特殊物品不在此列（服装、皮肤、表情等）。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return ItemDefineID[] @背包内所有物品实例 DefineID
function UGCBackpackSystemV2.GetAllItemDefineIDsV2(Player) end

---获取所有装备槽位名称
---返回装备槽位的顺序与V2背包组件配置顺序一致。
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return FName[] @背包所有装备槽位名称
function UGCBackpackSystemV2.GetEquipSlots(Player) end

---获取槽位中文名
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param SlotName string @槽位名称
---@return string @槽位中文名
function UGCBackpackSystemV2.GetSlotDisplayName(Player, SlotName) end

---物品是否能装在槽位上(根据配置信息判断)
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemID number @物品ID
---@param SlotName string @槽位名称
---@return boolean @true:可以装备 false:不可以装备
function UGCBackpackSystemV2.ItemCanEquipToSlot(Player, ItemID, SlotName) end

---获取指定装备槽位所装备的物品
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param SlotName string @槽位名称
---@return ItemDefineID @槽位所装备的物品
function UGCBackpackSystemV2.GetEquippedItemBySlotName(Player, SlotName) end

---获取指定物品在背包上装备的槽位
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param DefineID ItemDefineID @物品实例 DefineID
---@return string @物品在背包上装备的槽位。若为空字符串，则物品未装备在背包槽位上。
function UGCBackpackSystemV2.GetItemEquippingSlot(Player, DefineID) end

---将物品装在指定槽位
---生效范围：服务器&客户端
---如果此物品已经装备在某个槽位上，将不再能够再次装备。
---只有从部分模板中创建的物品拥有装备功能。
---如果槽位上配置了类型约束，那将只有对应类型的物品能够装备。
---如果对应槽位已经装备了其它物品，会触发卸下装备，然后再将指定物品装备到此槽位。
---一般物品都会占用背包格子容量，但装备后的物品不再占用背包容量。
---由于是由服务器实际执行装备操作，客户端调用后无法立刻获得实际装备的结果。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param SlotName string @槽位名称
---@param DefineID ItemDefineID @物品实例 DefineID
---@return boolean @服务器:是否装备成功 | 客户端:不管成功失败都返回 true
function UGCBackpackSystemV2.EquipItemV2(Player, SlotName, DefineID) end

---将指定槽位的物品卸下
---生效范围：服务器&客户端
---一般物品都会占用背包格子容量，但装备后的物品不再占用背包容量（参考容量限制功能 ）。
---一般情况下如果背包容量已满，卸下装备将会失败。
---由于是由服务器实际执行卸下装备操作，客户端调用后无法立刻获得实际卸下装备的结果。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param SlotName string @槽位名称
---@return boolean @服务器:是否卸下成功 | 客户端:不管成功失败都返回 true
function UGCBackpackSystemV2.UnEquipItemV2(Player, SlotName) end

---将物品装在任意槽位
---生效范围：服务器&客户端
---功能类似 EquipItemV2，但无需指定槽位。
---它将会尽量找到一个可装备的空槽位去尝试装备。
---如果所有可装备的槽位都非空，它会尝试向一个非空槽位装备。此时此槽位的原物品，将被卸下。
---由于是由服务器实际执行装备操作，客户端调用后无法立刻获得实际装备的结果。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param DefineID ItemDefineID @物品实例 DefineID
---@return boolean @服务器:是否装备成功 | 客户端:不管成功失败都返回 true
function UGCBackpackSystemV2.EquipItemToAnySlotV2(Player, DefineID) end

---交换两个槽位的装备(若其中一个槽位为空,其意义变为将一个槽位的装备移至另一槽位)
---生效范围：服务器&客户端
---交换功能的效果，并不完全与分别卸下再重新装备相同。
---一方面，卸下时可能受背包容量限制。
---另一方面，装备和卸下将触发物品Handle上对应的事件（OnEquip、OnUnEquip）。
---但交换装备时不触发它们，而是对交换槽位的物品Handle分别触发 OnSwapEquipSlot 。
---由于是由服务器实际执行交换操作，客户端调用后无法立刻获得实际交换的结果。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param SlotNameA string @槽位名称A
---@param SlotNameB string @槽位名称B
---@return boolean @服务器:是否交换成功 | 客户端:不管成功失败都返回 true
function UGCBackpackSystemV2.SwapEquipSlotV2(Player, SlotNameA, SlotNameB) end

---将物品A附加到另一个物品B的槽位上
---要求物品A和物品B都在背包中
---生效范围：服务器&客户端
---当某物品A附加到一个已装备在背包槽位上的物品B时，物品A也视为进入装备状态，触发物品Handle的OnEquip事件。
---当某物品A附加到另一物品B后，物品B装备到了背包槽位上。此时A会随B一起，进入装备状态，触发物品Handle的OnEquip事件。
---由于是由服务器实际执行附加操作，客户端调用后无法立刻获得实际附加的结果。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param Equipment ItemDefineID @物品A
---@param TargetItem ItemDefineID @物品B
---@param SlotName string @物品B上的目标槽位
---@return boolean @服务器:是否附加成功 | 客户端:不管成功失败都返回 true
function UGCBackpackSystemV2.AttachEquipmentToTargetItem(Player, Equipment, TargetItem, SlotName) end

---解除附加在物品B槽位上的物品A
---生效范围：服务器&客户端
---当某物品A附加到一个已装备在背包槽位上的物品B时，物品A也视为进入装备状态。此时若A解除对B的附加，将取消A的装备状态，触发物品Handle的OnUnEquip事件。
---由于是由服务器实际执行附加操作，客户端调用后无法立刻获得实际附加的结果。且在服务器执行完毕并将结果同步到客户端之前，客户端本地数据不会立刻改变。
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param TargetItem ItemDefineID @物品B
---@param SlotName string @物品B上的目标槽位
---@return boolean @服务器:是否解除附加成功 | 客户端:不管成功失败都返回 true
function UGCBackpackSystemV2.DetachEquipmentToTargetItem(Player, TargetItem, SlotName) end

---获取仓库物品实例数量
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @物品实例 DefineID
---@return number @仓库内物品实例数量
function UGCBackpackSystemV2.GetWarehouseItemCountByDefineID(Player, ItemDefineID) end

---获取仓库物品数量
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemID number @物品ID
---@return number @仓库内物品数量
function UGCBackpackSystemV2.GetWarehouseItemCount(Player, ItemID) end

---获取仓库内所有物品实例
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return ItemDefineID[] @仓库内所有物品实例 DefineID
function UGCBackpackSystemV2.GetAllWarehouseItemDefineIDs(Player) end

---将背包物品放入仓库
---请注意，实例ID将被转换，真正进入仓库的实例ID和传入的实例ID有所不同
---生效范围：服务器
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @放入的物品实例ID
---@param PutOnCount number @放入的物品数量
---@return FUGCItemTransferResult @物品转移结果
function UGCBackpackSystemV2.PutInWarehouse(Player, ItemDefineID, PutOnCount) end

---将物品从仓库取出
---请注意，实例ID将被转换，真正回到背包的实例ID和传入的实例ID有所不同
---生效范围：服务器
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemDefineID ItemDefineID @取出的物品实例ID
---@param TakeOutCount number @取出的物品数量
---@return FUGCItemTransferResult @物品转移结果
function UGCBackpackSystemV2.TakeOutWarehouse(Player, ItemDefineID, TakeOutCount) end

---尝试整理仓库物品
---尝试将仓库中的物品整理整齐
---整理过程中会将可堆叠的物品尽量堆叠起来
---生效范围：服务器
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
function UGCBackpackSystemV2.TrySortOutWarehouseItem(Player) end

---获取物品占据背包格子数
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return number @物品占据背包格子数
function UGCBackpackSystemV2.GetCellItemCount(Player) end

---获取解锁背包格子容量
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return number @背包格子容量
function UGCBackpackSystemV2.GetCellCapacity(Player) end

---获取背包格子容量上限
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return number @背包格子容量上限
function UGCBackpackSystemV2.GetMaxCellCapacity(Player) end

---增加解锁背包格子容量
---生效范围：服务器
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param AddCount number @要增加的容量数
---@return boolean @是否增加成功
function UGCBackpackSystemV2.AddCellCapacity(Player, AddCount) end

---增加背包格子容量上限(同时增加解锁格子数)
---生效范围：服务器
---背包物品同款功能，扩充额外的容量
---扩充的容量不会持久化(与背包扩容不同)
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param AddCount number @要增加的容量数
---@return boolean @是否增加成功
function UGCBackpackSystemV2.AddMaxCellCapacity(Player, AddCount) end

---减少背包格子容量上限(同时减少解锁格子数)
---生效范围：服务器
---背包物品同款功能，减掉扩充的额外容量
---减扩的容量不会持久化(与背包扩容不同)
---使用此接口后，如果有持久化物品，跨对局后可能因为新对局中容量不足而导致物品超限(超限后默认将自动丢弃超限物品)
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param RemoveCount number @要减少的容量数
---@return boolean @是否减少成功
function UGCBackpackSystemV2.RemoveMaxCellCapacity(Player, RemoveCount) end

---获取解锁仓库格子容量
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return number @仓库格子容量
function UGCBackpackSystemV2.GetWarehouseCellCapacity(Player) end

---获取仓库格子容量上限
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return number @仓库格子容量上限
function UGCBackpackSystemV2.GetWarehouseMaxCellCapacity(Player) end

---增加仓库格子容量
---生效范围：服务器
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param AddCount number @要增加的容量数
---@return boolean @是否增加成功
function UGCBackpackSystemV2.AddWarehouseCellCapacity(Player, AddCount) end

---获取所有占背包格子的物品实例
---Attach 附加到其它物品上的物品，或装备在背包上的物品，不占用背包格子。
---货币类型不占用背包格子。
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return ItemDefineID[] @所有占背包格子的物品 DefineID
function UGCBackpackSystemV2.GetAllCellItemDefineIDsV2(Player) end

---获取所有占仓库格子的物品实例
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return ItemDefineID[] @所有占仓库格子的物品 DefineID
function UGCBackpackSystemV2.GetAllCellWarehouseItemDefineIDsV2(Player) end

---背包格子是否已满
---客户端数据可能稍微滞后
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return boolean @背包格子是否已满
function UGCBackpackSystemV2.IsCellCapacityFull(Player) end

---获取货币类型的物品ID
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return int[] @所有货币物品ID
function UGCBackpackSystemV2.GetCurrencyIDList(Player) end

---物品是否为货币
---生效范围：服务器&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param ItemID number @物品ID
---@return boolean @物品是否为货币
function UGCBackpackSystemV2.IsCurrency(Player, ItemID) end

---打开背包主界面
---生效范围：客户端
---@param Style number @[0:全屏背包, 1:半屏背包, nil:读默认配置]
---@param Mode number @[1:背包 + 装备  2:背包 + 仓库  3:背包 + 仓库 + 装备 nil:读默认配置]
function UGCBackpackSystemV2.OpenBackpackPanelStyle(Style, Mode) end

---打开背包主界面
---生效范围：客户端
---@param Mode number @1:背包 + 装备 2:背包 + 仓库 3:背包 + 仓库 + 装备 [4-6]同1-3，形式为半屏背包
function UGCBackpackSystemV2.OpenBackpackPanel(Mode) end

---关闭背包主界面
---生效范围：客户端
function UGCBackpackSystemV2.CloseBackpackPanel() end

---清除物品新标记(不会刷新背包UI，需重新打开)
---生效范围：客户端
---调用时机: 任意时机(不依赖背包UI)
---@param bOnce boolean @true:仅清除一次 false:始终清除，包含后续新进物品
function UGCBackpackSystemV2.ClearItemNewLabel(bOnce) end

---启用背包槽位
---生效范围：服务端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param SlotName string @槽位名称
function UGCBackpackSystemV2.SetEquipSlotEnable(Player, SlotName) end

---获取背包槽位启用状态
---生效范围：服务端&客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param SlotName string @槽位名称
---@return boolean @槽位是否启用
function UGCBackpackSystemV2.GetEquipSlotEnable(Player, SlotName) end

---获取指定类型的自定义控件（打开过背包才会添加自定义控件）
---生效范围：客户端
---注意，背包UI在物品变更后延时刷新，不要在添加物品后 立即获取格子自定义控件
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@param Type ECustomUIType @自定义控件种类
---@param DefineID ItemDefineID @查询具体实例的格子自定义UI
---@return UserWidget @自定义控件 | UserWidget[] @自定义控件数组
function UGCBackpackSystemV2.GetCustomUIWidget(Player, Type, DefineID) end

---获取指定物品的自定义格子UI蓝图路径列表
---生效范围：客户端
---@param ItemID number @物品ID
---@return table @自定义UI蓝图路径列表
function UGCBackpackSystemV2.GetCustomItemUIWidgetPathsByItemID(ItemID) end

---显隐背包按钮
---生效范围：客户端
---@param Visible boolean @是否可见
function UGCBackpackSystemV2.SetBackpackButtonVisible(Visible) end

---获取背包UI选中态变化委托
---生效范围：客户端
---背包控件的选中数据 SelectData:
---背包格子：table {ItemDefineID:物品DefineID, DataType:string, ItemIdx:格子位置索引, WeakWidget:控件弱引用,通过WeakWidget:Get()获取控件}
---其他控件(装备、武器、槽位): table {ItemDefineID:物品DefineID, DataType:string, WeakWidget:控件弱引用}
---可以通过DataType判断点击了哪个区域的UI控件，背包内核UI对应的DataType定义在EItemDataTypeStrs
---@return Delegate @选中变化委托 {table:控件选中数据, boolean:是否选中}
function UGCBackpackSystemV2.GetUISelectItemChangeDelegate() end