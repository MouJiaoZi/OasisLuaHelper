---@meta

---@class EBackpackType
---@field None number
---@field BigWorld number
---@field Home number
---@field Common number
---@field MagicBattle number
EBackpackType = {}


---@class FItemPlaceTab
---@field TabName string
FItemPlaceTab = {}


---@class FNetVirtualItemArray
---@field ItemList ULuaArrayHelper<FNetRepVirtualItemData>
---@field ArrayIndex ULuaMapHelper<FItemDefineID, number>
---@field UnUsePool ULuaArrayHelper<number>
---@field DirtyPool ULuaMapHelper<FItemDefineID, FNetRepVirtualItemData>
---@field RepItems ULuaArrayHelper<FNetRepVirtualItemData>
FNetVirtualItemArray = {}


---@class FItemCircularTimer
FItemCircularTimer = {}


---@class FItemEquipSlots
---@field EquipSlotName ULuaArrayHelper<string>
---@field ItemEquipped ULuaMapHelper<string, FItemDefineID>
---@field ItemEquippedCrossLine ULuaMapHelper<string, FItemDefineID>
---@field NetItemEquipped ULuaArrayHelper<FItemDefineID>
FItemEquipSlots = {}


---@class FUIShowConfig
---@field bUseDefault boolean
---@field bShowCurrency boolean
---@field bShowDetails boolean
---@field bShowNewFlag boolean
---@field bEnableDefaultSelect boolean
---@field TitleName string
---@field ShowTabs ULuaArrayHelper<string>
---@field bShowAvatarSuitTab boolean
---@field ExtendItemWidget UUserWidget
---@field MultiSelectedItemLimit number
---@field SingleItemCountLimit number
---@field ItemChangeDelegate FOnUIItemChangeDelegate
---@field ItemChangeCache ULuaMapHelper<FItemDefineID, number>
FUIShowConfig = {}


---@class FOnItemSourceDirtyDelegate : ULuaSingleDelegate
FOnItemSourceDirtyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnItemSourceDirtyDelegate:Bind(Callback, Obj) end

---执行委托
function FOnItemSourceDirtyDelegate:Execute() end


---@class FOnItemSourceInsertDeleteDelegate : ULuaSingleDelegate
FOnItemSourceInsertDeleteDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnItemSourceInsertDeleteDelegate:Bind(Callback, Obj) end

---执行委托
function FOnItemSourceInsertDeleteDelegate:Execute() end


---@class FOnItemInsertDelegate : ULuaMulticastDelegate
FOnItemInsertDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnItemInsertDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FOnItemInsertDelegate:Broadcast(DefineID) end


---@class FOnItemUpdateDelegate : ULuaMulticastDelegate
FOnItemUpdateDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnItemUpdateDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FOnItemUpdateDelegate:Broadcast(DefineID) end


---@class FOnItemDeleteDelegate : ULuaMulticastDelegate
FOnItemDeleteDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnItemDeleteDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FOnItemDeleteDelegate:Broadcast(DefineID) end


---@class FOnUseItemDelegate : ULuaMulticastDelegate
FOnUseItemDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUseItemDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FOnUseItemDelegate:Broadcast(DefineID) end


---@class FOnDisUseItemDelegate : ULuaMulticastDelegate
FOnDisUseItemDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDisUseItemDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FOnDisUseItemDelegate:Broadcast(DefineID) end


---@class FItemEquippedChangeDelegate : ULuaSingleDelegate
FItemEquippedChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemEquippedChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FItemEquippedChangeDelegate:Execute() end


---@class FItemEquipDelegate : ULuaMulticastDelegate
FItemEquipDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SlotName: string, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemEquipDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SlotName string
---@param DefineID FItemDefineID
function FItemEquipDelegate:Broadcast(SlotName, DefineID) end


---@class FOnBackpackBatchAddItemsRspDelegate : ULuaMulticastDelegate
FOnBackpackBatchAddItemsRspDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ReqID: number, ErrorCode: number, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBackpackBatchAddItemsRspDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ReqID number
---@param ErrorCode number
---@param DefineID FItemDefineID
function FOnBackpackBatchAddItemsRspDelegate:Broadcast(ReqID, ErrorCode, DefineID) end


---@class FOnBackpackBatchDelItemsRspDelegate : ULuaMulticastDelegate
FOnBackpackBatchDelItemsRspDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ReqID: number, ErrorCode: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBackpackBatchDelItemsRspDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ReqID number
---@param ErrorCode number
function FOnBackpackBatchDelItemsRspDelegate:Broadcast(ReqID, ErrorCode) end


---@class FRequestAddItemResultDelegate : ULuaMulticastDelegate
FRequestAddItemResultDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ReqID: number, ErrorCode: number, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRequestAddItemResultDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ReqID number
---@param ErrorCode number
---@param DefineID FItemDefineID
function FRequestAddItemResultDelegate:Broadcast(ReqID, ErrorCode, DefineID) end


---@class FOnUIItemChangeDelegate : ULuaSingleDelegate
FOnUIItemChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, DefineID: FItemDefineID, Count: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUIItemChangeDelegate:Bind(Callback, Obj) end

---执行委托
---@param DefineID FItemDefineID
---@param Count number
function FOnUIItemChangeDelegate:Execute(DefineID, Count) end


---@class UBackpackGlobalMgr: UObject
local UBackpackGlobalMgr = {}


---@class UBaseBackpackComponent: UActorComponent, IItemSourceInterface, IBackpackItemInterface, ICommonBackpackInterface, IItemOperationInterface
---@field OnItemSourceDirtyDelegate FOnItemSourceDirtyDelegate
---@field OnItemSourceInsertDeleteDelegate FOnItemSourceInsertDeleteDelegate
---@field OnItemInsertDelegate FOnItemInsertDelegate
---@field OnItemUpdateDelegate FOnItemUpdateDelegate
---@field OnItemDeleteDelegate FOnItemDeleteDelegate
---@field OnUseItemDelegate FOnUseItemDelegate
---@field OnDisUseItemDelegate FOnDisUseItemDelegate
---@field ItemEquipDelegate FItemEquipDelegate
---@field ItemUnEquipDelegate FItemEquipDelegate
---@field ItemEquippedChangeDelegate FItemEquippedChangeDelegate
---@field OnBackpackBatchAddItemsRspDelegate FOnBackpackBatchAddItemsRspDelegate
---@field OnBackpackBatchDelItemsRspDelegate FOnBackpackBatchDelItemsRspDelegate
---@field OnRequestAddItemResultDelegate FRequestAddItemResultDelegate
---@field OnRequestDeleteItemResultDelegate FRequestDeleteItemResultDelegate
---@field CommonItemUpdatedDelegate FCommonItemUpdatedDelegate
---@field CommonItemDeleteDelegate FCommonItemDeleteDelegate
---@field bIsInitialDepotItem boolean
---@field bReplicateItemsSwitch boolean
---@field NetVirtualItemArray FNetVirtualItemArray
---@field ItemAdditionPropertiesCached ULuaMapHelper<FItemDefineID, FItemDataBaseStruct>
---@field ItemIDMap ULuaMapHelper<FItemDefineID, IItemInterface>
---@field ItemTabMap ULuaMapHelper<FItemPlaceTab, FItemArray>
---@field ItemCircularTimer FItemCircularTimer
---@field BackpackInterfaceMap ULuaMapHelper<string, IBackpackItemInterface>
---@field ItemEquipSlots FItemEquipSlots
---@field UIShowConfig FUIShowConfig
local UBaseBackpackComponent = {}

function UBaseBackpackComponent:OnSerializeNewActor() end

function UBaseBackpackComponent:OnReconnectOnServer() end

---@param DeltaTime number
function UBaseBackpackComponent:TickBackpack(DeltaTime) end

function UBaseBackpackComponent:TickReplicateItems() end

---@param TypeSpecificID number
function UBaseBackpackComponent:GetBackPackItemInterface(TypeSpecificID) end

---@param bInitial boolean
function UBaseBackpackComponent:SetInitialDepotItems(bInitial) end

---@param ReqID number
---@param ErrorCode number
---@param DefineID FItemDefineID
function UBaseBackpackComponent:BroadcastRequestAddItemResult(ReqID, ErrorCode, DefineID) end

---@param ReqID number
---@param ErrorCode number
function UBaseBackpackComponent:BroadcastRequestDeleteItemResult(ReqID, ErrorCode) end

---@param ItemIDList ULuaArrayHelper<FItemDefineID>
function UBaseBackpackComponent:OnItemUpdate(ItemIDList) end

---@param ItemIDList ULuaArrayHelper<FItemDefineID>
function UBaseBackpackComponent:OnItemDelete(ItemIDList) end

function UBaseBackpackComponent:OnItemListUpdated() end

---@param bReInitialized boolean
function UBaseBackpackComponent:ReplicateVirtualItems(bReInitialized) end

---@param RepItems ULuaArrayHelper<FNetRepVirtualItemData>
---@param bReInitialized boolean
function UBaseBackpackComponent:ClientOnReplicateVirtualItems(RepItems, bReInitialized) end

---@param ItemInterface IItemInterface
---@return FItemPlaceTab
function UBaseBackpackComponent:GetWrapperItemPlaceTab(ItemInterface) end

---@param TypeSpecificID number
---@return number
function UBaseBackpackComponent:GetItemCount(TypeSpecificID) end

---@param DefineID FItemDefineID
---@return number
function UBaseBackpackComponent:GetItemCountByDefineID(DefineID) end

---@param DefineID FItemDefineID
---@return number
function UBaseBackpackComponent:GetItemExpireTimeByDefineID(DefineID) end

---@param DefineID FItemDefineID
---@return boolean
function UBaseBackpackComponent:GetItemIsNewByDefineID(DefineID) end

---@param DefineID FItemDefineID
---@return boolean
function UBaseBackpackComponent:IsItemCanUse(DefineID) end

---@param DefineID FItemDefineID
---@return boolean
function UBaseBackpackComponent:IsItemExpired(DefineID) end

---@param Item IItemInterface
---@return FItemDefineID
function UBaseBackpackComponent:GetItemDefineID(Item) end

---@param TypeSpecificID number
function UBaseBackpackComponent:GetItemsByItemID(TypeSpecificID) end

---@param DefineID FItemDefineID
---@param Name string
---@return boolean
function UBaseBackpackComponent:HasItemAdditionProperty(DefineID, Name) end

---@param DefineID FItemDefineID
---@param Name string
---@return number
function UBaseBackpackComponent:GetItemAdditionFloatProperty(DefineID, Name) end

---@param DefineID FItemDefineID
---@param Name string
---@param PropertyType EAdditionPropertyType
---@param Value number
function UBaseBackpackComponent:SetItemAdditionFloatProperty(DefineID, Name, PropertyType, Value) end

---@param DefineID FItemDefineID
---@return boolean
function UBaseBackpackComponent:UseItemInternal(DefineID) end

---@param DefineID FItemDefineID
function UBaseBackpackComponent:DisUseItemInternal(DefineID) end

---@return EBackpackType
function UBaseBackpackComponent:GetBackpackType() end

---@param TypeSpecificID number
---@return boolean
function UBaseBackpackComponent:IsVirtualItem(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UBaseBackpackComponent:IsBattleItem(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UBaseBackpackComponent:IsShowInBackpack(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UBaseBackpackComponent:IsItemCanMerge(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UBaseBackpackComponent:IsItemCanEquip(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UBaseBackpackComponent:IsItemCanConsume(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UBaseBackpackComponent:IsItemDroppable(TypeSpecificID) end

---@param TypeSpecificID number
---@return number
function UBaseBackpackComponent:GetItemCountLimit(TypeSpecificID) end

function UBaseBackpackComponent:GetEquipSlots() end

---@param SlotName string
---@return number
function UBaseBackpackComponent:GetSlotIndex(SlotName) end

---@param SlotName string
---@return FItemDefineID
function UBaseBackpackComponent:GetEquippedItem(SlotName) end

---@param TypeSpecificID number
---@return string
function UBaseBackpackComponent:GetEquipSlot(TypeSpecificID) end

---@param DefineID FItemDefineID
---@return boolean
function UBaseBackpackComponent:IsItemEquipping(DefineID) end

---@param Item IItemInterface
function UBaseBackpackComponent:UseItem(Item) end

---@param Item IItemInterface
function UBaseBackpackComponent:ServerUseItem(Item) end

---@param DefineID FItemDefineID
function UBaseBackpackComponent:ServerUseItemInternal(DefineID) end

---@param Item IItemInterface
function UBaseBackpackComponent:DisUseItem(Item) end

---@param Item IItemInterface
function UBaseBackpackComponent:ServerDisUseItem(Item) end

---@param DefineID FItemDefineID
function UBaseBackpackComponent:ServerDisUseItemInternal(DefineID) end

---@param DefineID FItemDefineID
---@return boolean
function UBaseBackpackComponent:CheckVirtualItemFuncLoaded(DefineID) end

---@param DefineID FItemDefineID
function UBaseBackpackComponent:UseVirtualItem(DefineID) end

---@param DefineID FItemDefineID
---@return boolean
function UBaseBackpackComponent:IsVirtualItemCanUse(DefineID) end

---@param Config FUIShowConfig
function UBaseBackpackComponent:SetUIShowConfig(Config) end

---@param DefineID FItemDefineID
---@param Count number
function UBaseBackpackComponent:BroadCastUIShowItemChangeDelegate(DefineID, Count) end

---@param TypeSpecificID number
---@return string
function UBaseBackpackComponent:GetSuitableItemEquipSlot(TypeSpecificID) end

---@param DefineID FItemDefineID
---@return string
function UBaseBackpackComponent:GetItemEquipingSlot(DefineID) end

---@param DefineID FItemDefineID
function UBaseBackpackComponent:AsyncLoadVirtualItemFuncBP(DefineID) end

---@param ClassPath FSoftClassPath
---@param DefineID FItemDefineID
function UBaseBackpackComponent:OnAsyncLoadVirtualItemFuncBP(ClassPath, DefineID) end

---@param Class UClass
function UBaseBackpackComponent:FindOrCreateVirtualItemFunc(Class) end

---@param DefineID FItemDefineID
---@return string
function UBaseBackpackComponent:GetVirtualItemFuncBPPath(DefineID) end

function UBaseBackpackComponent:ClearVirtualItemFuncCache() end

---@param Type number
---@param ExpireTimeString string
---@param ValidHours number
---@return number
function UBaseBackpackComponent:CalculateExpireTime(Type, ExpireTimeString, ValidHours) end

---@param ExpireTime number
---@return boolean
function UBaseBackpackComponent:CheckItemExpireTimeValid(ExpireTime) end

---@param ExpireTime number
---@return boolean
function UBaseBackpackComponent:CheckItemIsExpired(ExpireTime) end

---@param DeltaTime number
function UBaseBackpackComponent:TickExpireTimeItems(DeltaTime) end

function UBaseBackpackComponent:StartTimerForExpireTimeItems() end

---@param SlotName string
---@param DefineID FItemDefineID
---@return boolean
function UBaseBackpackComponent:EquipItem(SlotName, DefineID) end

---@param SlotName string
---@param DefineID FItemDefineID
---@return boolean
function UBaseBackpackComponent:UnEquipItem(SlotName, DefineID) end

function UBaseBackpackComponent:SetItemEquipSlotsDirty() end

function UBaseBackpackComponent:OnRep_ItemEquipSlots() end

function UBaseBackpackComponent:SendBackpackSyncDepotReq() end

---@param Items ULuaArrayHelper<FBackpackItemParams>
---@param Reason number
---@param ReqID number
function UBaseBackpackComponent:SendBackpackBatchAddItemsReq(Items, Reason, ReqID) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
---@param Reason number
---@param ReqID number
---@param not_retry boolean
function UBaseBackpackComponent:SendBackpackBatchDelItemsReq(Items, Reason, ReqID, not_retry) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
function UBaseBackpackComponent:SendBackpackBatchRemoveItemNewFlagsReq(Items) end

---@param ItemProperties ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>
function UBaseBackpackComponent:SendBackpackUpdateItemAdditionPropertiesReq(ItemProperties) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
function UBaseBackpackComponent:SendBackpackBatchUpdateUGCVirtualItemsReq(Items) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
---@param ItemProperties ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>
function UBaseBackpackComponent:OnBackpackSyncDepotRsp(Items, ItemProperties) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
---@param Result number
---@param ReqID number
function UBaseBackpackComponent:OnBackpackBatchAddItemsRsp(Items, Result, ReqID) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
---@param Result number
---@param ReqID number
---@param not_retry boolean
function UBaseBackpackComponent:OnBackpackBatchDelItemsRsp(Items, Result, ReqID, not_retry) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
---@param Result number
function UBaseBackpackComponent:OnBackpackBatchRemoveItemNewFlagsRsp(Items, Result) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
function UBaseBackpackComponent:OnBackpackDepotChangeNtf(Items) end

---@param Result number
function UBaseBackpackComponent:OnBackpackUpdateItemAdditionPropertiesRsp(Result) end

---@param ItemProperties ULuaArrayHelper<FBackpackItemAdditionPropertiesParams>
---@param Result number
function UBaseBackpackComponent:OnBackpackGetItemAdditionPropertiesRsp(ItemProperties, Result) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
---@param Result number
function UBaseBackpackComponent:OnBackpackBatchUpdateUGCVirtualItemRsp(Items, Result) end

---@param RequestName string
---@param Items ULuaArrayHelper<FBackpackItemParams>
---@param Result number
function UBaseBackpackComponent:ReportServerRequestFailed(RequestName, Items, Result) end


---@class UBackpackBaseItem: UObject
---@field OwnerBackpackWeakPtr UBaseBackpackComponent
local UBackpackBaseItem = {}


---@class UBackpackVirtualItem: UBackpackBaseItem, IBackpackItemInterface
local UBackpackVirtualItem = {}

---@param DefineID FItemDefineID
function UBackpackVirtualItem:DisUseItemInternal(DefineID) end
