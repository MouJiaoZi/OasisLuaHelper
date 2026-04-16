---@meta

---V2物品 通用 Reason 枚举
---@class EUGCCommonItemReason
---@field Default number
---@field Initialize number
---@field Transfer number
---@field Pickup number
---@field ExceedCellCapacity number
---@field SortOut number
---@field OnlySkipCheckCanAddItem number
---@field OnlySkipCheckCanRemoveItem number
---@field NoTips number
---@field SkipCheckCanAddItem_NoTips number
---@field SkipExceedCellCapacity number
EUGCCommonItemReason = {}


---@class FUGCBattleItemAttachData
---@field AttachParentInstanceID FItemDefineID
---@field AttachSlotIndex number
---@field AttachChildren ULuaArrayHelper<FItemDefineID>
FUGCBattleItemAttachData = {}


---@class FUGCBattleItemCustomizeData
---@field CustomizeData ULuaArrayHelper<number>
---@field CustomizeDataHash number
FUGCBattleItemCustomizeData = {}


---@class FUGCBattleItemInstanceData
---@field AttachData FUGCBattleItemAttachData
---@field CustomizeData FUGCBattleItemCustomizeData
---@field ItemEnterCellTime number
---@field CommonReasonValue number
FUGCBattleItemInstanceData = {}


---@class FUGCBattleItemInstanceSerializerItem
---@field InstanceID FItemDefineID
---@field InstanceData FUGCBattleItemInstanceData
FUGCBattleItemInstanceSerializerItem = {}


---@class FUGCBattleItemInstanceSerializerArray
---@field Items ULuaArrayHelper<FUGCBattleItemInstanceSerializerItem>
FUGCBattleItemInstanceSerializerArray = {}


---@class FOnBattleItemInstanceDataChange : ULuaMulticastDelegate
FOnBattleItemInstanceDataChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBattleItemInstanceDataChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID FItemDefineID
function FOnBattleItemInstanceDataChange:Broadcast(InstanceID) end


---@class FItemAttachParentChange : ULuaMulticastDelegate
FItemAttachParentChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemDefineID: FItemDefineID, OldAttachItem: FItemDefineID, OldAttachSlot: number, NewAttachItem: FItemDefineID, NewAttachSlot: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemAttachParentChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemDefineID FItemDefineID
---@param OldAttachItem FItemDefineID
---@param OldAttachSlot number
---@param NewAttachItem FItemDefineID
---@param NewAttachSlot number
function FItemAttachParentChange:Broadcast(ItemDefineID, OldAttachItem, OldAttachSlot, NewAttachItem, NewAttachSlot) end


---物品实例管理器
---@class UUGCBattleItemInstanceDataManager: UObject
---@field OnBattleItemInstanceDataChange FOnBattleItemInstanceDataChange @UGC 物品实例数据变化触发
---@field InstanceDataMap ULuaMapHelper<FItemDefineID, FUGCBattleItemInstanceData>
---@field InstanceDataRepProxyList ULuaArrayHelper<UUGCBattleItemInstanceDataRepProxy>
local UUGCBattleItemInstanceDataManager = {}

---@param InstanceID FItemDefineID
---@param InstanceData FUGCBattleItemInstanceData
function UUGCBattleItemInstanceDataManager:SetInstanceData(InstanceID, InstanceData) end

---@param ItemInstanceID FItemDefineID
---@param Reason number
function UUGCBattleItemInstanceDataManager:SetCommonReasonData(ItemInstanceID, Reason) end

---@param InstanceID FItemDefineID
---@return FItemDefineID
function UUGCBattleItemInstanceDataManager:CloneInstanceData(InstanceID) end

---@param ItemIDX number
function UUGCBattleItemInstanceDataManager:GMGetAllItemInstance(ItemIDX) end


---@class UUGCBattleItemInstanceDataRepProxy: UItemInstanceDataReplicateComponent
---@field DataVersion number
---@field DataSerializerArray FUGCBattleItemInstanceSerializerArray
---@field DataMapVersion number
---@field InstanceDataMap ULuaMapHelper<FItemDefineID, FUGCBattleItemInstanceData>
---@field LastOnRepFrame number
---@field ItemAttachParentChange FItemAttachParentChange
local UUGCBattleItemInstanceDataRepProxy = {}

function UUGCBattleItemInstanceDataRepProxy:OnRepDataSerializerArray() end

---@param InstanceID FItemDefineID
function UUGCBattleItemInstanceDataRepProxy:OnInstanceDataChange(InstanceID) end

---@param InstanceID FItemDefineID
function UUGCBattleItemInstanceDataRepProxy:AddCareItem(InstanceID) end

---@param InstanceID FItemDefineID
function UUGCBattleItemInstanceDataRepProxy:RemoveCareItem(InstanceID) end

---@param InstanceID FItemDefineID
---@param InstanceData FUGCBattleItemInstanceData
function UUGCBattleItemInstanceDataRepProxy:RefreshCareItem(InstanceID, InstanceData) end


---@class UUGCBattleItemInstanceDataRepProxy_PickupWrapper: UUGCBattleItemInstanceDataRepProxy
---@field CacheRepItems ULuaArrayHelper<FItemDefineID>
local UUGCBattleItemInstanceDataRepProxy_PickupWrapper = {}
