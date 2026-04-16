---@meta

---战斗道具
---@class EBattleItemOperationType
---@field Pickup number
---@field Drop number @//*UGC* 拾取
---@field Use number @//*UGC* 丢弃
---@field Disuse number @//*UGC* 使用
---@field Enable number @//*UGC* 取消使用
---@field Disable number @//*UGC* 启用
---@field Remove number @//*UGC* 禁用
EBattleItemOperationType = {}


---道具操作失败原因
---@class EBattleItemOperationFailedReason
---@field PickupFailed_Default number
---@field PickupFailed_CapacityExceeded number @//*UGC* 拾取失败
---@field PickupFailed_Limited number @//*UGC* 拾取失败_超出背包容量
---@field PickupFailed_HandleCountLimited number
---@field PickupFailed_SafetyBoxCapacityExceeded number
---@field DropFailed_Default number @//*UGC* 拾取失败_超出保险箱容量
---@field UseFailed_Default number @//*UGC* 丢弃失败
---@field UseFailed_CapacityExceeded number @//*UGC* 使用失败
---@field DisuseFailed_Default number @//*UGC* 使用失败_超出背包容量
---@field DisuseFailed_CapacityExceeded number @//*UGC* 取消使用失败
EBattleItemOperationFailedReason = {}


---@class EBattleItemRepType
---@field None number
---@field Insert number
---@field Delete number
---@field UpdateReplicated number
EBattleItemRepType = {}


---@class FBattleItemNetNew
---@field DefineIDNet FItemDefineIDNet
---@field Count number
---@field bEquipping boolean
---@field bCanBeClientHandle boolean
---@field AdditionalData ULuaArrayHelper<FBattleItemAdditionalData>
---@field TimeLimitData FBattleItemTimeLimitData
---@field AssociationsNet ULuaArrayHelper<FItemAssociationNet>
---@field Associations ULuaArrayHelper<FItemAssociation>
---@field ExpireTime number
---@field IsNew number
---@field AdditionProperties ULuaArrayHelper<FAdditionProperty>
FBattleItemNetNew = {}


---@class FNetArrayUnitNew
---@field Unit FBattleItemNetNew
---@field markDelete boolean
---@field ItemRepType EBattleItemRepType
---@field ItemUpdateStamp number
FNetArrayUnitNew = {}


---@class FNetRPCItemSerializer
---@field NetItemNew FNetArrayUnitNew
---@field NetItemOld FNetArrayUnitNew
---@field ChangeFlag number
---@field bFirstRep boolean
FNetRPCItemSerializer = {}


---@class FNetRPCItemArraySerializer
---@field NetItems ULuaArrayHelper<FNetRPCItemSerializer>
---@field NetItemsSerialized ULuaArrayHelper<FItemDefineID>
---@field OwnerBackpack UBackpackComponent
---@field bCheckHash boolean
---@field Hash number
FNetRPCItemArraySerializer = {}


---@class FNetArrayUnUsePool
---@field ArrayPool ULuaArrayHelper<number>
FNetArrayUnUsePool = {}


---@class FIncNetArrayNew
---@field IncArray ULuaArrayHelper<FNetArrayUnitNew>
---@field ArrayIndex ULuaMapHelper<FItemDefineID, number>
---@field UnUsePool FNetArrayUnUsePool
---@field DirtyPool ULuaMapHelper<FItemDefineID, FNetArrayUnitNew>
---@field RepItems ULuaArrayHelper<FNetArrayUnitNew>
---@field RPCRepHistory ULuaMapHelper<FItemDefineID, FNetRPCItemSerializer>
---@field RepItemsOpt FNetRPCItemArraySerializer
---@field bOpenNetDirtyPool boolean
FIncNetArrayNew = {}


---@class FSpecialPickInfo
---@field item_id number
---@field cur_count number
---@field total_count number
FSpecialPickInfo = {}


---@class FSuit_WearInfo
---@field EquipedSkinList ULuaArrayHelper<FGameModePlayer_WearItem>
---@field EquipedPendantList ULuaArrayHelper<FGameModePlayer_WearItem>
---@field WeaponPendantList ULuaArrayHelper<FGameModePlayer_WearItem>
---@field WeaponAttachmentAvatarList ULuaArrayHelper<FGameModePlayerItem>
---@field WeaponSkinAvatarList ULuaArrayHelper<FGameModePlayerItem>
---@field WeaponSkinAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@field WeaponSkinAvatarListCount number
---@field VehicleSkinAvatarListCount number
FSuit_WearInfo = {}


---@class FSuitSkinUnit
---@field stype_type number
---@field slot number
---@field style_id number
---@field lock boolean
---@field ItemDefineList ULuaArrayHelper<FItemDefineID>
---@field suitWear FGameModePlayer_WearInfo
---@field suitWearNet FSuit_WearInfo
---@field WearItemList ULuaArrayHelper<FItemDefineID>
FSuitSkinUnit = {}


---@class FSuitSkinList
---@field SuitSkinList ULuaArrayHelper<FSuitSkinUnit>
---@field currUseIndex number
---@field CDTime number
---@field SuitSkinOpen boolean
---@field willUseIndexBeforeSkill number
FSuitSkinList = {}


---@class FBackpackMemento
---@field PropertyBytes ULuaArrayHelper<number>
FBackpackMemento = {}


---@class FItemOperationInfo
---@field DefineID FItemDefineID
---@field BattleItemOperationType EBattleItemOperationType
---@field Reason number
---@field Count number
---@field bTriggerEvent boolean
FItemOperationInfo = {}


---@class FDropItemAntiCheatReporter
FDropItemAntiCheatReporter = {}


---@class FItemOperationDelegate : ULuaMulticastDelegate
FItemOperationDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID, OperationType: EBattleItemOperationType, Reason: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemOperationDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
---@param OperationType EBattleItemOperationType
---@param Reason number
function FItemOperationDelegate:Broadcast(DefineID, OperationType, Reason) end


---@class FItemOperationInfoDelegate : ULuaMulticastDelegate
FItemOperationInfoDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemOperationInfo: FItemOperationInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemOperationInfoDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemOperationInfo FItemOperationInfo
function FItemOperationInfoDelegate:Broadcast(ItemOperationInfo) end


---@class FItemOperationFailedDelegate : ULuaMulticastDelegate
FItemOperationFailedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID, OperationType: EBattleItemOperationType, OperationFailedReason: EBattleItemOperationFailedReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemOperationFailedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
---@param OperationType EBattleItemOperationType
---@param OperationFailedReason EBattleItemOperationFailedReason
function FItemOperationFailedDelegate:Broadcast(DefineID, OperationType, OperationFailedReason) end


---@class FItemInitialPickupDelegate : ULuaSingleDelegate
FItemInitialPickupDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemInitialPickupDelegate:Bind(Callback, Obj) end

---执行委托
function FItemInitialPickupDelegate:Execute() end


---@class FItemInitialDelayUseDelegate : ULuaSingleDelegate
FItemInitialDelayUseDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemInitialDelayUseDelegate:Bind(Callback, Obj) end

---执行委托
function FItemInitialDelayUseDelegate:Execute() end


---@class FItemClearAllDelegate : ULuaSingleDelegate
FItemClearAllDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemClearAllDelegate:Bind(Callback, Obj) end

---执行委托
function FItemClearAllDelegate:Execute() end


---@class FItemClearAllSaveParamDelegate : ULuaMulticastDelegate
FItemClearAllSaveParamDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SaveItems: ULuaArrayHelper<UItemHandleBase>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemClearAllSaveParamDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SaveItems ULuaArrayHelper<UItemHandleBase>
function FItemClearAllSaveParamDelegate:Broadcast(SaveItems) end


---@class FWeaponAttachmentChangedDelegate : ULuaMulticastDelegate
FWeaponAttachmentChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bAttach: boolean, WeaponID: FItemDefineID, AttachmentName: string, AttachmentSpecificID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWeaponAttachmentChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bAttach boolean
---@param WeaponID FItemDefineID
---@param AttachmentName string
---@param AttachmentSpecificID number
function FWeaponAttachmentChangedDelegate:Broadcast(bAttach, WeaponID, AttachmentName, AttachmentSpecificID) end


---@class FTimeLimitItemUpdateDelegate : ULuaSingleDelegate
FTimeLimitItemUpdateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTimeLimitItemUpdateDelegate:Bind(Callback, Obj) end

---执行委托
function FTimeLimitItemUpdateDelegate:Execute() end


---@class FItemConsumedDelegate : ULuaMulticastDelegate
FItemConsumedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BackpackComponent: UBackpackComponent, ItemHandle: UItemHandleBase, DefineID: FItemDefineID, Count: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemConsumedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BackpackComponent UBackpackComponent
---@param ItemHandle UItemHandleBase
---@param DefineID FItemDefineID
---@param Count number
function FItemConsumedDelegate:Broadcast(BackpackComponent, ItemHandle, DefineID, Count) end


---@class FItemTakenDelegate : ULuaMulticastDelegate
FItemTakenDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BackpackComponent: UBackpackComponent, ItemHandle: UBattleItemHandleBase, DefineID: FItemDefineID, TakenCount: number, bCallHandleDrop: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemTakenDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BackpackComponent UBackpackComponent
---@param ItemHandle UBattleItemHandleBase
---@param DefineID FItemDefineID
---@param TakenCount number
---@param bCallHandleDrop boolean
function FItemTakenDelegate:Broadcast(BackpackComponent, ItemHandle, DefineID, TakenCount, bCallHandleDrop) end


---@class FCommonItemConsumedDelegate : ULuaMulticastDelegate
FCommonItemConsumedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: number, Count: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCommonItemConsumedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID number
---@param Count number
function FCommonItemConsumedDelegate:Broadcast(DefineID, Count) end


---@class FUGCItemRemovedDelegate : ULuaMulticastDelegate
FUGCItemRemovedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCItemRemovedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FUGCItemRemovedDelegate:Broadcast(DefineID) end


---@class FUGCItemListUpdatedDelegate : ULuaSingleDelegate
FUGCItemListUpdatedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCItemListUpdatedDelegate:Bind(Callback, Obj) end

---执行委托
function FUGCItemListUpdatedDelegate:Execute() end


---@class FBackPackCapacityChangedDelegate : ULuaMulticastDelegate
FBackPackCapacityChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Capacity: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBackPackCapacityChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Capacity number
function FBackPackCapacityChangedDelegate:Broadcast(Capacity) end


---@class FDSTravelRestoreDelegate : ULuaSingleDelegate
FDSTravelRestoreDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDSTravelRestoreDelegate:Bind(Callback, Obj) end

---执行委托
function FDSTravelRestoreDelegate:Execute() end


---@class FItemUseForbiddenDelegate : ULuaMulticastDelegate
FItemUseForbiddenDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ID: number, PlayerController: AUAEPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemUseForbiddenDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ID number
---@param PlayerController AUAEPlayerController
function FItemUseForbiddenDelegate:Broadcast(ID, PlayerController) end


---@class FOnBackpackClearItemDelegate : ULuaSingleDelegate
FOnBackpackClearItemDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBackpackClearItemDelegate:Bind(Callback, Obj) end

---执行委托
function FOnBackpackClearItemDelegate:Execute() end


---@class FItemStroeAreaChangeDelegate : ULuaMulticastDelegate
FItemStroeAreaChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID, InItemStoreArea: EItemStoreArea, Count: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FItemStroeAreaChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
---@param InItemStoreArea EItemStoreArea
---@param Count number
function FItemStroeAreaChangeDelegate:Broadcast(DefineID, InItemStoreArea, Count) end


---@class FOnBackpackDataUpGrade : ULuaSingleDelegate
FOnBackpackDataUpGrade = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBackpackDataUpGrade:Bind(Callback, Obj) end

---执行委托
function FOnBackpackDataUpGrade:Execute() end


---@class FOnWeaponHandleUse : ULuaSingleDelegate
FOnWeaponHandleUse = {}

---绑定回调函数
---@param Callback fun(Obj: any, Handle: UBattleItemHandleBase) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeaponHandleUse:Bind(Callback, Obj) end

---执行委托
---@param Handle UBattleItemHandleBase
function FOnWeaponHandleUse:Execute(Handle) end


---背包组件
---@class UBackpackComponent: UActorComponent, IItemContainerInterface, IItemFactoryInterface, ICommonBackpackInterface
---@field isNewlyApply boolean
---@field WeaponAttachmentChangedDelegate FWeaponAttachmentChangedDelegate
---@field ItemBeforeRemovedDelegate FItemRemovedDelegate
---@field ItemUpdatedDelegate FItemUpdatedDelegate @available only on server
---@field ItemRemovedDelegate FItemRemovedDelegate @available only on server
---@field ItemListUpdatedDelegate FItemListUpdatedDelegate @available on both client and server, on client it's triggered when ItemList is replicated
---@field ReplicateItemsDelegate FItemListUpdatedDelegate @available on server only it's triggered when UBackpackComponent::ReplicateItems() was called
---@field ItemListUIUpdatedDelegate FItemListUpdatedDelegate @available on client only, on client it's triggered when ItemList is replicated
---@field SingleItemUpdatedDelegate FSingleItemUpdatedDelegate @available on client only, on client it's triggered when ItemList is replicated
---@field SingleItemDeleteDelegate FSingleItemDeleteDelegate @available on client only, on client it's triggered when ItemList is replicated
---@field BatchItemUpdateDelegate FBatchItemUpdatedDelegate @available on client only, on client it's triggered when ItemList is replicated
---@field BatchItemDeleteDelegate FBatchItemDeleteDelegate @available on client only, on client it's triggered when ItemList is replicated
---@field CapacityUpdatedDelegate FItemListUpdatedDelegate @available on both client and server, on client it's triggered when Capacity is replicated
---@field ItemOperationDelegate FItemOperationDelegate @available on both client and server
---@field ItemOperationInfoDelegate FItemOperationInfoDelegate
---@field ItemOperationFailedDelegate FItemOperationFailedDelegate @available on both client and server
---@field ItemClearAllDelegate FItemClearAllDelegate
---@field ItemClearAllSaveParamDelegate FItemClearAllSaveParamDelegate
---@field ItemInitialPickupDelegate FItemInitialPickupDelegate
---@field ItemInitialDelayUseDelegate FItemInitialDelayUseDelegate
---@field SuitSkinUpdatedDelegate FItemListUpdatedDelegate
---@field SuitSkinCDDelegate FItemSuitSkinCDDelegate
---@field TimeLimitItemUpdateDelegate FTimeLimitItemUpdateDelegate
---@field ItemTakenDelegate FItemTakenDelegate
---@field ItemConsumedDelegate FItemConsumedDelegate
---@field BackPackCapacityChangedDelegate FBackPackCapacityChangedDelegate
---@field BackpackSafetyBoxCapacityChangedDelegate FBackPackCapacityChangedDelegate
---@field DSTravelRestoreDelegate FDSTravelRestoreDelegate
---@field OnWeaponHandleUse FOnWeaponHandleUse
---@field OnWeaponHandleAfterUse FOnWeaponHandleUse
---@field OnWeaponHandleDisUse FOnWeaponHandleUse
---@field UGC_ItemOperationFailedDelegate FItemOperationFailedDelegate @Delegate 生效范围SC 物品操作失败时通知 @param DefineID 物品DefineID @param OperationType 操作类型 @param OperationFailedReason 失败原因
---@field UGC_ItemOperationDelegate FItemOperationDelegate @Delegate 生效范围SC 物品操作时通知 @param DefineID 物品DefineID @param OperationType 操作类型 @param Reason 操作原因
---@field UGC_ItemBeforeRemovedDelegate FUGCItemRemovedDelegate @Delegate 生效范围S 物品被移除前通知 @param DefineID 物品DefineID
---@field UGC_CapacityUpdatedDelegate FUGCItemListUpdatedDelegate @Delegate 生效范围SC 背包最大容量变化时通知
---@field specialCountLimit ULuaArrayHelper<FSpecialPickInfo>
---@field LimitItemList ULuaArrayHelper<FLimitItem>
---@field showBounty boolean
---@field DisuseButUndropItemList ULuaArrayHelper<FItemDefineID>
---@field bActiveForbitMergeByMode boolean
---@field bDroppingRestrictedAssembleModel boolean
---@field bDroppingDefaultItemsByRespawnInit boolean
---@field bDroppingCurrentEquipedSuitItem boolean
---@field bReplicateItemsSwitch boolean
---@field bHasBeenInitialized boolean
---@field bInitializedReplicateItems boolean
---@field BackpackMemento FBackpackMemento
---@field ItemList ULuaArrayHelper<FBattleItemData>
---@field ItemListIndex ULuaMapHelper<FItemDefineID, number>
---@field ItemListNetNew FIncNetArrayNew
---@field ItemListNetCacheNew FIncNetArrayNew
---@field BroadcastInsertItemList ULuaArrayHelper<FItemDefineID>
---@field BroadcastUpdateItemList ULuaArrayHelper<FItemDefineID>
---@field BroadcastDeleteItemList ULuaArrayHelper<FItemDefineID>
---@field CurrentEquippingItemList ULuaMapHelper<FItemDefineID, FBattleItemNetNew>
---@field EmoteItemPickupOrder ULuaMapHelper<number, number>
---@field AutoEquipAim boolean
---@field AutoEquipAimAKM boolean
---@field SuitSkinList FSuitSkinList
---@field GlidSkinList ULuaArrayHelper<FGlidSkinUnit>
---@field SuitDefaultHead FItemDefineID
---@field SuitDefaultHair FItemDefineID
---@field ItemHandleList ULuaArrayHelper<UItemHandleBase> @do NOT access this field directly, use **GetItemHandleList** instead
---@field ItemHandleMap ULuaMapHelper<FItemDefineID, UItemHandleBase> @do NOT access this field directly, use **GetItemHandleMap** instead
---@field ItemProxyMap ULuaMapHelper<FItemDefineID, UItemProxyBase>
---@field ItemInterfaceMap ULuaMapHelper<FItemDefineID, IItemInterface>
---@field CapacityThreshold number
---@field Capacity number
---@field OtherCapacity number
---@field SuitCapacity number
---@field OccupiedCapacity number @calculated locally
---@field InitialItemPickupInfoCached ULuaMapHelper<FItemDefineID, FBattleItemPickupInfo>
---@field LimitedClothAvatarIDArray ULuaArrayHelper<number>
---@field isForbidReceiveItemList boolean
---@field ForbiddenIDList ULuaArrayHelper<number>
---@field ItemUseForbiddenDelegate FItemUseForbiddenDelegate
---@field CommonItemUpdatedDelegate FCommonItemUpdatedDelegate
---@field CommonItemDeleteDelegate FCommonItemDeleteDelegate
---@field DeleteItemResultDelegate FRequestDeleteItemResultDelegate
---@field OnRepSuitDefaultHeadDelegate FOnBackpackDataUpGrade
---@field OnRepSuitDefaultHairDelegate FOnBackpackDataUpGrade
---@field CommonItemConsumedDelegate FCommonItemConsumedDelegate
---@field bOpenSafetyBoxOp boolean
---@field SafetyBoxCapacity number
---@field SafetyBoxOccupiedCapacity number @Calculated Locally
---@field ItemStroeAreaChangeDelegate FItemStroeAreaChangeDelegate
---@field PickupAdditionalInfo FEscapePickupAdditionalInfo
---@field CustomPickupAdditionalInfo FCustomPickupAdditionalInfo
---@field bOpenBackpackExtendFeature boolean
---@field bDiamondArenaFeature boolean
---@field bForbidTeammatePickupDropTag boolean
---@field bLTOpenSafetyBoxOp boolean
---@field LTSafetyBoxCapacity number
---@field LTSafetyBoxOccupiedCapacity number @Calculated Locally
---@field LTItemStroeAreaChangeDelegate FItemStroeAreaChangeDelegate
---@field bLTOpenBackpackExtendFeature boolean
local UBackpackComponent = {}

function UBackpackComponent:OnReconnectOnServer() end

---@param DefineID FItemDefineID
---@param ItemHandle UItemHandleBase
---@param bUpdateCapacity boolean
---@return boolean
function UBackpackComponent:AddItemHandle(DefineID, ItemHandle, bUpdateCapacity) end

---@param DefineID FItemDefineID
---@param ItemHandle UItemHandleBase
---@return boolean
function UBackpackComponent:GMAddItemHandle(DefineID, ItemHandle) end

---@param DefineID FItemDefineID
---@param bRecycle boolean
---@return boolean
function UBackpackComponent:RemoveItemHandle(DefineID, bRecycle) end

---@param ItemIDSet ULuaSetHelper<number>
function UBackpackComponent:RemoveItemHandleByIDSet(ItemIDSet) end

---@param DefineID FItemDefineID
function UBackpackComponent:RemoveItemProxy(DefineID) end

function UBackpackComponent:InitLua() end

function UBackpackComponent:DestroyLua() end

---@return boolean
function UBackpackComponent:IsNewPlanApply() end

---@param configName string
---@return boolean
function UBackpackComponent:GetSwitcherCfgList(configName) end

---@param AttachID number
---@param WeaponID number
---@param OtherAttachID number
---@return boolean
function UBackpackComponent:IsNewPlanAttachNeedOnWeapon(AttachID, WeaponID, OtherAttachID) end

---@param weaponComp UActorComponent
---@param defineID FItemDefineID
---@return FItemUsefulType
function UBackpackComponent:IsItemUsefulInner(weaponComp, defineID) end

---@param DefineID FItemDefineID
function UBackpackComponent:CheckDropPreHandle(DefineID) end

---@param ItemID number
---@return number
function UBackpackComponent:RestoreSuitItem(ItemID) end

---@param isApply boolean
---@param OldWeaponCfgList ULuaArrayHelper<FWeaponUsefulCfg>
---@param NewWeaponCfgList ULuaArrayHelper<FWeaponUsefulCfg>
function UBackpackComponent:UpdatePlanWeaponAdd(isApply, OldWeaponCfgList, NewWeaponCfgList) end

---@param OldWeaponCfgList ULuaArrayHelper<FWeaponUsefulCfg>
---@param DiffWeaponCfgList ULuaArrayHelper<FWeaponUsefulCfg>
function UBackpackComponent:MergeWeaponCfg(OldWeaponCfgList, DiffWeaponCfgList) end

---@param isApply boolean
---@param weaponCfgList ULuaArrayHelper<FWeaponUsefulCfg>
function UBackpackComponent:ServerUpdatePlan(isApply, weaponCfgList) end

---@param isApply boolean
---@param weaponCfgList ULuaArrayHelper<FWeaponUsefulCfg>
function UBackpackComponent:ServerUpdatePlanLua(isApply, weaponCfgList) end

---@param pickItemDefineID FItemDefineID
---@param backItemDefineID FItemDefineID
---@return FItemUsefulType
function UBackpackComponent:IsEquipmentUsefulByAttr(pickItemDefineID, backItemDefineID) end

---@param DefineId FItemDefineID
---@return boolean
function UBackpackComponent:IsItemExist(DefineId) end

---@param index number
function UBackpackComponent:UseSuitSkinServer(index) end

---@param index number
function UBackpackComponent:UseSuitSkinClient(index) end

---@param CDSkill number
function UBackpackComponent:ClientSuitSkinIntoCD(CDSkill) end

---@return string
function UBackpackComponent:ItemsToString() end

---@param DefineID FItemDefineID
function UBackpackComponent:CreateBattleItemHandleAsync(DefineID) end

---@param itemHandle UBattleItemHandleBase
function UBackpackComponent:AddClientItemHandle(itemHandle) end

---@param DefineID FItemDefineID
---@param bUpdateCapacity boolean
function UBackpackComponent:NotifyItemUpdated(DefineID, bUpdateCapacity) end

---@param DefineID FItemDefineID
function UBackpackComponent:NotifyItemRemoved(DefineID) end

function UBackpackComponent:NotifyItemListUpdated() end

function UBackpackComponent:NotifyCapacityUpdated() end

function UBackpackComponent:ForceNetUpdate() end

---@param InDefineID FItemDefineID
function UBackpackComponent:RefreshItemGenericAbilities(InDefineID) end

---@param ItemOperationInfo FItemOperationInfo
function UBackpackComponent:BroadcastItemOperationInfoDelegate(ItemOperationInfo) end

---@param DefineID FItemDefineID
---@param OperationType EBattleItemOperationType
---@param Reason number
---@param RPCToClient boolean
function UBackpackComponent:BroadcastItemOperationDelegate(DefineID, OperationType, Reason, RPCToClient) end

function UBackpackComponent:BroadcastInitialPickupDelegate() end

function UBackpackComponent:BroadcastInitialDelayUseDelegate() end

---@param DefineID FItemDefineID
---@param OperationType EBattleItemOperationType
---@param FailedReason EBattleItemOperationFailedReason
function UBackpackComponent:BroadcastItemOperationFailedDelegate(DefineID, OperationType, FailedReason) end

---@param DefineID FItemDefineID
---@param OperationType EBattleItemOperationType
---@param Reason number
function UBackpackComponent:ClientBroadcastItemOperationDelegate(DefineID, OperationType, Reason) end

---@param DefineID FItemDefineID
---@param OperationType EBattleItemOperationType
---@param FailedReason EBattleItemOperationFailedReason
function UBackpackComponent:ClientBroadcastItemOperationFailedDelegate(DefineID, OperationType, FailedReason) end

---@param DefineID FItemDefineID
---@param Count number
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return boolean
function UBackpackComponent:ValidateGenerateItem(DefineID, Count, GenerateReason, ValidateConfigId) end

---@param Operation EItemFlowOperation
---@param DefineID FItemDefineID
---@param Count number
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
function UBackpackComponent:RecordItemFlow(Operation, DefineID, Count, GenerateReason, ValidateConfigId) end

---@param Operation EItemFlowOperation
---@param DefineID FItemDefineID
---@param Count number
---@param GenerateReason EGenerateItemReason
function UBackpackComponent:RunItemReporter(Operation, DefineID, Count, GenerateReason) end

---@param TypeSpecificID number
---@param Count number
---@param InstanceID number
---@param GenerateReason EGenerateItemReason
---@param bTotalStatistics boolean
function UBackpackComponent:RegisterItemGenerated(TypeSpecificID, Count, InstanceID, GenerateReason, bTotalStatistics) end

---@param TypeSpecificID number
---@param Count number
---@param InstanceID number
function UBackpackComponent:UnregisterItemGenerated(TypeSpecificID, Count, InstanceID) end

---@param Operation EItemOperationType
---@param DefineID FItemDefineID
---@param Count number
function UBackpackComponent:CheckInItemHandleOpt(Operation, DefineID, Count) end

---@param Operation EItemOperationType
---@param DefineID FItemDefineID
---@param Count number
---@param Res boolean
function UBackpackComponent:CheckOutItemHandleOpt(Operation, DefineID, Count, Res) end

---@param TypeSpecificID number
---@param Count number
---@param InstanceID number
---@param GenerateReason EGenerateItemReason
function UBackpackComponent:RegisterItemGeneratedIfUnregistered(TypeSpecificID, Count, InstanceID, GenerateReason) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param bUseItem boolean
---@return boolean
function UBackpackComponent:PickupInitialItem(DefineID, PickupInfo, bUseItem) end

function UBackpackComponent:UseInitialItemInBackpack() end

function UBackpackComponent:DelayToUseInitialItemInBackpack() end

---@param ItemHandle UBattleItemHandleBase
---@param PickupInfo FBattleItemPickupInfo
---@return boolean
function UBackpackComponent:UseInitialItem(ItemHandle, PickupInfo) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return boolean
function UBackpackComponent:PickupItem(DefineID, PickupInfo, Reason, GenerateReason, ValidateConfigId) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackComponent:TestPickupItem(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackComponent:FinishPickupItem(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param Count number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackComponent:DropItem(DefineID, Count, Reason) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return boolean
function UBackpackComponent:CustomPickUpItem(DefineID, PickupInfo, Reason, GenerateReason, ValidateConfigId) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return boolean
function UBackpackComponent:CustomPickUpItemExtend(DefineID, PickupInfo, Reason, GenerateReason, ValidateConfigId) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return number
function UBackpackComponent:CustomPickUpItemToVehicleSocket(DefineID, PickupInfo, Reason, GenerateReason, ValidateConfigId) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return number
function UBackpackComponent:CustomPickUpItemToAdditionalBackpack(DefineID, PickupInfo, Reason, GenerateReason, ValidateConfigId) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return number
function UBackpackComponent:CustomPickUpItemToGeekerPocket(DefineID, PickupInfo, Reason, GenerateReason, ValidateConfigId) end

---@return boolean
function UBackpackComponent:HasGunBagItem() end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackComponent:CheckGunBagItemCPP(DefineID) end

---@param RetCount number
---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return boolean
function UBackpackComponent:PickupItemIntelligence(RetCount, DefineID, PickupInfo, Reason, GenerateReason, ValidateConfigId) end

---@param RetCount number
---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return boolean
function UBackpackComponent:CheckIsPickupItemIntelligence(RetCount, DefineID, PickupInfo, Reason, GenerateReason, ValidateConfigId) end

---@param CanDropCount number
---@param DefineID FItemDefineID
---@param Count number
---@param Reason EBattleItemDropReason
---@param HasItemInstance boolean
---@return boolean
function UBackpackComponent:CheckIsDropItemCondition(CanDropCount, DefineID, Count, Reason, HasItemInstance) end

---@param DefineID FItemDefineID
---@param bUse boolean
function UBackpackComponent:ServerEnableItem(DefineID, bUse) end

---@param LogStr string
---@param DefineID FItemDefineID
---@param DefineIDOnHandle FItemDefineID
---@param bConsiderAvatar boolean
---@return boolean
function UBackpackComponent:VerifyItemHandleDefineID(LogStr, DefineID, DefineIDOnHandle, bConsiderAvatar) end

---@param DefineID FItemDefineID
---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackComponent:UseItem(DefineID, Target, Reason) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackComponent:IsItemCanUse(DefineID) end

---@param DefineID FItemDefineID
---@param Target FBattleItemAssociationTarget
---@return boolean
function UBackpackComponent:AddAssociation(DefineID, Target) end

---@param ItemTag string
---@param bDisable boolean
function UBackpackComponent:SetDisableItemByItemTag(ItemTag, bDisable) end

---@param DefineID FItemDefineID
---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackComponent:ClientUseItem(DefineID, Target, Reason) end

---@param DefineID FItemDefineID
---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackComponent:DisuseItem(DefineID, Reason) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackComponent:CanDisuseToBackpack(DefineID) end

---@param DefineID1 FItemDefineID
---@param DefineID2 FItemDefineID
---@return boolean
function UBackpackComponent:SwapItem(DefineID1, DefineID2) end

function UBackpackComponent:ClearItems() end

function UBackpackComponent:ClearItemsForSettlement() end

---specifically for **equippable**, mark it equipping simply modify flag and has no side effects (does NOT call **HandleUse**)
---@param DefineID FItemDefineID
function UBackpackComponent:EquipItem(DefineID) end

---specifically for **equippable**, mark it not equipping simply modify flag and has no side effects (does NOT call **HandleDisuse**)
---@param DefineID FItemDefineID
function UBackpackComponent:UnequipItem(DefineID) end

---specifically for **comsumable**, consume an amount of an item other instances of the item would be consumed if the given instance does not exist (means that InstanceID could possibly be ignored) simply modify count and has no side effects (does NOT call **HandleDrop** or **HandleUse**)
---@param DefineID FItemDefineID
---@param Count number
---@return number
function UBackpackComponent:ConsumeItem(DefineID, Count) end

---take an amount of item from the backpack for some use InstanceID is ignored does NOT work for **unique** items if **bCallHandleDrop** is false, simply modify count and has no side effects (does NOT call **HandleDrop**) else **HandleDrop** will be called to allow some custom logic
---@param DefineID FItemDefineID
---@param Count number
---@param bCallHandleDrop boolean
---@return number
function UBackpackComponent:TakeItem(DefineID, Count, bCallHandleDrop) end

---return an amount of item, at most **MaxCount** of the item will be returned InstanceID is ignored does NOT work for **unique** items if **bCallHandlePickup** is false, simply modify count and has no side effects (does NOT call **HandlePickup**) else **HandlePickup** will be called to allow some custom logic
---@param DefineID FItemDefineID
---@param Count number
---@param bCallHandlePickup boolean
---@return number
function UBackpackComponent:ReturnItem(DefineID, Count, bCallHandlePickup) end

---return the maximum count that can be put in backpack
---@param DefineID FItemDefineID
---@param Count number
---@return number
function UBackpackComponent:CheckCapacityForItem(DefineID, Count) end

---@param NewServerTimeSeconds number
function UBackpackComponent:OnWorldTimeUpdateDelegate(NewServerTimeSeconds) end

---@param DefineID FItemDefineID
---@return ETimeLimitStatus
function UBackpackComponent:GetTimeLimitStatus(DefineID) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackComponent:IsItemValid(DefineID) end

---@param DefineID FItemDefineID
---@return number
function UBackpackComponent:GetTimeLimitStartRemainingTime(DefineID) end

---@param DefineID FItemDefineID
---@return number
function UBackpackComponent:GetTimeLimitEndRemainingTime(DefineID) end

function UBackpackComponent:OnRep_specialCountLimit() end

function UBackpackComponent:OnRep_showBounty() end

---@param bShowBounty boolean
function UBackpackComponent:ServerSetShowBounty(bShowBounty) end

---@param DefineID FItemDefineID
---@return FBattleItemFeatureData
function UBackpackComponent:GetBattleItemFeatureDataByDefineID(DefineID) end

---try to merge two stackable item handles into one only works for **stackable** items
---@param DefineID FItemDefineID
function UBackpackComponent:TryMergeItemHandles(DefineID) end

---interface to modify **bEquipping** field of an item handle called by **EquipItem** and **UnequipItem**
---@param ItemHandle UItemHandleBase
---@param bEquipping boolean
function UBackpackComponent:ModifyItemHandleEquippingState(ItemHandle, bEquipping) end

---interface to modify **Count** field of an item handle call **RemoveItemHandle** if the modified count <=0 called by **ConsumeItem**, **TakeItem** and **ReturnItem**
---@param ItemHandle UItemHandleBase
---@param Count number
function UBackpackComponent:ModifyItemHandleCount(ItemHandle, Count) end

---@param DefineID FItemDefineID
---@param bPickUp boolean
---@return boolean
function UBackpackComponent:GetIsOpenLimitCloseStatus(DefineID, bPickUp) end

---@param DefineID FItemDefineID
---@param expectedPickupCount number
---@return boolean
function UBackpackComponent:GetIsForbitPickUpItemState(DefineID, expectedPickupCount) end

---@param Handle UBattleItemHandleBase
---@return boolean
function UBackpackComponent:GetIsForbitMergeHandle(Handle) end

---获取背包中指定物品的个数
---@param InItemSpecialID number
---@return number
function UBackpackComponent:GetItemCountByItemSpecialID(InItemSpecialID) end

---@param TypeSpecificID number
---@param OutItemList ULuaArrayHelper<FBattleItemData>
function UBackpackComponent:GetItemListByTypeSpecificID(TypeSpecificID, OutItemList) end

---@param subType number
---@return boolean
function UBackpackComponent:HasItemBySubType(subType) end

---@param LowValue number
---@param HighValue number
---@param bValidItemOnly boolean
---@return boolean
function UBackpackComponent:HasItemByDefindIdRange(LowValue, HighValue, bValidItemOnly) end

---ignore InstanceID and find all instances of an item
---@param DefineID FItemDefineID
function UBackpackComponent:GetItemListByDefineID(DefineID) end

---find the first of an item by DefineID ignore InstanceID
---@param DefineID FItemDefineID
---@return FBattleItemData
function UBackpackComponent:GetFirstItemByDefineIDIgnoreInstance(DefineID) end

---@param TypeSpecificID number
---@return number
function UBackpackComponent:GetItemCount(TypeSpecificID) end

---@param InTargetItem FItemDefineID
function UBackpackComponent:SetSuitDefaultHead(InTargetItem) end

---@return FItemDefineID
function UBackpackComponent:GetSuitDefaultHead() end

---@param InTargetItem FItemDefineID
function UBackpackComponent:SetSuitDefaultHair(InTargetItem) end

---@return FItemDefineID
function UBackpackComponent:GetSuitDefaultHair() end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackComponent:CheckItemDropToGroup(DefineID) end

---@param ItemHandle UBattleItemHandleBase
function UBackpackComponent:SettingHandleOwnningPawn(ItemHandle) end

function UBackpackComponent:TickReplicateItems() end

function UBackpackComponent:OnRep_ItemListNetNew() end

function UBackpackComponent:ReceiveItemListNew() end

function UBackpackComponent:ReplicateItems() end

---@param RepItems ULuaArrayHelper<FNetArrayUnitNew>
---@param bReInitialized boolean
---@param bIsBigWorldSwitchDS boolean
function UBackpackComponent:ClientOnReplicateItems(RepItems, bReInitialized, bIsBigWorldSwitchDS) end

---@param RepItemsOpt FNetRPCItemArraySerializer
---@param bReInitialized boolean
---@param bIsBigWorldSwitchDS boolean
function UBackpackComponent:ClientOnReplicateItemsOpt(RepItemsOpt, bReInitialized, bIsBigWorldSwitchDS) end

---@param bEequipAim boolean
function UBackpackComponent:ModifyAimNotAutoUse(bEequipAim) end

---@param bEquipAimAKM boolean
function UBackpackComponent:ModifyAimNotAutoUseForAKM(bEquipAimAKM) end

---@param itemID number
---@return boolean
function UBackpackComponent:IsAutoUse(itemID) end

function UBackpackComponent:OnRep_SuitDefaultHead() end

function UBackpackComponent:OnRep_SuitDefaultHair() end

function UBackpackComponent:OnRep_SuitSkinListNet() end

---@param DefineID FItemDefineID
function UBackpackComponent:ClientUpdateSingleItem(DefineID) end

---@param DefineID FItemDefineID
---@param Count number
---@param AdditionalData ULuaArrayHelper<FBattleItemAdditionalData>
function UBackpackComponent:DragToGroupLua(DefineID, Count, AdditionalData) end

function UBackpackComponent:GetItemDefineIDList() end

---@param ItemDefineID FItemDefineID
---@param Count number
---@param Reason EBattleItemPickupReason
function UBackpackComponent:DropItemCountByReason(ItemDefineID, Count, Reason) end

---@return boolean
function UBackpackComponent:ContainsVirtualItem() end

---@param ID number
function UBackpackComponent:AddForbiddenID(ID) end

---@param ID number
function UBackpackComponent:RemoveForbiddenID(ID) end

function UBackpackComponent:EmptyForbiddenIDList() end

---@param ID number
---@return boolean
function UBackpackComponent:IsItemForbidden(ID) end

function UBackpackComponent:OnRep_Capacity() end

function UBackpackComponent:OnRep_OtherCapacity() end

function UBackpackComponent:OnRep_SuitCapacity() end

function UBackpackComponent:ReceiveCapacity() end

---@return number
function UBackpackComponent:UpdateCapacity() end

---@return number
function UBackpackComponent:UpdateOtherCapacity() end

---@return number
function UBackpackComponent:UpdateSuitCapacity() end

---locally calculate occupied capacity
---@return number
function UBackpackComponent:UpdateOccupiedCapacity() end

---@param ItemData FBattleItemData
---@return boolean
function UBackpackComponent:IsVirtualItemData(ItemData) end

function UBackpackComponent:LockUpdateItemListReceive() end

function UBackpackComponent:UnlockUpdateItemListReceive() end

---@param DefineID FItemDefineID
---@param AdditionalDataName string
---@return FBattleItemData
function UBackpackComponent:GetLeastElectrictyBattleItemData(DefineID, AdditionalDataName) end

---@param bOpen boolean
function UBackpackComponent:InitOpenSafetyBox(bOpen) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Count number
---@return number
function UBackpackComponent:EscapeCheckCapacityForItem(DefineID, PickupInfo, Count) end

---locally calculate occupied capacity
function UBackpackComponent:EscpaeUpdateOccupiedCapacity() end

---@return number
function UBackpackComponent:GetSafetyBoxCapacity() end

---@return number
function UBackpackComponent:GetSafetyBoxOccupiedCapacity() end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Count number
---@return number
function UBackpackComponent:CheckSafetyBoxCapacityForItem(DefineID, PickupInfo, Count) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackComponent:PickupItemIntoSafetyBox(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param InItemStoreArea EItemStoreArea
---@return boolean
function UBackpackComponent:ChangeItemStoreArea(DefineID, InItemStoreArea) end

---@param DefineID FItemDefineID
function UBackpackComponent:TryMergeSafetyBoxItemHandles(DefineID) end

---@param InStoreArea EItemStoreArea
function UBackpackComponent:GetItemListByStoreArea(InStoreArea) end

---@param TypeSpecificID number
---@param InStoreArea EItemStoreArea
function UBackpackComponent:GetItemListBySpecificIDAndStoreArea(TypeSpecificID, InStoreArea) end

function UBackpackComponent:OnRep_SafetyBoxCapacity() end

---@return boolean
function UBackpackComponent:CanUseSafetyBox() end

---@param DefineID FItemDefineID
---@param InItemStoreArea EItemStoreArea
---@param Count number
function UBackpackComponent:ServerChangeItemStoreArea(DefineID, InItemStoreArea, Count) end

---@param DefineID FItemDefineID
---@param InItemStoreArea EItemStoreArea
---@param Count number
function UBackpackComponent:OnClientChangeItemStoreArea(DefineID, InItemStoreArea, Count) end

---@param DefineID FItemDefineID
---@param InItemStoreArea EItemStoreArea
---@param Count number
function UBackpackComponent:OnClientChangeItemStoreAreaLua(DefineID, InItemStoreArea, Count) end

---@param bInOpenBackpackExtendFeature boolean
---@param BackpackExtendFeatureClass UClass
---@return boolean
function UBackpackComponent:InitOpenBackpackExtendFeature(bInOpenBackpackExtendFeature, BackpackExtendFeatureClass) end

---@param bOpen boolean
---@return boolean
function UBackpackComponent:InitDiamondArenaFeature(bOpen) end

---@param bOpen boolean
function UBackpackComponent:LTInitOpenSafetyBox(bOpen) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Count number
---@return number
function UBackpackComponent:LTCheckCapacityForItem(DefineID, PickupInfo, Count) end

---locally calculate occupied capacity
function UBackpackComponent:LTUpdateOccupiedCapacity() end

---@return number
function UBackpackComponent:LTGetSafetyBoxCapacity() end

---@return number
function UBackpackComponent:LTGetSafetyBoxOccupiedCapacity() end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Count number
---@return number
function UBackpackComponent:LTCheckSafetyBoxCapacityForItem(DefineID, PickupInfo, Count) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackComponent:LTPickupItemIntoSafetyBox(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param InItemStoreArea EItemStoreArea
---@return boolean
function UBackpackComponent:LTChangeItemStoreArea(DefineID, InItemStoreArea) end

---@param DefineID FItemDefineID
function UBackpackComponent:LTTryMergeSafetyBoxItemHandles(DefineID) end

---@param InStoreArea EItemStoreArea
function UBackpackComponent:LTGetItemListByStoreArea(InStoreArea) end

function UBackpackComponent:OnRep_LTSafetyBoxCapacity() end

---@param DefineID FItemDefineID
---@param InItemStoreArea EItemStoreArea
---@param Count number
function UBackpackComponent:LTServerChangeItemStoreArea(DefineID, InItemStoreArea, Count) end

---@param bInOpenBackpackExtendFeatureLT boolean
---@return boolean
function UBackpackComponent:LTInitOpenBackpackExtendFeature(bInOpenBackpackExtendFeatureLT) end
