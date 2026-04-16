---@meta

---@class FNetRepUGCCommonItemArray
---@field ItemList ULuaArrayHelper<FNetRepUGCCommonItemData>
---@field ArrayIndex ULuaMapHelper<FUGCCommonItemID, number>
---@field UnusePool ULuaArrayHelper<number>
FNetRepUGCCommonItemArray = {}


---@class FUGCCommonItemSimpleStruct
---@field SpecificID number
---@field Count number
---@field AddTime number
---@field ExpireTime number
---@field IsExpired boolean
---@field IsNew number
FUGCCommonItemSimpleStruct = {}


---@class FUGCCommonItemBackpackDirtyDelegate : ULuaSingleDelegate
FUGCCommonItemBackpackDirtyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCommonItemBackpackDirtyDelegate:Bind(Callback, Obj) end

---执行委托
function FUGCCommonItemBackpackDirtyDelegate:Execute() end


---@class FUGCCommonItemBackpackInsertDelegate : ULuaMulticastDelegate
FUGCCommonItemBackpackInsertDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemList: ULuaArrayHelper<FUGCCommonItemID>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCommonItemBackpackInsertDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemList ULuaArrayHelper<FUGCCommonItemID>
function FUGCCommonItemBackpackInsertDelegate:Broadcast(ItemList) end


---@class FUGCCommonItemBackpackUpdateDelegate : ULuaMulticastDelegate
FUGCCommonItemBackpackUpdateDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemList: ULuaArrayHelper<FUGCCommonItemID>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCommonItemBackpackUpdateDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemList ULuaArrayHelper<FUGCCommonItemID>
function FUGCCommonItemBackpackUpdateDelegate:Broadcast(ItemList) end


---@class FUGCCommonItemBackpackDeleteDelegate : ULuaMulticastDelegate
FUGCCommonItemBackpackDeleteDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemList: ULuaArrayHelper<FUGCCommonItemID>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCommonItemBackpackDeleteDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemList ULuaArrayHelper<FUGCCommonItemID>
function FUGCCommonItemBackpackDeleteDelegate:Broadcast(ItemList) end


---@class FUGCCommonItemBackpackExpireDelegate : ULuaMulticastDelegate
FUGCCommonItemBackpackExpireDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemList: ULuaArrayHelper<FUGCCommonItemID>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCommonItemBackpackExpireDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemList ULuaArrayHelper<FUGCCommonItemID>
function FUGCCommonItemBackpackExpireDelegate:Broadcast(ItemList) end


---@class UUGCCommonBackpackComponent: UActorComponent, IItemStorageInterface, IItemSourceInterface
---@field UGCCommonItemBackpackDeleteDelegate FUGCCommonItemBackpackDeleteDelegate
---@field UGCCommonItemBackpackDirtyDelegate FUGCCommonItemBackpackDirtyDelegate
---@field UGCCommonItemBackpackExpireDelegate FUGCCommonItemBackpackExpireDelegate
---@field UGCCommonItemBackpackInsertDelegate FUGCCommonItemBackpackInsertDelegate
---@field UGCCommonItemBackpackUpdateDelegate FUGCCommonItemBackpackUpdateDelegate
---@field CurWeight number
---@field RepItemArray FNetRepUGCCommonItemArray
---@field ItemMap ULuaMapHelper<FUGCCommonItemID, IItemInterface>
---@field ItemTypeMap ULuaMapHelper<FUGCCommonItemType, FItemArray>
---@field BroadcastInsertItemList ULuaArrayHelper<FUGCCommonItemID>
---@field BroadcastUpdateItemList ULuaArrayHelper<FUGCCommonItemID>
---@field BroadcastDeleteItemList ULuaArrayHelper<FUGCCommonItemID>
local UUGCCommonBackpackComponent = {}

---@param Type number
function UUGCCommonBackpackComponent:GetItemsByType(Type) end

---@param SpecificID number
function UUGCCommonBackpackComponent:FindItems(SpecificID) end

---@param TableName string
---@param MaxWeight number
---@return boolean
function UUGCCommonBackpackComponent:InitUGCCommonBackpack(TableName, MaxWeight) end

---@param ItemsData ULuaArrayHelper<FUGCCommonItemSimpleStruct>
function UUGCCommonBackpackComponent:InitItemsData(ItemsData) end

function UUGCCommonBackpackComponent:GetSourceData() end

---@param SpecificID number
---@param Count number
---@param AddTime number
---@param ExpireTime number
---@param IsNew number
---@return boolean
function UUGCCommonBackpackComponent:AddItem(SpecificID, Count, AddTime, ExpireTime, IsNew) end

---@param SpecificID number
---@param InstanceID number
---@param Count number
---@return boolean
function UUGCCommonBackpackComponent:DropItem(SpecificID, InstanceID, Count) end

---@param SpecificID number
---@param InstanceID number
---@param Count number
---@param AddTime number
---@param ExpireTime number
---@param IsNew number
---@return boolean
function UUGCCommonBackpackComponent:UpdateItem(SpecificID, InstanceID, Count, AddTime, ExpireTime, IsNew) end

---@param SpecificID number
---@param InstanceID number
---@return boolean
function UUGCCommonBackpackComponent:RemoveItem(SpecificID, InstanceID) end

function UUGCCommonBackpackComponent:GetAllItems() end

function UUGCCommonBackpackComponent:GetItemsSaveData() end

function UUGCCommonBackpackComponent:ClearBackpack() end

function UUGCCommonBackpackComponent:OnRep_RepItemArray() end
