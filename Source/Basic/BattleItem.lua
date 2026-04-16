---@meta

---@class EGenerateItemReason
---@field Unknown number
---@field Test number
---@field GM number
---@field AI number
---@field Initial number
---@field Pickup number
---@field Server number
---@field Avatar number
---@field Suit number
---@field Activity number
---@field Mall number
---@field TreasureBox number
---@field DropSystem number
---@field AirDrop number
---@field UGC number
---@field Twins number
---@field Weapon number
---@field ChangeArea number
---@field ReturnBullets number
---@field WarDogAdditionalBackpack number
---@field EscapeTraining number
---@field DeathTrainPickup number
---@field GeekerPocket number
EGenerateItemReason = {}


---@class EBattleItemPickupReason
---@field Manually number
---@field Associated number
---@field AutoPickup number
---@field Initial number
---@field ReplacePick number
---@field GroupPick number
---@field AutoEnable number
---@field Force number
---@field ForceAndNoTips number
---@field WarDogAdditionalBackpack number
---@field DeathTrackBackpack number
EBattleItemPickupReason = {}


---@class EBattleItemDropReason
---@field Manually number
---@field Associated number
---@field AutoEquipAndDrop number
---@field AutoEquipFailed number
---@field CapacityExceeded number
---@field UsedUp number
---@field Force number
---@field ReplacedAvatar number
---@field VehicleGroup number
---@field WarDogAdditionalBackpack number
---@field throwaway number
---@field EscapeForbidTeammatePickup number
---@field DeathTrackBackpack number
---@field GeekPockets number
EBattleItemDropReason = {}


---@class EBattleItemUseReason
---@field Manually number
---@field Associated number
---@field AutoEquipAndDrop number
---@field Swapped number
---@field Initial number
---@field Emergency number
EBattleItemUseReason = {}


---@class EBattleItemDisuseReason
---@field Manually number
---@field Associated number
---@field Excluded number
---@field Swapped number
---@field ReplacedAttachment number
---@field Dropped number
---@field Force number
---@field ReplacedAvatar number
---@field VehicleGroup number
---@field WarDogAdditionalBackpack number
---@field SpecialAssociated number
EBattleItemDisuseReason = {}


---@class EItemStoreArea
---@field InBag number
---@field InSafetyBox number
---@field InEquiping number
EItemStoreArea = {}


---@class EItemOperationType
---@field None number
---@field Pickup number
---@field Drop number
---@field Use number
---@field Disuse number
---@field Clear number
---@field PutOn number
---@field PutOff number
EItemOperationType = {}


---@class EItemGAActiveCondition
---@field ActiveOnPickup number @物品拾取激活
---@field ActiveOnUse number @物品使用激活
---@field ActiveOnPutOn number @物品穿戴激活
---@field ActiveOnManual number @不自动激活
EItemGAActiveCondition = {}


---@class ETimeLimitStatus
---@field None number
---@field Inactive number
---@field Active number
---@field Expired number
ETimeLimitStatus = {}


---@class ETimeLimitType
---@field NoTimeLimit number
---@field TimeSecond number
---@field CircleNum number
ETimeLimitType = {}


---@class EItemInBackpackVersion
---@field Version1 number
---@field Version2 number
EItemInBackpackVersion = {}


---@class EColdModeItemType
---@field firewood number
---@field meat number
EColdModeItemType = {}


---@class EBattleItemClientPickupType
---@field PickupDefalut number
---@field PickupIntoSafetyBox number
---@field ForceIntoBackpack number
---@field PickupAttachmentIntoSafetyBox number
---@field PickupAttachmentIntoBackpack number
---@field PickupAttachmentEquip number
---@field PickupIntoGunbag number
---@field PickupIntoVehicleBackpack number
---@field PickupIntoAdditionalBackpack number
---@field PickupAutoSafetyBox number
---@field PickupIntoGeekerPocket number
EBattleItemClientPickupType = {}


---@class ECustomEquipItemReason
---@field Bag number
---@field SafetyBox number
---@field Ground number
---@field OtherWeapon number
ECustomEquipItemReason = {}


---@class EPickUpGenerationReason
---@field None number
---@field ItemGeneration number
---@field PlayerDeath number
---@field DroppedManually number
---@field DroppedFromActor number
---@field AirDrop number
EPickUpGenerationReason = {}


---@class FStructureTransform
---@field Location FVector
---@field Rotation FVector
---@field Scale FVector
FStructureTransform = {}


---@class FBattleItemAdditionalData
---@field Name string
---@field FloatData number
---@field StringData string
---@field IntData number
FBattleItemAdditionalData = {}


---@class FGenericAbilityKey
---@field GAID number
---@field GAInstanceID number
---@field RandomBaseValue number
FGenericAbilityKey = {}


---@class FSkillV1Config
---@field SkillTemplateClass AUTSkill
---@field SkillActiveCondition EItemGAActiveCondition
---@field bDefaultActive boolean
---@field bCoverSkill boolean
---@field SkillCoveredTemplateClass AUTSkill
---@field bSkillAdded boolean
FSkillV1Config = {}


---@class FSkillV2Config
---@field SkillTemplateClass UBasicPersistEffect
---@field SkillActiveCondition EItemGAActiveCondition
---@field OverrideApplyTime number
FSkillV2Config = {}


---@class FItemHandleAttrModifyConfig
---@field AttrModifyActiveCondition EItemGAActiveCondition
---@field AttrModifyItemSimple FAttrModifyItemSimple
---@field AttrModifyItemUniqueID string
FItemHandleAttrModifyConfig = {}


---@class FItemHandleAttrModifyConfigNoCondition
---@field AttrModifyItemSimple FAttrModifyItemSimple
---@field AttrModifyItemUniqueID string
FItemHandleAttrModifyConfigNoCondition = {}


---@class FCommonBackpackInfo
---@field ClassicBackpackInterface ICommonBackpackInterface
---@field CommonBackpackInterface ICommonBackpackInterface
FCommonBackpackInfo = {}


---@class FBatttleItemInfo
---@field ItemID number
---@field Count number
FBatttleItemInfo = {}


---@class FBattleItemFeatureData
---@field UnitWeight number
---@field MaxCount number
---@field bUnique boolean @whether this item can be seemed as **unique**, thus, can NOT be replaced by other instances with the same Type and TypeSpecificID
---@field bStackable boolean @whether item can be **stacked**
---@field bEquippable boolean @whether item can be **equipped** and **unequipped**
---@field bConsumable boolean @whether item can be **consumed**
---@field bAutoEquipAndDrop boolean @whether this item will be **automatically equipped** when picked up and **automatically dropped** when unequipped
---@field SortingPriority number
---@field ItemType number
FBattleItemFeatureData = {}


---@class FBattleItemTimeLimitData
---@field TimeStart number
---@field TimeEnd number
FBattleItemTimeLimitData = {}


---@class FAttachParticle
---@field SocketName string
---@field ExtraParticle UParticleSystem
---@field OffsetTrans FTransform
FAttachParticle = {}


---used both for sync and presentation, so it contains **state**, **feature**, **presentation** data
---@class FBattleItemData
---@field Count number
---@field bEquipping boolean
---@field bCanBeClientHandle boolean
---@field AdditionalData ULuaArrayHelper<FBattleItemAdditionalData>
---@field FeatureData FBattleItemFeatureData
---@field TimeLimitData FBattleItemTimeLimitData
---@field Associations ULuaArrayHelper<FItemAssociation>
---@field ExpireTime number
---@field IsNew number
FBattleItemData = {}


---@class FBattleItemTimeLimitInfo
---@field TimeLimitType ETimeLimitType
---@field TimeStart number
---@field TimeEnd number
---@field CircleStart number
---@field CircleEnd number
FBattleItemTimeLimitInfo = {}


---@class FBattleItemUseTarget
---@field TargetDefineID FItemDefineID
---@field TargetAssociationName string
---@field FilterTargetWhenPickup boolean
FBattleItemUseTarget = {}


---@class FBattleItemAssociationTarget
---@field TargetDefineID FItemDefineID
---@field TargetAssociationDefineID FItemDefineID
FBattleItemAssociationTarget = {}


---@class FBattleItemPickupInfo
---@field bSourceDropedByPlayer boolean
---@field bNotAutoEquipAndUse boolean
---@field Count number
---@field AdditionalData ULuaArrayHelper<FBattleItemAdditionalData>
---@field bAutoEquip boolean
---@field AutoEquipTarget FBattleItemUseTarget
---@field bTriggerEvent boolean
FBattleItemPickupInfo = {}


---@class FBattleItemDropInfo
---@field AdditionalData ULuaArrayHelper<FBattleItemAdditionalData>
FBattleItemDropInfo = {}


---@class FMaterialAssetSet
---@field Material UMaterialInterface
---@field MatSlot string
FMaterialAssetSet = {}


---@class FSpecPickItem
---@field item_id number
---@field cur_count number
---@field total_count number
FSpecPickItem = {}


---@class FPickupSetting
---@field AutoPickupPistol boolean
---@field AutoPickupLevel3Backpack boolean
---@field AutoPickMirror boolean
---@field AutoPickupSideMirror boolean
---@field AutoEquipAim boolean
---@field AutoEquipAimForAKM boolean
---@field AutoPickrelivecard boolean
FPickupSetting = {}


---@class FPickupFirstList
---@field pickFirstItem ULuaArrayHelper<number>
FPickupFirstList = {}


---@class FPickupFirstCount
---@field pickID number
---@field count number
FPickupFirstCount = {}


---@class FWingSyncInfo
---@field WingOilCount number
---@field CurrentWingManID number
---@field bFuelSwitch boolean
---@field bHasFuelUsed boolean
---@field NextCallTimeAllowed number
---@field bForbid boolean
FWingSyncInfo = {}


---@class FItemUsefulType
---@field PickUsefulCount number
---@field bColor boolean
FItemUsefulType = {}


---@class FEscapePickupAdditionalInfo
---@field PickupType EBattleItemClientPickupType
---@field PickupAttachmentTypeSpecificID number
---@field TargetDefineID FItemDefineID
---@field ItemStoreArea EItemStoreArea
FEscapePickupAdditionalInfo = {}


---@class FCustomPickupAdditionalInfo
---@field EnableCustomPickUp boolean
---@field NeedDistanceCheck boolean
---@field NeedWeaponCheck boolean
---@field PickupType EBattleItemClientPickupType
---@field UseTargetItem FItemDefineID
---@field SelectOverrideSlot number
---@field OverrideAmorSlotDefineID FItemDefineID
---@field EscapePickupInfo FEscapePickupAdditionalInfo
FCustomPickupAdditionalInfo = {}


---@class FPickUpGenerationDetail
---@field Reason EPickUpGenerationReason
---@field TimeStamp number
---@field InitiatorName string
---@field StackMessage string
---@field ExtraMessage string
FPickUpGenerationDetail = {}


---推荐拾取结果
---@class FUGCItemUsefulType
---@field ItemUseful FItemUsefulType
---@field bOverride boolean
FUGCItemUsefulType = {}


---自动拾取结果
---@class FUGCAutoPickType
---@field bAutoPick boolean
---@field bOverride boolean
FUGCAutoPickType = {}


---@class FSetupPickUpGenerationDetailDelegate : ULuaMulticastDelegate
FSetupPickUpGenerationDetailDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PickUpWrapperActor: AActor, PickUpGenerationDetail: FPickUpGenerationDetail) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSetupPickUpGenerationDetailDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PickUpWrapperActor AActor
---@param PickUpGenerationDetail FPickUpGenerationDetail
function FSetupPickUpGenerationDetailDelegate:Broadcast(PickUpWrapperActor, PickUpGenerationDetail) end


---@class FPickUpBattleItemDelegate : ULuaMulticastDelegate
FPickUpBattleItemDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemHandleBase: UItemHandleBase, PickupInfo: FBattleItemPickupInfo, Reason: EBattleItemPickupReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPickUpBattleItemDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemHandleBase UItemHandleBase
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
function FPickUpBattleItemDelegate:Broadcast(ItemHandleBase, PickupInfo, Reason) end


---@class FDropBattleItemDelegate : ULuaMulticastDelegate
FDropBattleItemDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemHandleBase: UItemHandleBase, InCount: number, Reason: EBattleItemDropReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDropBattleItemDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemHandleBase UItemHandleBase
---@param InCount number
---@param Reason EBattleItemDropReason
function FDropBattleItemDelegate:Broadcast(ItemHandleBase, InCount, Reason) end


---@class UBattleItemWrapper: UObject, IItemInterface
---@field mItemData FBattleItemData
local UBattleItemWrapper = {}

function UBattleItemWrapper:MarkItemNewFlagRemoved() end

---@param ItemData FBattleItemData
function UBattleItemWrapper:SetItemData(ItemData) end


---@class UBattleItemProxyBase: UItemProxyBase
---@field DefineID FItemDefineID
---@field AssociateObjectList ULuaMapHelper<number, UObject>
---@field bUseNewItemButton boolean
local UBattleItemProxyBase = {}

function UBattleItemProxyBase:InitLua() end

---@param ItemClientData FItemClient_TabRes
function UBattleItemProxyBase:Init(ItemClientData) end

function UBattleItemProxyBase:Destory() end

---@param ind number
---@param Object UObject
---@return boolean
function UBattleItemProxyBase:AddAssociateObject(ind, Object) end

---@param ind number
function UBattleItemProxyBase:FindAssociateObject(ind) end

function UBattleItemProxyBase:BackpackItemWidgetUpdate() end

---@return boolean
function UBattleItemProxyBase:ClientProxyUpdated() end


---@class UBattleItemHandleBase: UItemHandleBase
---@field bEquipping boolean
---@field AdditionalData ULuaArrayHelper<FBattleItemAdditionalData>
---@field TimeLimit FBattleItemTimeLimitInfo
---@field bItemExpiredForbidHandleUse boolean
---@field ExpiredTipsID number
---@field UnitWeight number
---@field bEquippable boolean @whether item can be **equipped** and **unequipped**
---@field bConsumable boolean @whether item can be **consumed**
---@field bAutoEquipAndDrop boolean @whether this item will be **automatically equipped** when picked up and **automatically dropped** when unequipped
---@field CanBeClientHandle boolean
---@field DefaultGenericAbilityIDs ULuaArrayHelper<FGenericAbilityKey>
---@field HandleGenericAbilities ULuaMapHelper<FGenericAbilityKey, UGenericAbilityBase>
---@field bHandleGenericAbilityBuilt boolean
---@field bHandleGenericAbilityMounted boolean
---@field SkillV1Configs ULuaArrayHelper<FSkillV1Config>
---@field SkillV2Configs ULuaArrayHelper<FSkillV2Config>
---@field CommonBackpackInfo FCommonBackpackInfo
---@field CharacterAttrModifyConfigs ULuaArrayHelper<FItemHandleAttrModifyConfig>
---@field CustomizeAttrModifyConfigs ULuaArrayHelper<FItemHandleAttrModifyConfig>
local UBattleItemHandleBase = {}

---@return FBattleItemData
function UBattleItemHandleBase:ExtractItemData() end

---@param ItemDefineID FItemDefineID
---@return FBattleItemData
function UBattleItemHandleBase:ConstructBattleItemDataByDefineID(ItemDefineID) end

---@return FBattleItemData
function UBattleItemHandleBase:ExtractItemDataOpt() end

---@param Name string
---@param OutValue number
---@return boolean
function UBattleItemHandleBase:GetAdditionalDataAsInt(Name, OutValue) end

---@param Reason EBattleItemDropReason
function UBattleItemHandleBase:DoSomethingBeforeDrop(Reason) end

---@param Name string
---@param OutValue number
---@return boolean
function UBattleItemHandleBase:GetAdditionalDataAsFloat(Name, OutValue) end

---@param Name string
---@param OutValue string
---@return boolean
function UBattleItemHandleBase:GetAdditionalDataAsString(Name, OutValue) end

---@param InData FBattleItemAdditionalData
function UBattleItemHandleBase:AddOrSetAdditionalData(InData) end

---@param InName string
---@param InValue number
function UBattleItemHandleBase:AddOrSetAdditionalFloatData(InName, InValue) end

---@param InName string
---@param InValue number
function UBattleItemHandleBase:AddOrSetAdditionalIntData(InName, InValue) end

---@param InName string
---@param InValue string
function UBattleItemHandleBase:AddOrSetAdditionalStringData(InName, InValue) end

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBattleItemHandleBase:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBattleItemHandleBase:HandlePostPickup(ItemContainer, PickupInfo, Reason) end

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBattleItemHandleBase:HandleFinishPickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@param DropInfo FBattleItemDropInfo
---@return boolean
function UBattleItemHandleBase:HandlePreDrop(InCount, Reason, DropInfo) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBattleItemHandleBase:HandleDrop(InCount, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBattleItemHandleBase:ConditionDropCheck(InCount, Reason) end

---@param TakeCount number
---@param TotalCount number
---@return boolean
function UBattleItemHandleBase:HandleTake(TakeCount, TotalCount) end

---@return boolean
function UBattleItemHandleBase:IsUseOnServer() end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBattleItemHandleBase:HandleUse(Target, Reason) end

---@param Target FBattleItemAssociationTarget
---@return boolean
function UBattleItemHandleBase:HandleAddAssociation(Target) end

---@param Reason EBattleItemUseReason
---@param ToBackpack boolean
function UBattleItemHandleBase:DoSomethingAfterPickup(Reason, ToBackpack) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBattleItemHandleBase:ClientHandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBattleItemHandleBase:HandleDisuse(Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBattleItemHandleBase:PreGroupHandleDisuse(Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBattleItemHandleBase:HandleTryDisuse(Reason) end

---@param bEnable boolean
---@return boolean
function UBattleItemHandleBase:HandleEnable(bEnable) end

---@param bNewEnable boolean
function UBattleItemHandleBase:MarkItemHandleEnabled(bNewEnable) end

---@param ItemDefineID FItemDefineID
function UBattleItemHandleBase:ClientHandleCreated(ItemDefineID) end

---@param ItemDefineID FItemDefineID
function UBattleItemHandleBase:ClientHandleUpdated(ItemDefineID) end

---@param ItemDefineID FItemDefineID
function UBattleItemHandleBase:ClientHandleDeleted(ItemDefineID) end

---@return boolean
function UBattleItemHandleBase:HanldeCleared() end

---@return boolean
function UBattleItemHandleBase:IsNeedRepDefinedID() end

---@return boolean
function UBattleItemHandleBase:IsRestoreEquippingOnSwitchDS() end

---@param ItemContainer IItemContainerInterface
function UBattleItemHandleBase:SetClientItemContainer(ItemContainer) end

---@param InItemStoreArea EItemStoreArea
function UBattleItemHandleBase:HandleChangeItemStoreArea(InItemStoreArea) end

---@return EItemStoreArea
function UBattleItemHandleBase:GetItemStoreArea() end

---@param WorldContextObj UObject
---@return number
function UBattleItemHandleBase:GetReloadDefineID(WorldContextObj) end

---@return string
function UBattleItemHandleBase:GetItemDetailInfo() end

---@return boolean
function UBattleItemHandleBase:ShouldBuildGenericAbilities() end

function UBattleItemHandleBase:GetGenericAbilityTypesFilter() end

---@param PickupInfo FBattleItemPickupInfo
function UBattleItemHandleBase:HandleBuildGenericAbilities(PickupInfo) end

function UBattleItemHandleBase:HandleClearGenericAbilities() end

function UBattleItemHandleBase:MountGenericAbilitiesToCarrier() end

function UBattleItemHandleBase:UnmountGenericAbilitiesFromCarrier() end

function UBattleItemHandleBase:RefreshGenericAbilities() end

function UBattleItemHandleBase:GetTargetCarrier() end

---@param WorldContextObj UObject
---@return boolean
function UBattleItemHandleBase:CheckIsUnique(WorldContextObj) end

---@param InOperType EItemOperationType
function UBattleItemHandleBase:UpdateItemFeatureActivities(InOperType) end

---@param InOperType EItemOperationType
function UBattleItemHandleBase:UpdateItemSkillActivities(InOperType) end

---@param InInitInfo FCommonBackpackInfo
function UBattleItemHandleBase:HandleCommonBackpackInit(InInitInfo) end

function UBattleItemHandleBase:GetCommonBackpackInterface() end

---@param InOperType EItemOperationType
function UBattleItemHandleBase:UpdateItemAttrModifyActivities(InOperType) end
