---@meta

---V2背包操作事件类型
---@class EItemOperationTypeV2
---@field Add number
---@field Drop number
---@field Remove number
---@field Use number
---@field Disuse number
---@field Equip number
---@field UnEquip number
---@field SwapEquip number
---@field Attach number
---@field Detach number
EItemOperationTypeV2 = {}


---@class EUGCAddItemReason
---@field Default number
---@field Initialize number
---@field Transfer number
---@field Pickup number
EUGCAddItemReason = {}


---@class EUGCRemoveItemReason
---@field Default number
---@field Transfer number
---@field ExceedCellCapacity number
---@field SortOut number
EUGCRemoveItemReason = {}


---V2背包操作事件信息
---@class FItemOperationInfoV2
---@field DefineID FItemDefineID @触发操作的物品 DefineID
---@field ItemOperationType EItemOperationTypeV2 @触发的操作类型  (SwapEquip 类型的操作将触发2次事件，分别对应两个物品)
---@field CommonReason number @触发操作时物品携带的通用 Reason
---@field Count number @被操作的物品数量 添加、丢弃、移除时表示对应的数量 其它操作 Count 数量为 1
---@field TargetDefineID FItemDefineID @Attach: 附加的物品 DefineID Detach: 解除附加的物品 DefineID SwapEquip: 与此物品交换的物品 DefineID  其它操作类型此变量无意义
---@field TargetSlot string @Equip: 装备的目标槽位 UnEquip: 从哪个槽位卸下 Attach: 附加物品的槽位 Detach: 解除附加物品的槽位 SwapEquip: 交换装备后物品的新槽位  其它操作类型此变量无意义
FItemOperationInfoV2 = {}


---@class FBackpackComponentV2_EquipSlot
---@field SlotName FGameplayTag
---@field SlotDisplayName string
---@field SlotTypeConstraint FItemEquipSlot_TypeConstraint
---@field bAvailable boolean
---@field SlotState ESlotDisableShowType
---@field LockTips string
FBackpackComponentV2_EquipSlot = {}


---@class FBackpackComponentV2_DirtyInstanceData
---@field DataVersion number
---@field ItemDefineID FItemDefineID
---@field ItemInstanceData FUGCBattleItemInstanceData
FBackpackComponentV2_DirtyInstanceData = {}


---@class FBackpackV2CellCapacityChange : ULuaMulticastDelegate
FBackpackV2CellCapacityChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewCapacity: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBackpackV2CellCapacityChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewCapacity number
function FBackpackV2CellCapacityChange:Broadcast(NewCapacity) end


---@class FBackpackItemInstanceDataChange : ULuaSingleDelegate
FBackpackItemInstanceDataChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBackpackItemInstanceDataChange:Bind(Callback, Obj) end

---执行委托
function FBackpackItemInstanceDataChange:Execute() end


---@class FBackpackItemAttachParentChange : ULuaMulticastDelegate
FBackpackItemAttachParentChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemDefineID: FItemDefineID, OldAttachItem: FItemDefineID, OldAttachSlotName: string, NewAttachItem: FItemDefineID, NewAttachSlotName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBackpackItemAttachParentChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemDefineID FItemDefineID
---@param OldAttachItem FItemDefineID
---@param OldAttachSlotName string
---@param NewAttachItem FItemDefineID
---@param NewAttachSlotName string
function FBackpackItemAttachParentChange:Broadcast(ItemDefineID, OldAttachItem, OldAttachSlotName, NewAttachItem, NewAttachSlotName) end


---@class FItemOperationInfoDelegateV2 : ULuaMulticastDelegate
FItemOperationInfoDelegateV2 = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemOperationInfo: FItemOperationInfoV2) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemOperationInfoDelegateV2:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemOperationInfo FItemOperationInfoV2
function FItemOperationInfoDelegateV2:Broadcast(ItemOperationInfo) end


---@class FItemUsingStateDelegateV2 : ULuaMulticastDelegate
FItemUsingStateDelegateV2 = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemDefineID: FItemDefineID, bUse: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemUsingStateDelegateV2:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemDefineID FItemDefineID
---@param bUse boolean
function FItemUsingStateDelegateV2:Broadcast(ItemDefineID, bUse) end


---V2背包内核组件
---@class UBackpackComponentV2: UCommonBackpackComponent, IUGCItemContainerInterface, IUGCItemEquipTargetInterface, IUGCGamePartPlayerComponentInterface
---@field EquipSlotsConfig ULuaArrayHelper<FBackpackComponentV2_EquipSlot>
---@field CacheClient_DirtyInstanceDatas ULuaArrayHelper<FBackpackComponentV2_DirtyInstanceData>
---@field OnCellCapacityChange FBackpackV2CellCapacityChange @当背包格子容量改变时广播 广播范围：服务端 & 客户端
---@field OnMaxCellCapacityChange FBackpackV2CellCapacityChange @当背包格子容量上限改变时广播 广播范围：服务端 & 客户端
---@field OnWarehouseCellCapacityChange FBackpackV2CellCapacityChange @当仓库格子容量改变时广播 广播范围：服务端 & 客户端
---@field ItemUsingStateDelegateV2 FItemUsingStateDelegateV2 @背包物品使用状态变化时广播 广播范围: 服务端 @param	ItemDefineID 物品DefefineID @param	bUse true:开始使用,false:停止使用
---@field ItemChangeDelegateV2 FUGCItemChangeDelegate @当物品实例数据发生改变时广播 广播范围：服务端 & 客户端
---@field ItemAddDelegateV2 FUGCItemAddDelegate @当新增物品实例时广播 广播范围：服务端 & 客户端
---@field ItemUpdateDelegateV2 FUGCItemUpdateDelegate @当物品实例数据更新时广播 广播范围：服务端 & 客户端
---@field ItemRemoveDelegateV2 FUGCItemRemoveDelegate @当移除物品实例时广播 广播范围：服务端 & 客户端
---@field ItemInstanceDataChangeV2 FBackpackItemInstanceDataChange @当背包物品实例化数据发生改变时广播 广播范围：客户端
---@field ItemAttachParentChangeDelegateV2 FBackpackItemAttachParentChange @当物品附加的Parent发生改变时广播 广播范围：服务端 & 客户端  ItemDefineID: 哪个物品的 Parent 发生了改变 OldAttachItem: 改变之前物品的 Parent OldAttachSlotName: 改变之前物品所在的槽位 NewAttachItem: 改变之后物品的 Parent NewAttachSlotName: 改变之后物品所在的槽位 如果物品是直接装备在背包上，AttachItem 将为空物品 ( TypeSpecificID 为 0 ) ，AttachSlotName 为背包槽位名称。
---@field ItemOperationInfoDelegateV2 FItemOperationInfoDelegateV2 @当对物品操作成功后广播 广播范围：服务端
---@field bInitPersistCompleted boolean
---@field DefaultCellCapacity number
---@field DefaultMaxCellCapacity number
---@field DefaultWarehouseCapacity number
---@field MaxWarehouseCapacity number
---@field V2ItemTypeList ULuaSetHelper<number>
---@field CellCapacity number
---@field MaxCellCapacity number
---@field ReleaseCapacity number
---@field PersistMaxCapacity number
---@field ReleaseWarehouseCapacity number
---@field CurrencyItemList ULuaArrayHelper<number>
---@field OperateDepth number
local UBackpackComponentV2 = {}

function UBackpackComponentV2:PrintBackpackData() end

---凭空添加物品 可能因容量(或其它)限制，只能部分添加 可能合并到已有物品实例上 可能添加出多个物品实例 DS 可调用 如果等于 Count 表示所有物品已成功添加到背包 如果等于 0 表示没有物品被添加到背包
---@param ItemID number
---@param Count number
---@param NewItemDefineIDs ULuaArrayHelper<FItemDefineID>
---@param AllowMerge boolean
---@return number
function UBackpackComponentV2:AddItemV2(ItemID, Count, NewItemDefineIDs, AllowMerge) end

---指定 ItemDefineID 添加物品 可能因容量(或其它)限制，只能部分添加 可能合并到已有物品实例上 DS 可调用 如果等于 Count 表示所有物品已成功添加到背包 如果等于 0 表示没有物品被添加到背包
---@param DefineID FItemDefineID
---@param Count number
---@param AllowMerge boolean
---@return number
function UBackpackComponentV2:AddItemByDefineIDV2(DefineID, Count, AllowMerge) end

---Event
---能否添加物品，能添加多少物品
---可重载并自定义
---DS 被调用
---能通过此事件，决定调用 AddItemV2 时，允许添加多少物品。
---即使此事件允许添加物品，也可能因为其它限制因素导致物品添加数量减少或添加失败。
---部分强制添加物品的情形，会跳过此事件。
---@param ItemID number @物品ID
---@param Count number @需要添加的物品数量
---@return number @允许添加的物品数量，如果等于 Count 表示允许添加所有需要的物品
function UBackpackComponentV2:CanAddItemV2(ItemID, Count) end

---Event
---能否添加物品，能添加多少物品
---可重载并自定义
---DS 被调用
---能通过此事件，决定添加某个实例物品时，允许添加多少物品。
---此接口针对具体实例，调用AddItemV2、调用AddItemByDefineIDV2、物品转移等情形都可能触发此事件。
---单次调用 AddItemV2 可能触发多次针对不同实例的 CanAddItemByDefineIDV2 判断。
---即使此事件允许添加物品，也可能因为其它限制因素导致物品添加数量减少或添加失败。
---部分强制添加物品的情形，会跳过此事件。
---@param DefineID FItemDefineID
---@param Count number @需要添加的物品数量
---@return number @允许添加的物品数量，如果等于 Count 表示允许添加所有需要的物品
function UBackpackComponentV2:CanAddItemByDefineIDV2(DefineID, Count) end

---Event
---当添加物品实例后回调
---可重载并自定义
---DS 被调用
---当物品实例被成功添加时触发此事件。
---单次 AddItemV2 可能触发多次针对不同实例的 OnAddItem 调用（生成多个堆叠的情况）。
---如果物品触发了自动装备，可能装备相关事件会先于 OnAddItemV2 被触发。
---@param ItemDefineID FItemDefineID @物品DefineID
---@param Count number @已添加的物品数量
function UBackpackComponentV2:OnAddItemV2(ItemDefineID, Count) end

---Event
---能否合并物品(将新增的物品叠加到已有格子上)
---可重载并自定义
---DS 被调用
---能通过此事件，决定多少物品能堆叠到已有堆叠（ItemDefineID）上。
---此接口针对具体实例，调用AddItemV2、调用AddItemByDefineIDV2、物品转移等情形都可能触发此事件。
---单次 AddItemV2 可能触发多次针对不同实例的 CanMergeItem 判断（向多个堆叠合并时）。
---即使此事件允许堆叠物品，也可能因为其它限制因素导致物品堆叠数量减少或堆叠失败。
---部分情形下会跳过此事件。
---@param ItemDefineID FItemDefineID @物品DefineID
---@param CountNow number @当前实例的物品数量
---@param MergeCount number @即将合并到此实例，新增的物品数量
---@return number @允许合并到格子的物品数量，如果等于 Count 表示允许合并所有需要的物品
function UBackpackComponentV2:CanMergeItemV2(ItemDefineID, CountNow, MergeCount) end

---Event
---当合并物品后回调(将新增的物品叠加到已有格子上)
---可重载并自定义
---DS 被调用
---此接口针对具体实例，调用AddItemV2、调用AddItemByDefineIDV2、物品转移等情形都可能触发此事件。
---单次 AddItemV2 可能触发多次针对不同实例的 OnMergeItemV2 事件（向多个堆叠合并时）。
---@param ItemDefineID FItemDefineID @物品DefineID
---@param OldCount number @合并前的物品数量
---@param MergeCount number @此次合并操作新增的物品数量
function UBackpackComponentV2:OnMergeItemV2(ItemDefineID, OldCount, MergeCount) end

---移除物品(不生成可拾取物) 仅指定物品ID，不指定实例 它可能触发多次针对不同实例的移除操作 DS 可调用 Client 可调用，但只返回 0 Client:	返回 0
---@param ItemID number
---@param Count number
---@return number
function UBackpackComponentV2:RemoveItemV2(ItemID, Count) end

---移除物品(不生成可拾取物) 仅移除指定物品实例 DS 可调用 Client 可调用，但只返回 0 Client:	返回 0
---@param ItemDefineID FItemDefineID
---@param Count number
---@return number
function UBackpackComponentV2:RemoveItemByDefineIDV2(ItemDefineID, Count) end

---Event
---能否移除物品，能移除多少物品
---可重载并自定义
---DS、Client 被调用
---能通过此事件，决定多少物品能被移除。
---此接口针对具体实例，调用RemoveItemV2、调用RemoveItemByDefineIDV2、物品转移等情形都可能触发此事件。
---单次 RemoveItemV2 可能触发多次针对不同实例的 CanRemoveItemV2 判断（单个堆叠数量不足时）。
---即使此事件允许移除物品，也可能因为其它限制因素导致移除数量减少或移除失败。
---部分情形下会跳过此事件。
---@param ItemDefineID FItemDefineID @物品DefineID
---@param Count number @需要移除的物品数量
---@return number @允许移除的物品数量，如果等于 Count 表示允许移除所有需要的物品
function UBackpackComponentV2:CanRemoveItemV2(ItemDefineID, Count) end

---Event
---当移除物品后回调
---可重载并自定义
---DS 被调用
---此接口针对具体实例，调用RemoveItemV2、调用RemoveItemByDefineIDV2、物品转移等情形都可能触发此事件。
---单次 RemoveItemV2 可能触发多次针对不同实例的 OnRemoveItemV2 事件（单个堆叠数量不足时）。
---@param ItemDefineID FItemDefineID @物品DefineID，移除后可能已不存在于背包
---@param Count number @已移除的物品数量
function UBackpackComponentV2:OnRemoveItemV2(ItemDefineID, Count) end

---丢弃物品(生成可拾取物) 仅指定物品ID，不指定实例 它可能触发多次针对不同实例的移除操作 DS 可调用 Client 可调用，但只返回 0 Client:	返回 0
---@param ItemID number
---@param Count number
---@return number
function UBackpackComponentV2:DropItemV2(ItemID, Count) end

---指定实例丢弃物品(生成可拾取物) DS 可调用 Client 可调用，但只返回 0 Client:	返回 0
---@param ItemDefineID FItemDefineID
---@param Count number
---@return number
function UBackpackComponentV2:DropItemByDefineIDV2(ItemDefineID, Count) end

---Event
---能否丢弃物品，能丢弃多少物品
---可重载并自定义
---DS、Client 被调用
---能通过此事件，决定多少物品能被丢弃。
---此接口针对具体实例，调用DropItemV2、调用DropItemByDefineIDV2等情形都可能触发此事件。
---单次 调用 DropItemV2 可能触发多次针对不同实例的 CanDropItemV2 判断（单个堆叠数量不足时）。
---即使此事件允许丢弃物品，也可能因为其它限制因素导致丢弃数量减少或丢弃失败。
---部分情形下会跳过此事件。
---@param ItemDefineID FItemDefineID @物品DefineID
---@param Count number @需要丢弃的物品数量
---@return number @允许丢弃的物品数量，如果等于 Count 表示允许丢弃所有需要的物品
function UBackpackComponentV2:CanDropItemV2(ItemDefineID, Count) end

---Event
---当丢弃物品后回调
---可重载并自定义
---DS 被调用
---当物品被成功丢弃时，触发此事件。
---此接口针对具体实例，调用DropItemV2、调用DropItemByDefineIDV2等情形都可能触发此事件。
---单次 DropItemV2 可能触发多次针对不同实例的 OnDropItemV2 事件（单个堆叠数量不足时）。
---@param ItemDefineID FItemDefineID @物品DefineID，丢弃后可能已不存在于背包
---@param Count number @已丢弃的物品数量
function UBackpackComponentV2:OnDropItemV2(ItemDefineID, Count) end

---尝试整理物品 将可合并的物品尽量合并到一起 DS、Client 可调用
function UBackpackComponentV2:TrySortOutItemV2() end

---获取物品数量 如果有多个实例，将获取它们的总数量 DS 可调用 Client 可调用，但返回值可能稍微滞后 Client:	物品数量，数值可能稍微滞后
---@param ItemID number
---@return number
function UBackpackComponentV2:GetItemCountV2(ItemID) end

---获取物品数量 DS 可调用 Client 可调用，但返回值可能稍微滞后 Client:	物品数量，数值可能稍微滞后
---@param ItemDefineID FItemDefineID
---@return number
function UBackpackComponentV2:GetItemCountByDefineIDV2(ItemDefineID) end

---使用物品 仅配置为"可使用"的物品能够使用成功 仅通过 CanUse 检查的物品能够使用成功 DS 可调用 Client 可调用，但只返回 true Client:	返回 true ，无法得知是否使用成功
---@param ItemDefineID FItemDefineID
---@return boolean
function UBackpackComponentV2:UseItemV2(ItemDefineID) end

---Event
---能否使用物品
---可重载并自定义
---DS、Client 被调用
---DS 触发使用物品时，会触发并判断能否使用。
---即使此事件允许使用物品，也可能因为其它限制因素导致使用失败。
---部分情形下会跳过此事件。
---Client 背包UI选中物品时，会触发并判断是否显示使用按钮。
---@param ItemDefineID FItemDefineID @物品DefineID
---@return boolean @物品是否能够被使用
function UBackpackComponentV2:CanUseItemV2(ItemDefineID) end

---Event
---当物品触发使用后回调
---可重载并自定义
---DS 被调用
---@param ItemDefineID FItemDefineID @物品DefineID
function UBackpackComponentV2:OnUseItemV2(ItemDefineID) end

---取消使用物品 与 UseItem 对应，用于清理状态 支持多次调用，不产生额外副作用，移除物品时自动调用 DisuseItem 应该是永远成功的，没有失败条件 DS、Client 可调用
---@param ItemDefineID FItemDefineID
function UBackpackComponentV2:DisuseItemV2(ItemDefineID) end

---Event
---当物品触发 DisUseItem 完成后回调
---可重载并自定义
---DS 被调用
---@param ItemDefineID FItemDefineID @物品DefineID
function UBackpackComponentV2:OnDisuseItemV2(ItemDefineID) end

---获取对应 ID 的所有物品实例 ID DS 可调用 Client 可调用，但返回数据可能稍微滞后
---@param ItemID number
function UBackpackComponentV2:GetItemDefineIDsByIDV2(ItemID) end

---获取对应 Tag 的所有物品实例 ID DS 可调用 Client 可调用，但返回数据可能稍微滞后
---@param Tag string
function UBackpackComponentV2:GetItemDefineIDsByTagV2(Tag) end

---获取所有物品实例 ID DS 可调用 Client 可调用，但返回数据可能稍微滞后
function UBackpackComponentV2:GetAllItemDefineIDsV2() end

---获取对应实例ID的物品 DS 可调用 Client 可调用，但返回数据可能稍微滞后
---@param ItemDefineID FItemDefineID
function UBackpackComponentV2:GetItemV2(ItemDefineID) end

---获取所有物品实例 DS 可调用 Client 可调用，但返回数据可能稍微滞后
function UBackpackComponentV2:GetAllItemsV2() end

---@param DefineID FItemDefineID
---@param Count number
---@param AllowMerge boolean
---@return number
function UBackpackComponentV2:AddItemByDefineID_Internal(DefineID, Count, AllowMerge) end

---检查能否添加物品(它并不是一个好的通用接口，被设计用于物品转移前的判断) 传入的 Count 需要小于物品最大堆叠数量 深层次的检查，检查结果与真正执行 AddItemV2(AllowMerge==false) 的结果相同 DS 可调用
---@param ItemID number
---@param InstanceID number
---@param Count number
---@return number
function UBackpackComponentV2:CheckCanAddItem(ItemID, InstanceID, Count) end

---@param SlotName string
---@return boolean
function UBackpackComponentV2:UnEquipItem_Internal(SlotName) end

function UBackpackComponentV2:GetEquipSlots() end

---@param SlotName string
---@return string
function UBackpackComponentV2:GetSlotDisplayName(SlotName) end

---@param SlotName string
---@return FItemDefineID
function UBackpackComponentV2:GetEquippedItemBySlotName(SlotName) end

---@param SlotName string
---@param bEnable boolean
function UBackpackComponentV2:SetSlotEnable(SlotName, bEnable) end

---@param SlotName string
---@return boolean
function UBackpackComponentV2:GetSlotEnable(SlotName) end

---@param SlotName string
---@param DefineID FItemDefineID
---@return boolean
function UBackpackComponentV2:EquipItemV2(SlotName, DefineID) end

---@param SlotName string
---@return boolean
function UBackpackComponentV2:UnEquipItemV2(SlotName) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackComponentV2:EquipItemToAnySlotV2(DefineID) end

---@param SlotNameA string
---@param SlotNameB string
---@return boolean
function UBackpackComponentV2:SwapEquipSlotV2(SlotNameA, SlotNameB) end

---@param Equipment FItemDefineID
---@param TargetItem FItemDefineID
---@param SlotName string
---@return boolean
function UBackpackComponentV2:AttachEquipmentToTargetItem(Equipment, TargetItem, SlotName) end

---@param TargetItem FItemDefineID
---@param SlotName string
---@return boolean
function UBackpackComponentV2:DetachEquipmentToTargetItem(TargetItem, SlotName) end

function UBackpackComponentV2:InvalidAllEquipment() end

function UBackpackComponentV2:ValidAllEquipment() end

---Event
---其它物品是否能装备到此槽位
---当物品尝试装备在背包槽位时触发
---DS 被调用
---开发者能通过此事件，决定调用 EquipItemV2 时，是否允许装备。
---即使此事件允许装备物品，也可能因为其它限制因素导致物品装备失败。
---部分强制装备物品的情形，会跳过此事件。
---@param SlotName string @槽位名称
---@param ItemDefineID FItemDefineID @即将装备在此槽位的物品
---@return boolean
function UBackpackComponentV2:CanAttachToSlot_Implementation(SlotName, ItemDefineID) end

---Event
---当其它物品装备到此槽位
---当物品成功装备在背包槽位时触发
---DS 被调用
---@param SlotName string @槽位名称
---@param ItemDefineID FItemDefineID @已装备在此槽位的物品
function UBackpackComponentV2:OnAttachToSlot_Implementation(SlotName, ItemDefineID) end

---Event
---当物品成功从背包槽位卸下时触发
---DS 被调用
---@param SlotName string @槽位名称
---@param ItemDefineID FItemDefineID @已从此槽位卸下的物品
function UBackpackComponentV2:OnDetachBySlot_Implementation(SlotName, ItemDefineID) end

---Event
---物品能否自动装备
---当配置了自动装备的物品尝试自动装备时触发
---DS 被调用
---开发者能通过此事件，阻止物品自动装备到背包或Attach到其它物品上。
---手动装备或主动调用装备时，不受此函数影响。
---@param ItemDefineID FItemDefineID @即将装备在此槽位的物品
---@return boolean
function UBackpackComponentV2:CanAutoEquip(ItemDefineID) end

---@param ItemDefineID FItemDefineID
---@return number
function UBackpackComponentV2:GetWarehouseItemCountByDefineID(ItemDefineID) end

---@param ItemID number
---@return number
function UBackpackComponentV2:GetWarehouseItemCount(ItemID) end

function UBackpackComponentV2:GetAllWarehouseItemDefineIDs() end

---获取仓库所有占格子的物品实例 ID DS 可调用 Client 可调用，但返回数据可能稍微滞后
function UBackpackComponentV2:GetAllCellWarehouseItemDefineIDsV2() end

---@param ItemDefineID FItemDefineID
---@param PutOnCount number
---@return FUGCItemTransferResult
function UBackpackComponentV2:PutInWarehouse(ItemDefineID, PutOnCount) end

---@param ItemDefineID FItemDefineID
---@param TakeOutCount number
---@return FUGCItemTransferResult
function UBackpackComponentV2:TakeOutWarehouse(ItemDefineID, TakeOutCount) end

---@param ItemDatas ULuaArrayHelper<FUGCTransferItemData>
---@return FUGCItemTransferResult
function UBackpackComponentV2:BatchPutInWarehouse(ItemDatas) end

---@param ItemDatas ULuaArrayHelper<FUGCTransferItemData>
---@return FUGCItemTransferResult
function UBackpackComponentV2:BatchTakeOutWarehouse(ItemDatas) end

---@param ItemDefineID FItemDefineID
---@param ItemCount number
function UBackpackComponentV2:AddItemToWarehouse(ItemDefineID, ItemCount) end

---尝试整理物品 将可合并的物品尽量合并到一起 DS 可调用
function UBackpackComponentV2:TrySortOutWarehouseItem() end

---仓库 检查能否转移物品 可重载并自定义 DS 被调用
---@param OtherTransfer IUGCItemTransferInterface
---@param InItemList ULuaArrayHelper<FUGCTransferItemData>
---@param OutItemList ULuaArrayHelper<FUGCTransferItemData>
---@return FUGCItemTransferResult
function UBackpackComponentV2:WarehouseCheckCanTransfer(OtherTransfer, InItemList, OutItemList) end

function UBackpackComponentV2:GetUGCCommonAllItemDefineIDs() end

---@param OtherTransfer IUGCItemTransferInterface
---@param InItemList ULuaArrayHelper<FUGCTransferItemData>
---@param OutItemList ULuaArrayHelper<FUGCTransferItemData>
---@return FUGCItemTransferResult
function UBackpackComponentV2:CheckCanTransfer_Implementation(OtherTransfer, InItemList, OutItemList) end

---@param OtherTransfer IUGCItemTransferInterface
---@param InItemList ULuaArrayHelper<FUGCTransferItemData>
---@param OutItemList ULuaArrayHelper<FUGCTransferItemData>
function UBackpackComponentV2:ExecuteTransfer_Implementation(OtherTransfer, InItemList, OutItemList) end

---@return number
function UBackpackComponentV2:GetCellItemCount() end

---@param AddCount number
---@return boolean
function UBackpackComponentV2:AddCellCapacity(AddCount) end

---@param RemoveCount number
---@return boolean
function UBackpackComponentV2:RemoveCellCapacity(RemoveCount) end

---@param AddCount number
---@param bPersist boolean
---@return boolean
function UBackpackComponentV2:AddMaxCellCapacity(AddCount, bPersist) end

---@param RemoveCount number
---@param bPersist boolean
---@return boolean
function UBackpackComponentV2:RemoveMaxCellCapacity(RemoveCount, bPersist) end

---@return number
function UBackpackComponentV2:GetWarehouseCellCapacity() end

---@return number
function UBackpackComponentV2:GetReleaseWarehouseCellCapacity() end

---@return number
function UBackpackComponentV2:GetWarehouseMaxCellCapacity() end

---@param AddCount number
---@return boolean
function UBackpackComponentV2:AddWarehouseCellCapacity(AddCount) end

---获取所有占背包格子的物品实例 ID DS 可调用 Client 可调用，但返回数据可能稍微滞后
function UBackpackComponentV2:GetAllCellItemDefineIDsV2() end

---Event
---处理超过格子容量的物品
---普通情况下，背包内容量已满时，无法添加物品。
---但存在特殊情况，背包满容量时依然成功添加物品、原本不占格子的物品变为占用格子、背包容量发生变化。
---超容量物品会被直接移除，移除后在此函数处理保底逻辑
---默认保底逻辑为丢弃到地上
---重写此事件时，请不要将超容量物品在此处重新添加到背包里
---可重载并自定义
---DS 被调用
---@param ItemDefineID FItemDefineID @超过容量的物品ID
---@param Count number
function UBackpackComponentV2:HandleExceedCellCapacity(ItemDefineID, Count) end

---获取货币类型的物品ID DS、Client 可调用
function UBackpackComponentV2:GetCurrencyIDList() end

---物品是否为货币 DS、Client 可调用
---@param ItemID number
---@return boolean
function UBackpackComponentV2:IsCurrency(ItemID) end

---@param ItemID number
---@param TargetItem FItemDefineID
---@param TargetSlot string
function UBackpackComponentV2:GetSuitableItemAttachSlot(ItemID, TargetItem, TargetSlot) end

---@param ItemID number
---@param Count number
function UBackpackComponentV2:Server_RemoveItemV2(ItemID, Count) end

---@param ItemDefineID FItemDefineID
---@param Count number
function UBackpackComponentV2:Server_RemoveItemByDefineIDV2(ItemDefineID, Count) end

---@param ItemID number
---@param Count number
function UBackpackComponentV2:Server_DropItemV2(ItemID, Count) end

---@param ItemDefineID FItemDefineID
---@param Count number
function UBackpackComponentV2:Server_DropItemByDefineIDV2(ItemDefineID, Count) end

function UBackpackComponentV2:Server_TrySortOutItemV2() end

---@param ItemDefineID FItemDefineID
function UBackpackComponentV2:Server_UseItemV2(ItemDefineID) end

---@param ItemDefineID FItemDefineID
function UBackpackComponentV2:Server_DisuseItemV2(ItemDefineID) end

---@param SlotName string
---@param DefineID FItemDefineID
function UBackpackComponentV2:Server_EquipItemV2(SlotName, DefineID) end

---@param DefineID FItemDefineID
function UBackpackComponentV2:Server_EquipItemToAnySlotV2(DefineID) end

---@param SlotName string
function UBackpackComponentV2:Server_UnEquipItemV2(SlotName) end

---@param SlotNameA string
---@param SlotNameB string
function UBackpackComponentV2:Server_SwapEquipSlotV2(SlotNameA, SlotNameB) end

---@param Equipment FItemDefineID
---@param TargetItem FItemDefineID
---@param SlotName string
function UBackpackComponentV2:Server_AttachEquipmentToTargetItem(Equipment, TargetItem, SlotName) end

---@param TargetItem FItemDefineID
---@param SlotName string
function UBackpackComponentV2:Server_DetachEquipmentToTargetItem(TargetItem, SlotName) end

---@param RepItems ULuaArrayHelper<FNetArrayUnitNew>
---@param bReInitialized boolean
---@param DirtyInstanceData ULuaArrayHelper<FBackpackComponentV2_DirtyInstanceData>
function UBackpackComponentV2:ClientOnReplicateBattleItemsV2(RepItems, bReInitialized, DirtyInstanceData) end

---@param RepItemsOpt FNetRPCItemArraySerializer
---@param bReInitialized boolean
---@param DirtyInstanceData ULuaArrayHelper<FBackpackComponentV2_DirtyInstanceData>
function UBackpackComponentV2:ClientOnReplicateBattleItemsOptV2(RepItemsOpt, bReInitialized, DirtyInstanceData) end

---初始化从后台读取背包数据 DS 执行
function UBackpackComponentV2:InitLoadPersistData() end

function UBackpackComponentV2:OnRepInstanceDataRepProxy() end

function UBackpackComponentV2:OnRepWarehouse() end

function UBackpackComponentV2:OnRepCellCapacity() end

function UBackpackComponentV2:OnRepMaxCellCapacity() end

---@param ItemDefineID FItemDefineID
---@return boolean
function UBackpackComponentV2:IsV2BackpackItem(ItemDefineID) end

---@param ItemDefineID FItemDefineID
---@return boolean
function UBackpackComponentV2:IsCellItem(ItemDefineID) end

---@param ItemDefineID FItemDefineID
---@return boolean
function UBackpackComponentV2:CanSkipCheckCanAddItem(ItemDefineID) end

---@param ItemDefineID FItemDefineID
---@return boolean
function UBackpackComponentV2:CanSkipCheckCanRemoveItem(ItemDefineID) end

---@param ItemDefineID FItemDefineID
---@return boolean
function UBackpackComponentV2:CanSkipCheckExceedCellCapacity(ItemDefineID) end

---@return number
function UBackpackComponentV2:GetRecordTimeNow() end

---@param ItemDefineID FItemDefineID
function UBackpackComponentV2:RecordItemEnterCellTime(ItemDefineID) end

---@param NewCapacity number
function UBackpackComponentV2:BroadcastCellCapacityChange(NewCapacity) end

---@param NewMaxCapacity number
function UBackpackComponentV2:BroadcastMaxCellCapacityChange(NewMaxCapacity) end

---@param NewCapacity number
function UBackpackComponentV2:BroadcastWarehouseCellCapacityChange(NewCapacity) end

---@param NewItemDefineIDList ULuaArrayHelper<FItemDefineID>
function UBackpackComponentV2:CheckAndHandleExceedCellCapacity(NewItemDefineIDList) end

---@param ExceptionType string
---@param StackStr string
function UBackpackComponentV2:BackpackExceptionReport(ExceptionType, StackStr) end


---@class UUGCBattleItemInstanceDataRepProxy_Backpack: UUGCBattleItemInstanceDataRepProxy
---@field BackpackComponent UBackpackComponentV2
local UUGCBattleItemInstanceDataRepProxy_Backpack = {}

---@param InstanceID FItemDefineID
---@return boolean
function UUGCBattleItemInstanceDataRepProxy_Backpack:CareItem(InstanceID) end

---@param ItemDefineID FItemDefineID
---@param OldAttachItem FItemDefineID
---@param OldAttachSlot number
---@param NewAttachItem FItemDefineID
---@param NewAttachSlot number
function UUGCBattleItemInstanceDataRepProxy_Backpack:OnItemAttachParentChange(ItemDefineID, OldAttachItem, OldAttachSlot, NewAttachItem, NewAttachSlot) end


---@class UUGCItemWarehouse_Backpack: UUGCItemWarehouseBase
---@field Backpack UBackpackComponentV2
---@field ItemInstanceDataRepProxy UUGCBattleItemInstanceDataRepProxy_Backpack
local UUGCItemWarehouse_Backpack = {}
