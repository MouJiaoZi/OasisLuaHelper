---@meta

---@class EBackpackItemType
---@field UnknownBackpackItemType number @未知背包物品类型
---@field BackpackItemType_Weapon number @枪与近战武器
---@field BackpackItemType_WeaponAttachment number @武器配件
---@field BackpackItemType_Ammo number @枪械子弹
---@field BackpackItemType_Clothing number @衣服
---@field BackpackItemType_Armor number @防具和背包
---@field BackpackItemType_Consumable number @药品与手雷
---@field BackpackItemType_Emote number @动作表情
EBackpackItemType = {}


---@class FBattleItemSortingInfo
---@field ItemDefineID FItemDefineID
---@field bHighPriority boolean
FBattleItemSortingInfo = {}


---@class FBattleSearchItemSortingInfo
---@field SearchItemResult FSearchedPickUpItemResult
---@field bHighPriority boolean
---@field pickCount number
FBattleSearchItemSortingInfo = {}


---@class FBattleSearchBoxSortingInfo
---@field pickUpItemResult FSearchedPickUpItemResult
---@field bHighPriority boolean
---@field pickCount number
FBattleSearchBoxSortingInfo = {}


---@class FPickupItemDataSortingInfo
---@field data FPickUpItemData
---@field bHighPriority boolean
FPickupItemDataSortingInfo = {}


---@class FItemDefineSortingInfo
---@field defineID FItemDefineID
---@field bUsed boolean
---@field bMainHand boolean
FItemDefineSortingInfo = {}


---@class FOccupationChipList
---@field ChipIDList ULuaArrayHelper<number>
FOccupationChipList = {}


---@class FWeaponAttachFit
---@field GunID number
---@field AttachID number
FWeaponAttachFit = {}


---@class FDefaultBulletNeed
---@field GunID number
---@field DefaultNeed number
FDefaultBulletNeed = {}


---@class FSimpleCreateBattleItemHandleAsyncRequest
---@field DefineID FItemDefineID
---@field Path string
---@field bHandleCDO boolean
FSimpleCreateBattleItemHandleAsyncRequest = {}


---@class FCreateBattleItemHandleAsyncRequest
---@field DefineID FItemDefineID
---@field Path string
---@field Callback FCreateBattleItemHandleAsyncDelegate
---@field bHandleCDO boolean
FCreateBattleItemHandleAsyncRequest = {}


---@class FCreateBattleItemHandleListAsyncRequest
---@field DefineIDList ULuaArrayHelper<FItemDefineID>
---@field PathList ULuaArrayHelper<string>
---@field bHandleCDOList ULuaArrayHelper<boolean>
---@field AsyncLoadReqID number
---@field Callback FCreateBattleItemHandleAsyncListDelegate
FCreateBattleItemHandleListAsyncRequest = {}


---@class FWeaponAttachItemUnit
---@field defineID FItemDefineID
---@field socket EWeaponAttachmentSocketType
FWeaponAttachItemUnit = {}


---@class FAttachTableType
---@field ColName string
---@field SocketType EWeaponAttachmentSocketType
---@field TableColNameList ULuaArrayHelper<string>
FAttachTableType = {}


---@class FWeaponAttachList
---@field attachList ULuaArrayHelper<number>
---@field bulletList ULuaArrayHelper<number>
---@field attachPosList ULuaArrayHelper<EWeaponAttachmentSocketType>
---@field ProposeBulletNum number
FWeaponAttachList = {}


---@class FSimpleCreateBattleItemHandleAsyncDelegate : ULuaSingleDelegate
FSimpleCreateBattleItemHandleAsyncDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FItemDefineID, Param2: UBattleItemHandleBase) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSimpleCreateBattleItemHandleAsyncDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FItemDefineID
---@param Param2 UBattleItemHandleBase
function FSimpleCreateBattleItemHandleAsyncDelegate:Execute(Param1, Param2) end


---@class FCreateBattleItemHandleAsyncDelegate : ULuaSingleDelegate
FCreateBattleItemHandleAsyncDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, DefineID: FItemDefineID, BattleItemHandle: UBattleItemHandleBase) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCreateBattleItemHandleAsyncDelegate:Bind(Callback, Obj) end

---执行委托
---@param DefineID FItemDefineID
---@param BattleItemHandle UBattleItemHandleBase
function FCreateBattleItemHandleAsyncDelegate:Execute(DefineID, BattleItemHandle) end


---@class FCreateBattleItemHandleAsyncListDelegate : ULuaSingleDelegate
FCreateBattleItemHandleAsyncListDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, BattleItemHandles: ULuaArrayHelper<UBattleItemHandleBase>, AsyncLoadReqID: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCreateBattleItemHandleAsyncListDelegate:Bind(Callback, Obj) end

---执行委托
---@param BattleItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadReqID number
function FCreateBattleItemHandleAsyncListDelegate:Execute(BattleItemHandles, AsyncLoadReqID) end


---@class UAsyncLoadParam: UObject
---@field ResChannel number
---@field MaxCallbackDelayTime number
---@field AdditionalResBunch ULuaArrayHelper<FSoftObjectPath>
local UAsyncLoadParam = {}


---@class UBackpackUtils: UBlueprintFunctionLibrary
local UBackpackUtils = {}

---@param ItemTableID number
---@return boolean
function UBackpackUtils:ValidItem(ItemTableID) end

---well I admit it's a bad name hahahahahaha
---@param ItemTableID number
---@return FItemDefineID
function UBackpackUtils:GenerateItemDefineIDByItemTableIDWithRandomInstanceID(ItemTableID) end

---@param ItemID number
---@return FItemDefineID
function UBackpackUtils:GetItemDefineIDByItemID(ItemID) end

---@param ItemID number
---@return FItemDefineID
function UBackpackUtils:GenerateItemDefineIDByItemID(ItemID) end

---@param ItemName string
---@return FItemDefineID
function UBackpackUtils:GenerateItemDefineIDByItemName(ItemName) end

---@param ItemName string
---@return FItemDefineID
function UBackpackUtils:GenerateItemDefineIDByItemNameWithRandomInstanceID(ItemName) end

---@param defineID FItemDefineID
---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetWeaponAttachByWeaponDefineID(defineID, BackpackComp) end

---@param BackpackComp UBackpackComponent
---@param Source APickUpWrapperActor
---@param AutoEquipTarget FBattleItemUseTarget
---@param bForceAutoEquip boolean
---@param pickCount number
function UBackpackUtils:PickupFromGround(BackpackComp, Source, AutoEquipTarget, bForceAutoEquip, pickCount) end

---@param BackpackComp UBackpackComponent
---@param itemID number
---@param Count number
---@param ForceSell boolean
---@return number
function UBackpackUtils:PickupFromShop(BackpackComp, itemID, Count, ForceSell) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:ForceDropItemCannotCarryOnPlane(BackpackComp) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:ForceDropAll(BackpackComp) end

---@param BackpackComp UBackpackComponent
---@param ItemType number
---@param bIgnoreAvatarItem boolean
function UBackpackUtils:DropItemsByItemType(BackpackComp, ItemType, bIgnoreAvatarItem) end

---@param BackpackComp UBackpackComponent
---@param ItemTypeList ULuaArrayHelper<number>
---@param bIgnoreAvatarItem boolean
function UBackpackUtils:DropItemsByItemTypeList(BackpackComp, ItemTypeList, bIgnoreAvatarItem) end

---@param BackpackComp UBackpackComponent
---@param ItemSubType number
function UBackpackUtils:DropItemsByItemSubType(BackpackComp, ItemSubType) end

---@param BackpackComp UBackpackComponent
---@param DefineID FItemDefineID
---@return boolean
function UBackpackUtils:IsAvatarItem(BackpackComp, DefineID) end

---@param BackpackComp UBackpackComponent
---@param DefineID FItemDefineID
---@param Count number
---@param bCallHandleDrop boolean
---@return number
function UBackpackUtils:CommonTakeItem(BackpackComp, DefineID, Count, bCallHandleDrop) end

---@param BackpackComp UBackpackComponent
---@param DefineID FItemDefineID
---@param Count number
---@param bCallHandlePickup boolean
---@return number
function UBackpackUtils:ReturnIteratively(BackpackComp, DefineID, Count, bCallHandlePickup) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:ExtractPickupWrapperItems(BackpackComp) end

---@param BackpackComp UBackpackComponent
---@param EmoteIndex number
---@param sType number
---@return number
function UBackpackUtils:GetSuitIndexByIndexAndType(BackpackComp, EmoteIndex, sType) end

---@param BackpackComp UBackpackComponent
---@param weaponDefineID FItemDefineID
function UBackpackUtils:GetAttachHandleByWeapon(BackpackComp, weaponDefineID) end

---@param BackpackComp UBackpackComponent
---@param subType number
function UBackpackUtils:GetNotSkinHandleBySubType(BackpackComp, subType) end

---construct a battle item data without state data
---@param DefineID FItemDefineID
---@return FBattleItemData
function UBackpackUtils:ConstructBattleItemDataByDefineID(DefineID) end

---construct a battle item data without state data or instance ID
---@param ItemTableID number
---@return FBattleItemData
function UBackpackUtils:ConstructBattleItemDataByItemTableID(ItemTableID) end

---construct a battle item data without state data or instance ID
---@param ItemName string
---@return FBattleItemData
function UBackpackUtils:ConstructBattleItemDataByItemName(ItemName) end

---@param ResID number
---@return string
function UBackpackUtils:GetWeaponHandlePath_Lobby(ResID) end

---@param DefineID FItemDefineID
---@param Outer UObject
---@param Delegate FCreateBattleItemHandleAsyncDelegate
---@param bHandleCDO boolean
function UBackpackUtils:CreateBattleItemHandleAsync(DefineID, Outer, Delegate, bHandleCDO) end

---@param DefineIDList ULuaArrayHelper<FItemDefineID>
---@param Outer UObject
---@param Delegate FCreateBattleItemHandleAsyncListDelegate
---@param bHandleCDO boolean
---@param AsyncLoadID number
---@param CallbackParam UAsyncLoadParam
function UBackpackUtils:CreateBattleItemHandleListAsync(DefineIDList, Outer, Delegate, bHandleCDO, AsyncLoadID, CallbackParam) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackUtils:CheckItemPathValid(DefineID) end

---@param DefineID FItemDefineID
---@return FBattleItemFeatureData
function UBackpackUtils:GetBattleItemFeatureDataByDefineID(DefineID) end

---@param DefineID FItemDefineID
---@return string
function UBackpackUtils:GetBattleItemHandlePath(DefineID) end

---@param BackpackComp UBackpackComponent
---@param coldmodeItemType EColdModeItemType
---@return FBattleItemData
function UBackpackUtils:GetColdModeItem(BackpackComp, coldmodeItemType) end

---@param BackpackComp UBackpackComponent
---@param coldmodeItemType EColdModeItemType
---@return number
function UBackpackUtils:GetColdModeItemNum(BackpackComp, coldmodeItemType) end

function UBackpackUtils:InitialPickupSetting() end

---@param itemID number
---@param Count number
---@param BackpackComp UBackpackComponent
---@return boolean
function UBackpackUtils:ConsumeItemByLobby(itemID, Count, BackpackComp) end

---@param TypeSpecificID number
---@return boolean
function UBackpackUtils:IsUniqueClothNeedTakeOff(TypeSpecificID) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackUtils:IsHeadNotPutOff(DefineID) end

---@param itemID number
---@return boolean
function UBackpackUtils:IsParachuteItem(itemID) end

---@param itemSpecialID number
---@return boolean
function UBackpackUtils:IsCanUseInBackpack(itemSpecialID) end

---@param itemID number
---@return boolean
function UBackpackUtils:IsUAV(itemID) end

---@param itemID number
---@return boolean
function UBackpackUtils:IsNotShowEmotionCloth(itemID) end

---@param itemID number
---@return boolean
function UBackpackUtils:IsElectricity(itemID) end

---@param ItemID number
---@return boolean
function UBackpackUtils:IsBigWorldToBattleRoyaleItem(ItemID) end

---@param ItemData FBattleItemData
---@param MainBackpack UUAEUserWidget
---@param OnlyValueItemDisplay boolean
---@return boolean
function UBackpackUtils:IsItemVisibleInBackpackLua(ItemData, MainBackpack, OnlyValueItemDisplay) end

---@param ItemData FBattleItemData
---@param PC ASTExtraPlayerController
---@return boolean
function UBackpackUtils:IsItemVisibleInBackpackBP(ItemData, PC) end

---@param SearchItemResult FSearchedPickUpItemResult
---@return number
function UBackpackUtils:GetPickupItemResultIndentify(SearchItemResult) end

---@param BackpackComp UBackpackComponent
---@param weaponComp UWeaponManagerComponent
---@param defineID FItemDefineID
---@param SearchItemResult FSearchedPickUpItemResult
---@return boolean
function UBackpackUtils:CheckItemUseful(BackpackComp, weaponComp, defineID, SearchItemResult) end

---@param BackpackComp UBackpackComponent
---@param weaponComp UWeaponManagerComponent
---@param defineID FItemDefineID
---@param JudgePickUseful FJudgePickupUsefulItem
---@return boolean
function UBackpackUtils:CheckItemUsefulByJudge(BackpackComp, weaponComp, defineID, JudgePickUseful) end

---@param BackpackComp UBackpackComponent
---@param defineID FItemDefineID
---@param bPickUp boolean
---@return boolean
function UBackpackUtils:CheckIsLimitedClothStatus(BackpackComp, defineID, bPickUp) end

---@param BackpackComp UBackpackComponent
---@param weaponComp UWeaponManagerComponent
---@param defineID FItemDefineID
---@return number
function UBackpackUtils:IsAttachUseful(BackpackComp, weaponComp, defineID) end

---@param BackpackComp UBackpackComponent
---@param weaponComp UWeaponManagerComponent
---@param defineID FItemDefineID
---@param SearchItemResult FSearchedPickUpItemResult
---@return FItemUsefulType
function UBackpackUtils:GetItemUseful(BackpackComp, weaponComp, defineID, SearchItemResult) end

---@param BackpackComp UBackpackComponent
---@param weaponComp UWeaponManagerComponent
---@param defineID FItemDefineID
---@param JudgePickUseful FJudgePickupUsefulItem
---@return FItemUsefulType
function UBackpackUtils:GetItemUsefulByJudge(BackpackComp, weaponComp, defineID, JudgePickUseful) end

function UBackpackUtils:ClearItemUsefulCache() end

---@param defineID FItemDefineID
function UBackpackUtils:ClearItemUsefulCacheByDefineID(defineID) end

---@param resID number
---@param weaponID number
---@return EWeaponAttachmentSocketType
function UBackpackUtils:getSocketByAttachResID(resID, weaponID) end

---@param resID number
---@return EOccupationChipSocketType
function UBackpackUtils:getSocketByChipResID(resID) end

---@param resID number
---@return FOccupationChipList
function UBackpackUtils:getOccupationModeRes(resID) end

---@param BackpackComp UBackpackComponent
---@param outDefineID FItemDefineID
---@return boolean
function UBackpackUtils:GetOccupationCardItemDefineID(BackpackComp, outDefineID) end

---@param unit FSuitSkinUnit
---@return number
function UBackpackUtils:getEmoteIDBySuit(unit) end

---@param left FBattleItemData
---@param right FBattleItemData
---@return boolean
function UBackpackUtils:IsBackpackItemEqual(left, right) end

---@return number
function UBackpackUtils:GetRevivalCardID() end

---@param InID number
---@return boolean
function UBackpackUtils:IsRevivalCardID(InID) end

---@param PlayerState ASTExtraPlayerState
---@return boolean
function UBackpackUtils:IsValidRevivalCard(PlayerState) end

---@param itemID number
---@return boolean
function UBackpackUtils:IsNotDropItem(itemID) end

---@param itemType number
---@return boolean
function UBackpackUtils:IsGunItemType(itemType) end

---@param ItemID number
---@return number
function UBackpackUtils:GetLimitPickCountById(ItemID) end

---@param itemType number
---@return boolean
function UBackpackUtils:IsAttachItemType(itemType) end

---@param itemID number
---@return boolean
function UBackpackUtils:IsAutoEquipAndDrop(itemID) end

---@param ItemID number
---@return boolean
function UBackpackUtils:IsGrenade(ItemID) end

---@param ItemID number
---@return boolean
function UBackpackUtils:IsMelee(ItemID) end

---@param BackpackComp UBackpackComponent
---@param DefineID FItemDefineID
---@param bOnlyInstance boolean
---@param bValidItemOnly boolean
---@return number
function UBackpackUtils:GetItemCountByDefineID(BackpackComp, DefineID, bOnlyInstance, bValidItemOnly) end

---@param DefineID FItemDefineID
---@return number
function UBackpackUtils:GetItemInstanceID(DefineID) end

---@param BackpackComp UBackpackComponent
---@param IDList ULuaArrayHelper<number>
---@return number
function UBackpackUtils:GetItemCountByIDList(BackpackComp, IDList) end

---@param BackpackComp UBackpackComponent
---@param DefineID FItemDefineID
---@param bOnlyInstance boolean
---@return number
function UBackpackUtils:GetItemCountByDefineIDUnEquip(BackpackComp, DefineID, bOnlyInstance) end

---@param BackpackComp UBackpackComponent
---@param bIncludeVirtualItems boolean
function UBackpackUtils:GetAllItemsInBackpack(BackpackComp, bIncludeVirtualItems) end

---@param BackpackComp UBackpackComponent
---@param bIncludeVirtualItems boolean
function UBackpackUtils:GetAllItemsInBackpackByUseful(BackpackComp, bIncludeVirtualItems) end

---@param BackpackComp UBackpackComponent
---@param bIncludeVirtualItems boolean
function UBackpackUtils:GetAllItemsInBackpackByRecyclePrice(BackpackComp, bIncludeVirtualItems) end

---@param WorldContext UObject
---@return boolean
function UBackpackUtils:IsNormalTrainingMode(WorldContext) end

---@param TimeStart number
---@param TimeEnd number
---@param WorldContext UObject
---@return number
function UBackpackUtils:GetTimeLimitEndRemainingTime(TimeStart, TimeEnd, WorldContext) end

---@param BackpackComp UBackpackComponent
---@param IDList ULuaArrayHelper<number>
function UBackpackUtils:GetBattleItemDataListByIDList(BackpackComp, IDList) end

---@param Data ULuaArrayHelper<FBattleItemAdditionalData>
---@param Name string
---@return number
function UBackpackUtils:HasAdditionalData(Data, Name) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetConsumablesInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetClothingAndArmorInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetArmorInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
---@param SubType number
function UBackpackUtils:GetEquipedArmorInBackpack(BackpackComp, SubType) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetWeaponAttachmentsInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetWeaponWeaponMaterialInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
---@param bIncludeEquiping boolean
function UBackpackUtils:GetWeaponAttachmentHandles(BackpackComp, bIncludeEquiping) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetWeaponsInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetOccupationMode(BackpackComp) end

---@param BackpackComp UBackpackComponent
---@param itemResID number
---@return FSpecialPickInfo
function UBackpackUtils:GetSpecialItemBefore(BackpackComp, itemResID) end

---@param BackpackComp UBackpackComponent
---@param DefineID FItemDefineID
---@return FSpecialPickInfo
function UBackpackUtils:GetSpecialItemNow(BackpackComp, DefineID) end

---@param BackpackComp UBackpackComponent
---@param subType number
function UBackpackUtils:GetHandleListBySubType(BackpackComp, subType) end

---@param ItemHandle UBattleItemHandleBase
---@param Name string
---@param IntValue number
---@param FloatValue number
---@param FStringValue string
function UBackpackUtils:SetAdditionalData(ItemHandle, Name, IntValue, FloatValue, FStringValue) end

---@param ItemHandle UBattleItemHandleBase
---@param Name string
---@param Value number
---@param MinValue number
---@param MaxValue number
---@return boolean
function UBackpackUtils:AddIntFirstHandleDataByItemID(ItemHandle, Name, Value, MinValue, MaxValue) end

---@param ItemHandle UBattleItemHandleBase
---@param Name string
---@param Value number
---@param MinValue number
---@param MaxValue number
---@return boolean
function UBackpackUtils:AddFloatFirstHandleDataByItemID(ItemHandle, Name, Value, MinValue, MaxValue) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetOccupationChip(BackpackComp) end

---@param BackpackComp UBackpackComponent
---@param DesignatedType ULuaArrayHelper<number>
function UBackpackUtils:GetDesignatedTypeItemInBackpack(BackpackComp, DesignatedType) end

---@param BackpackComp UBackpackComponent
---@param ItemTag string
function UBackpackUtils:GetDesignatedTagItemInBackpack(BackpackComp, ItemTag) end

---@param BackpackComp UBackpackComponent
---@param ItemTagSub string
function UBackpackUtils:GetDesignatedTagSubItemInBackpack(BackpackComp, ItemTagSub) end

---@param ItemList ULuaArrayHelper<FBattleItemSortingInfo>
function UBackpackUtils:SortBattleItemList(ItemList) end

---@param ItemList ULuaArrayHelper<FBattleSearchItemSortingInfo>
function UBackpackUtils:SortBattleSearchItemList(ItemList) end

---@param BoxList ULuaArrayHelper<FBattleSearchBoxSortingInfo>
function UBackpackUtils:SortBattleSearchBoxList(BoxList) end

---@param DefineIDList ULuaArrayHelper<FItemDefineSortingInfo>
function UBackpackUtils:SortDefineIDByWeight(DefineIDList) end

---@param PickupList ULuaArrayHelper<FPickupItemDataSortingInfo>
function UBackpackUtils:SortPickupItemDataList(PickupList) end

---@param DefineID1 FItemDefineID
---@param DefineID2 FItemDefineID
---@return boolean
function UBackpackUtils:IsSameItem(DefineID1, DefineID2) end

---@param DefineID1 FItemDefineID
---@param DefineID2 FItemDefineID
---@return boolean
function UBackpackUtils:IsSameInstance(DefineID1, DefineID2) end

---@param ItemData1 FBattleItemData
---@param ItemData2 FBattleItemData
---@return boolean
function UBackpackUtils:SameBattleItemData(ItemData1, ItemData2) end

---@param ItemDefineID FItemDefineID
function UBackpackUtils:GetBackpackItemType(ItemDefineID) end

---@param BackpackComp UBackpackComponent
---@param MeshType EEmoteMesh
function UBackpackUtils:GetEmoteItemInBackpack(BackpackComp, MeshType) end

---@param BackpackComp UBackpackComponent
---@param ItemList ULuaArrayHelper<FBattleItemData>
function UBackpackUtils:SortEmoteItemInBackpack(BackpackComp, ItemList) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetDecalItemInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
function UBackpackUtils:GetBuildingMateInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
---@param InType number
function UBackpackUtils:GetHandleListByType(BackpackComp, InType) end

---@param BackpackComp UBackpackComponent
---@param Character ASTExtraBaseCharacter
function UBackpackUtils:AddCharacterVirtualItemHandleToBackpack(BackpackComp, Character) end

---@param BackpackComp UBackpackComponent
---@return FBattleItemData
function UBackpackUtils:GetCharacterVirtualItemInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
---@param DefineID FItemDefineID
---@return boolean
function UBackpackUtils:IsCharacterVirtualItem(BackpackComp, DefineID) end

---@param BackpackComp UBackpackComponent
---@param OldCapacity number
---@param NewCapacity number
---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackUtils:CheckCapacityForSwapOrDrop(BackpackComp, OldCapacity, NewCapacity, Reason) end

---@param subType number
---@param BackpackComp UBackpackComponent
---@return boolean
function UBackpackUtils:HasItemBySubType(subType, BackpackComp) end

---@param subType number
---@param bEnable boolean
---@param BackpackComp UBackpackComponent
function UBackpackUtils:EnableItemBySubType(subType, bEnable, BackpackComp) end

---@param DamageType number
---@param SubType number
---@param OutAttackName string
---@param OutAttackActionName string
function UBackpackUtils:GetAttackTipDataByDamageEventType(DamageType, SubType, OutAttackName, OutAttackActionName) end

---@param Type EBattleTextType
---@return string
function UBackpackUtils:GetRawBattleTextByType(Type) end

---@param ID number
---@return string
function UBackpackUtils:GetRawBattleTextByRawTextID(ID) end

function UBackpackUtils:ClearCache() end

---@param ID number
---@param param1 string
---@param param2 string
---@return string
function UBackpackUtils:GetRawBattleTextByRawTextIDAndParam(ID, param1, param2) end

---@param itemID number
---@return string
function UBackpackUtils:GetItemRelatedSkill(itemID) end

---@param PC ASTExtraPlayerController
---@param itemID number
---@return string
function UBackpackUtils:GetWrapperStaticMeshPath(PC, itemID) end

---@param itemID number
---@return number
function UBackpackUtils:GetEquipSlotID(itemID) end

---@param itemID number
---@param IsAutonomous boolean
---@param IsMale boolean
---@return string
function UBackpackUtils:GetEquipSkeletalMesh(itemID, IsAutonomous, IsMale) end

---@param itemID number
---@param IsMale boolean
---@return string
function UBackpackUtils:GetEquipStaticMesh(itemID, IsMale) end

---@param itemID number
---@param IsMale boolean
function UBackpackUtils:GetEquipReplaceFlags(itemID, IsMale) end

---@param DefineID FItemDefineID
---@return FBattleWeaponItemDisplayData
function UBackpackUtils:GetBattleWeaponItemDisplayDataByDefineID(DefineID) end

---@param ResID number
---@return number
function UBackpackUtils:GetBPIDByResID(ResID) end

---@param WorldContext UObject
---@param ResID number
---@param Type EBackpackItemType
---@return number
function UBackpackUtils:GetReloadIDByResID(WorldContext, ResID, Type) end

---@param WorldContext UObject
---@param ReloadID number
function UBackpackUtils:GetResIDByReloadID(WorldContext, ReloadID) end

---@param RealResID number
---@return number
function UBackpackUtils:GetWeaponBaseSkinByRealSkinID(RealResID) end

---@param DefineID FItemDefineID
---@return string
function UBackpackUtils:GetBPTableNameByItemID(DefineID) end

---@param ItemID number
---@return FCharacterAvatar_WearItemMetaInfo
function UBackpackUtils:GetWearItemMetaInfo(ItemID) end

---@param InAvatarID number
---@return number
function UBackpackUtils:GetAvatarMasterID(InAvatarID) end

---@param PC ASTExtraPlayerController
---@param bDelayPickupAvatar boolean
function UBackpackUtils:InitWeaponAvatarItems(PC, bDelayPickupAvatar) end

---@param PC ASTExtraPlayerController
---@param WeaponHandle UBackpackWeaponHandle
function UBackpackUtils:PickupWeaponAvatarItem(PC, WeaponHandle) end

---@param PC ASTExtraPlayerController
---@param WeaponSkinHandle UBackpackWeaponHandle
---@param DefineID FItemDefineID
function UBackpackUtils:FillWeaponSkinHandles(PC, WeaponSkinHandle, DefineID) end

---@param WeaponSkinHandle UBackpackWeaponHandle
---@param AbilityHandle UItemHandleBase
---@param AbilityItem FGameModePlayerItem
function UBackpackUtils:BuildWeaponSkinAbilityAssociations(WeaponSkinHandle, AbilityHandle, AbilityItem) end

---@param list1 ULuaArrayHelper<FBattleItemData>
---@param list2 ULuaArrayHelper<FBattleItemData>
---@return boolean
function UBackpackUtils:CompareBattleItemDataList(list1, list2) end

---@param weaponComp UWeaponManagerComponent
---@param longGunCount number
---@param pistolCount number
function UBackpackUtils:GetGunNum(weaponComp, longGunCount, pistolCount) end

---@param BackpackComp UBackpackComponent
---@param weaponComp UWeaponManagerComponent
---@param defineID FItemDefineID
function UBackpackUtils:WeaponAttachFit(BackpackComp, weaponComp, defineID) end

---@param BackpackComp UBackpackComponent
---@param weaponComp UWeaponManagerComponent
---@param defineID FItemDefineID
function UBackpackUtils:GetDefaultBulletNeed(BackpackComp, weaponComp, defineID) end

---@param PC ASTExtraPlayerController
---@return number
function UBackpackUtils:GetCurrUseGlidItemID(PC) end

---@param PC ASTExtraPlayerController
---@param glidItemID number
---@return number
function UBackpackUtils:GetCurrUseGlidCostCount(PC, glidItemID) end

---@param PC ASTExtraPlayerController
---@param glidItemID number
---@param CostItemID number
---@param Count number
---@return boolean
function UBackpackUtils:ModifyCurrUseGlidCostCount(PC, glidItemID, CostItemID, Count) end

---@param PC ASTExtraPlayerController
---@param handleBase UBattleItemHandleBase
function UBackpackUtils:ReloadWeaponAblilty(PC, handleBase) end

---@param PC ASTExtraPlayerController
function UBackpackUtils:InitWeaponAttachmentAvatarItems(PC) end

---@param ItemID number
---@return string
function UBackpackUtils:GetPickupWrapperClassPath(ItemID) end

---@param PC ASTExtraPlayerController
---@param PlayerWearInfo FGameModePlayer_WearInfo
function UBackpackUtils:ReplaceEquipedSkin(PC, PlayerWearInfo) end

---@param PC ASTExtraPlayerController
function UBackpackUtils:ReplaceWeaponBattleItem(PC) end

---@param handleBase UBattleItemHandleBase
---@param PC ASTExtraPlayerController
function UBackpackUtils:SetItemHandleAvatarByMap(handleBase, PC) end

---@param ItemID number
---@param PC ASTExtraPlayerController
---@return number
function UBackpackUtils:GetAvatarReloadID(ItemID, PC) end

---@param PC ASTExtraPlayerController
function UBackpackUtils:InitVehicleAvatarItems(PC) end

---@param ItemID number
---@return number
function UBackpackUtils:GetItemSubType(ItemID) end

---@param ItemID number
---@return number
function UBackpackUtils:GetItemType(ItemID) end

---@param BackpackComp UBackpackComponent
---@param subType number
---@return FBattleItemData
function UBackpackUtils:GetFirstItemBySubType(BackpackComp, subType) end

---@param DefineID FItemDefineID
---@param Count number
---@param GenerateReason EGenerateItemReason
---@param bTotalStatistics boolean
function UBackpackUtils:RegisterItemGenerated(DefineID, Count, GenerateReason, bTotalStatistics) end

---@param DefineID FItemDefineID
---@param Count number
---@param GenerateReason EGenerateItemReason
function UBackpackUtils:RegisterItemGeneratedIfUnregistered(DefineID, Count, GenerateReason) end

---@param DefineID FItemDefineID
---@param Count number
function UBackpackUtils:UnregisterItemGenerated(DefineID, Count) end

---@param BackpackComp UBackpackComponent
---@param ItemID number
---@param Count number
---@param Reason EBattleItemPickupReason
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
function UBackpackUtils:PickupItemByItemID(BackpackComp, ItemID, Count, Reason, GenerateReason, ValidateConfigId) end

---@param BackpackComp UBackpackComponent
---@param ItemID number
---@param Count number
---@param Reason EBattleItemDropReason
function UBackpackUtils:DropItemByItemID(BackpackComp, ItemID, Count, Reason) end

---@param PlayerPawn APawn
---@param TypeSpecificID number
---@param Count number
---@param IsDestroy boolean
---@return boolean
function UBackpackUtils:DropItemByItemIDV2(PlayerPawn, TypeSpecificID, Count, IsDestroy) end

---@param PlayerPawn APawn
---@param InstanceID number
---@param Count number
---@param IsDestroy boolean
---@return boolean
function UBackpackUtils:DropItemByInstanceID(PlayerPawn, InstanceID, Count, IsDestroy) end

---@param PlayerPawn APawn
---@param InstanceID number
---@return boolean
function UBackpackUtils:UseItemByInstanceID(PlayerPawn, InstanceID) end

---@param PlayerPawn APawn
---@param InstanceID number
---@return boolean
function UBackpackUtils:DisuseItemByInstanceID(PlayerPawn, InstanceID) end

---@param PlayerPawn APawn
---@param InstanceID number
---@return FBattleItemData
function UBackpackUtils:GetItemDataByInstanceID(PlayerPawn, InstanceID) end

---@param PlayerPawn APawn
---@param InstanceID number
---@return boolean
function UBackpackUtils:UnEquipItem(PlayerPawn, InstanceID) end

---@param PlayerPawn APawn
---@param InstanceID number
---@return boolean
function UBackpackUtils:EquipItem(PlayerPawn, InstanceID) end

---@param PlayerPawn APawn
---@param TypeSpecificID number
---@return number
function UBackpackUtils:GetItemCount(PlayerPawn, TypeSpecificID) end

---@param WeaponId number
function UBackpackUtils:GetAttachOfWeapon(WeaponId) end

---@param WeaponId number
function UBackpackUtils:GetBulletOfWeapon(WeaponId) end

---@param WeaponId number
---@return number
function UBackpackUtils:GetProposeBulletNumOfWeapon(WeaponId) end

---@param ItemData FBattleItemData
---@return EItemStoreArea
function UBackpackUtils:GetBattleItemStoreArea(ItemData) end

---@param InDefineID FItemDefineID
---@param Count number
---@return FItemDefineID
function UBackpackUtils:GetTransferableDefineID(InDefineID, Count) end

---@param DefineID FItemDefineID
---@param Count number
---@return boolean
function UBackpackUtils:RegisterTransferableDefineID(DefineID, Count) end

---@param InDefineID FItemDefineID
---@param Count number
function UBackpackUtils:RegisterStackableItemInstance(InDefineID, Count) end

---@param InAdditionalData FBattleItemAdditionalData
---@return FItemDefineID
function UBackpackUtils:GenerateDefineIDByAdditionData(InAdditionalData) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param OutItemDataList ULuaArrayHelper<FPickUpItemData>
---@param OutInstanceIDCnt number
---@return boolean
function UBackpackUtils:CollectPlayerDeadDropItemList(TargetPlayer, OutItemDataList, OutInstanceIDCnt) end

---@param TargetPlayer ASTExtraBaseCharacter
---@param OutItemDataList ULuaArrayHelper<FPickUpItemData>
---@return boolean
function UBackpackUtils:UGCCollectPlayerDeadDropItemList(TargetPlayer, OutItemDataList) end

---@param Wrapper APickUpWrapperActor
---@param Hanlde UBattleItemHandleBase
function UBackpackUtils:DropItemTransferItemData(Wrapper, Hanlde) end

---@param PC ASTExtraPlayerController
---@param MotifyCapacity number
function UBackpackUtils:ModifySafetyBoxCapacity(PC, MotifyCapacity) end

---@param PC ASTExtraPlayerController
---@param MotifyCapacity number
function UBackpackUtils:ModifyLTSafetyBoxCapacity(PC, MotifyCapacity) end

---@param ItemID number
---@param ContextObj UObject
---@return number
function UBackpackUtils:GetItemMaxDurability(ItemID, ContextObj) end

---@param ItemID number
---@param ContextObj UObject
---@param OutStr string
function UBackpackUtils:GetItemAttrModifyString(ItemID, ContextObj, OutStr) end

---@param ItemID number
---@param OutList ULuaArrayHelper<number>
---@param ContextObj UObject
function UBackpackUtils:GetItemAvailableAttachmentsList(ItemID, OutList, ContextObj) end

---@param ContextObj UObject
---@param SocketID number
---@param SupportAttachmentTypeList ULuaArrayHelper<EBackpackItemCommonAttachTypeGlobal>
---@param SupportAttachmentIDList ULuaArrayHelper<number>
---@return EBackpackItemCommonSocketTypeGlobal
function UBackpackUtils:GetSocketSupportAttachmentList(ContextObj, SocketID, SupportAttachmentTypeList, SupportAttachmentIDList) end

---@param InAdditionalData FBattleItemAdditionalData
---@return number
function UBackpackUtils:GetAdditionalDataInstanceID(InAdditionalData) end

---@param InAdditionalData FBattleItemAdditionalData
---@param InstanceID number
function UBackpackUtils:SetAdditionalDataInstanceID(InAdditionalData, InstanceID) end

---@param Name string
---@param Items ULuaArrayHelper<FItemDefineID>
function UBackpackUtils:FilterValidItems(Name, Items) end

---@param Name string
---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
function UBackpackUtils:RegisterServerBringInItem(Name, TypeSpecificID, InstanceID, Count) end

---@param Name string
---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@return boolean
function UBackpackUtils:ValidateServerTakeoutItem(Name, TypeSpecificID, InstanceID, Count) end

---@param DefineID FItemDefineID
---@return string
function UBackpackUtils:GetItemOriginalOwnerFromServer(DefineID) end

---@param InInstanceID number
---@return boolean
function UBackpackUtils:GetItemInstanceFromServer(InInstanceID) end

---@param ItemID number
---@return FItemDefineID
function UBackpackUtils:GenerateItemDefineIDWithRandomInstanceID(ItemID) end

---@param BackpackComp UBackpackComponent
---@param Wrapper APickUpWrapperActor
---@param InPlayerKey number
function UBackpackUtils:DropItemAndForbidTeammateListPickup(BackpackComp, Wrapper, InPlayerKey) end

---@param BattleItemData FBattleItemData
---@return boolean
function UBackpackUtils:IsItemVisibleInEscapeBackpack(BattleItemData) end

---@param BattleItemData FBattleItemData
---@return boolean
function UBackpackUtils:IsItemVisibleInLTBackpack(BattleItemData) end

---@param BattleItemData FBattleItemData
---@return boolean
function UBackpackUtils:IsItemVisibleInBackpack(BattleItemData) end

---@param WorldContext UObject
---@param DefineID FItemDefineID
---@return number
function UBackpackUtils:GetItemAttrBit(WorldContext, DefineID) end

---@param ItemID number
---@return number
function UBackpackUtils:GetUGCItemReloadID(ItemID) end

---@param PC ASTExtraPlayerController
---@param ItemID number
---@param Count number
---@param bShowTips boolean
---@param bForce boolean
---@return FItemDefineID
function UBackpackUtils:CommonAddItem(PC, ItemID, Count, bShowTips, bForce) end

---@param PC ASTExtraPlayerController
---@param ItemID number
---@param Count number
---@param bCreateWrapper boolean
---@param bForce boolean
---@return number
function UBackpackUtils:CommonDropItem(PC, ItemID, Count, bCreateWrapper, bForce) end

---@param PC ASTExtraPlayerController
---@param ItemID number
function UBackpackUtils:CommonUseItem(PC, ItemID) end

---@param PC ASTExtraPlayerController
---@param ItemID number
---@return number
function UBackpackUtils:CommonGetItemCount(PC, ItemID) end

---@param PC ASTExtraPlayerController
function UBackpackUtils:CommonGetAllItems(PC) end


---@class UBackpackBlueprintUtils: UObject
---@field PendingSimpleAsyncRequests ULuaArrayHelper<FSimpleCreateBattleItemHandleAsyncRequest>
---@field PendingAsyncRequests ULuaArrayHelper<FCreateBattleItemHandleAsyncRequest>
---@field PendingAsyncRequestList ULuaMapHelper<number, FCreateBattleItemHandleListAsyncRequest>
---@field mapPickupBullet ULuaMapHelper<number, number>
---@field mapAttachPos ULuaMapHelper<number, EWeaponAttachmentSocketType>
---@field AttachMap ULuaMapHelper<number, FWeaponAttachList>
---@field mapOccupationChipPos ULuaMapHelper<number, EOccupationChipSocketType>
---@field mapOccupationMode ULuaMapHelper<number, FOccupationChipList>
---@field pickupSetting FPickupSetting
---@field CanPickUpMedicineAndGrenadeIDList ULuaArrayHelper<number>
---@field ItemTag ULuaMapHelper<string, FTagItemList>
---@field ItemTypeMap ULuaMapHelper<number, FOneItemType>
---@field CurrentGameModeType EGameModeType
---@field AttachTableName string
---@field SuitEmoteTableName string
---@field OccupationTableName string
---@field AttachTableList ULuaArrayHelper<FAttachTableType>
---@field ProposeBulletNum string
---@field itemGuid2Useful ULuaMapHelper<number, FItemUsefulType>
---@field gunMainTypeUseful ULuaMapHelper<number, FItemUsefulType>
---@field attachMainTypeUseful ULuaMapHelper<number, FItemUsefulType>
---@field bulletMainTypeUseful ULuaMapHelper<number, FItemUsefulType>
---@field medicineAndGrenadeMainTypeUseful ULuaMapHelper<number, FItemUsefulType>
---@field constructTypeUseful ULuaMapHelper<number, FItemUsefulType>
---@field occupationTypeUseful ULuaMapHelper<number, FItemUsefulType>
---@field EnableStreamingChannel boolean
local UBackpackBlueprintUtils = {}

---@param ItemTableID number
---@return boolean
function UBackpackBlueprintUtils:CheckItem(ItemTableID) end

---@param ItemTableID number
---@param Type number
---@param TypeSpecificID number
function UBackpackBlueprintUtils:GenerateItemDefineIDByItemTableID(ItemTableID, Type, TypeSpecificID) end

---@param DefineID FItemDefineID
---@return FBattleItemData
function UBackpackBlueprintUtils:ConstructBattleItemDataByDefineID(DefineID) end

---@param DefineID FItemDefineID
---@return FBattleItemData
function UBackpackBlueprintUtils:ConstructBattleItemDataByDefineIDCPP(DefineID) end

---@param ItemTableID number
---@return FBattleItemData
function UBackpackBlueprintUtils:ConstructBattleItemDataByItemTableID(ItemTableID) end

---@param ResID number
---@return string
function UBackpackBlueprintUtils:GetWeaponHandlePath_Lobby(ResID) end

---@param InDefineID FItemDefineID
---@return FItemDefineID
function UBackpackBlueprintUtils:ReloadDefineIDIfPakNotDownload(InDefineID) end

---@param DefineID FItemDefineID
---@return string
function UBackpackBlueprintUtils:GetBattleItemHandlePath(DefineID) end

---@param DefineID FItemDefineID
---@return FSoftObjectPath
function UBackpackBlueprintUtils:GetBattleItemHandleSoftPath(DefineID) end

---@param DefineID FItemDefineID
---@return FBattleItemFeatureData
function UBackpackBlueprintUtils:GetBattleItemFeatureDataByDefineID(DefineID) end

---@param DefineID FItemDefineID
---@return FBattleItemFeatureData
function UBackpackBlueprintUtils:GetBattleItemFeatureDataByDefineIDCPP(DefineID) end

---@param DefineID FItemDefineID
---@return FBattleWeaponItemDisplayData
function UBackpackBlueprintUtils:GetBattleWeaponItemDisplayDataByDefineID(DefineID) end

---@param Type EBattleTextType
---@return string
function UBackpackBlueprintUtils:GetRawBattleTextByType(Type) end

---@param ID number
---@return string
function UBackpackBlueprintUtils:GetRawBattleTextByRawTextID(ID) end

function UBackpackBlueprintUtils:ClearCache() end

---@param BackpackComp UBackpackComponent
---@param Character ASTExtraBaseCharacter
function UBackpackBlueprintUtils:AddCharacterVirtualItemToBackpack(BackpackComp, Character) end

---@param BackpackComp UBackpackComponent
---@param Character ASTExtraBaseCharacter
function UBackpackBlueprintUtils:AddCharacterVirtualItemToBackpackCPP(BackpackComp, Character) end

---@param BackpackComp UBackpackComponent
---@return FBattleItemData
function UBackpackBlueprintUtils:GetCharacterVirtualItemInBackpack(BackpackComp) end

---@param BackpackComp UBackpackComponent
---@return FBattleItemData
function UBackpackBlueprintUtils:GetCharacterVirtualItemInBackpackCPP(BackpackComp) end

---@param TableName string
function UBackpackBlueprintUtils:BindRefreshDelegate(TableName) end

function UBackpackBlueprintUtils:InitialPickupSetting() end

---@param ResID number
---@return number
function UBackpackBlueprintUtils:GetBPIDByResID(ResID) end

---@param ResID number
---@param Type EBackpackItemType
---@return number
function UBackpackBlueprintUtils:GetReloadIDByResID(ResID, Type) end

---@param ResID number
---@return number
function UBackpackBlueprintUtils:GetBPIDByResIDCPP(ResID) end

---@param ResID number
---@return number
function UBackpackBlueprintUtils:GetBPIDByResIDInCPP(ResID) end

---@param ResID number
---@return number
function UBackpackBlueprintUtils:GetWeaponBaseSkinByRealSkinID(ResID) end

---@param DefineID FItemDefineID
---@return string
function UBackpackBlueprintUtils:GetBPTableNameByItemID(DefineID) end

---@param ItemID number
---@return FCharacterAvatar_WearItemMetaInfo
function UBackpackBlueprintUtils:GetWearItemMetaInfo(ItemID) end

---@param ItemID number
---@return FCharacterAvatar_WearItemMetaInfo
function UBackpackBlueprintUtils:GetWearItemMetaInfoCPP(ItemID) end

---@param InAvatarID number
---@return number
function UBackpackBlueprintUtils:GetAvatarMasterID(InAvatarID) end

---@param InAvatarID number
---@return number
function UBackpackBlueprintUtils:GetAvatarMasterIDCPP(InAvatarID) end

---@param ItemID number
---@return boolean
function UBackpackBlueprintUtils:IsBigWorldToBattleRoyaleItem(ItemID) end

function UBackpackBlueprintUtils:OnGameModeTypeChanged() end

---@param ItemID number
---@return number
function UBackpackBlueprintUtils:GetLimitPickCountById(ItemID) end

---@param ResID number
---@return number
function UBackpackBlueprintUtils:ReloadPakResID(ResID) end

---@param DefineID FItemDefineID
---@param OutTs number
---@param PropName string
---@return boolean
function UBackpackBlueprintUtils:GetItemConstantProperties(DefineID, OutTs, PropName) end


---@class UAttachTraver: UTableTraver
local UAttachTraver = {}


---@class UOccupationChipTraver: UTableTraver
local UOccupationChipTraver = {}


---@class UBackpackItemBlueprintUtils: UItemBlueprintUtils
local UBackpackItemBlueprintUtils = {}
