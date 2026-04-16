---@meta

---@class EBattleItemIconType
---@field SmallIcon number
---@field BigIcon number
---@field WhiteIcon number
EBattleItemIconType = {}


---@class EAdditionPropertyType
---@field Temporary number
---@field CrossLine number
---@field Server number
EAdditionPropertyType = {}


---@class FItemDefineIDNet
---@field TypeSpecificID number
---@field InstanceID number
FItemDefineIDNet = {}


---物品DefineID
---@class FItemDefineID
---@field Type number @物品类型
---@field TypeSpecificID number @物品ID
---@field bValidItem boolean @是否有效道具
---@field bValidInstance boolean @是否实体道具（已放入背包生成InstanceID）
---@field InstanceID number @实例ID
FItemDefineID = {}


---@class FItemConstantProperty
---@field PropertyName string
---@field PropertyValue number
FItemConstantProperty = {}


---@class FItemBaseProperty
---@field ModifierID number
---@field BasePropertyVaule number
FItemBaseProperty = {}


---@class FItemTagProperty
---@field PropertyName string
---@field PropertyValue string
---@field IntPropertyValue number
---@field ExtraPropertyString string
FItemTagProperty = {}


---@class FAdditionProperty
---@field PropertyName string
---@field PropertyType EAdditionPropertyType
---@field FloatValue number
FAdditionProperty = {}


---@class FItemDataBaseStruct
---@field AdditionProperties ULuaArrayHelper<FAdditionProperty>
FItemDataBaseStruct = {}


---data for presentation of an item, mainly for UI and other lobby logic
---@class FItemData
---@field DefineID FItemDefineID
---@field Name string
---@field Icon string
FItemData = {}


---@class FItemAssociationNet
---@field AssociationType number
---@field ItemNet FItemDefineIDNet
FItemAssociationNet = {}


---association among items
---@class FItemAssociation
---@field AssociationName string
---@field AssociationTargetDefineID FItemDefineID
---@field bSkipParentAssociationUse boolean
FItemAssociation = {}


---@class FOneItemType
FOneItemType = {}


---@class FTagOneItem
---@field TagItemID number
---@field TagValue number
FTagOneItem = {}


---@class FTagItemList
---@field tagList ULuaMapHelper<number, FTagOneItem>
FTagItemList = {}


---@class FTagItemListArray
FTagItemListArray = {}


---@class FWeaponUsefulCfg
---@field weaponID number
---@field attachmentList ULuaArrayHelper<number>
---@field banAttachmentList ULuaArrayHelper<number>
---@field bulletNum number
FWeaponUsefulCfg = {}


---@class FQuickChatIDAndAudio
---@field chatTextID number
---@field AudioID number
FQuickChatIDAndAudio = {}


---@class FQuickChatIDAndAudioList
---@field IDList ULuaArrayHelper<FQuickChatIDAndAudio>
FQuickChatIDAndAudioList = {}


---@class FOnWeakAssociationChanged : ULuaMulticastDelegate
FOnWeakAssociationChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsAdd: boolean, InItemAssociation: FItemAssociation) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeakAssociationChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsAdd boolean
---@param InItemAssociation FItemAssociation
function FOnWeakAssociationChanged:Broadcast(bIsAdd, InItemAssociation) end


---@class UItemProxyBase: UObject
local UItemProxyBase = {}


---@class UItemHandleObjectPool: UObject
local UItemHandleObjectPool = {}


---encapsulates authority data of an item, including state fields and association among items (via Association data)
---@class UItemHandleBase: UObject
---@field Count number
---@field MaxCount number
---@field bUnique boolean @whether this item can be seemed as **unique** InstanceID can NOT be ignored and this instance can NOT be replaced by other instances with the same Type and TypeSpecificID
---@field bStackable boolean @whether item can be **stacked**
---@field OnWeakAssociationItemHandleChanged FOnWeakAssociationChanged
---@field AssociationMap ULuaMapHelper<string, FItemAssociation>
---@field WeakAssociate ULuaArrayHelper<FItemAssociation>
---@field DefineID FItemDefineID
---@field OwningContainer IItemContainerInterface
local UItemHandleBase = {}

---@param InDefineID FItemDefineID
function UItemHandleBase:Init(InDefineID) end

function UItemHandleBase:OnItemRecycle() end

---@param Name string
---@param Association FItemAssociation
function UItemHandleBase:AddAssociation(Name, Association) end

---@param Name string
---@return FItemAssociation
function UItemHandleBase:GetAssociation(Name) end

---@param Type number
function UItemHandleBase:GetAssociationListByTargetType(Type) end

---@param TargetDefineID FItemDefineID
---@return FItemAssociation
function UItemHandleBase:GetAssociationByTargetDefineID(TargetDefineID) end

---@param Name string
---@param Association FItemAssociation
function UItemHandleBase:SetAssociation(Name, Association) end

---@param Name string
function UItemHandleBase:RemoveAssociation(Name) end

function UItemHandleBase:GetAssociationMap() end

---@param Association FItemAssociation
function UItemHandleBase:AddWeakAssociation(Association) end

---@param ItemAss FItemAssociation
function UItemHandleBase:RemoveWeakAssociation(ItemAss) end

---@param AssIdx number
---@return FItemAssociation
function UItemHandleBase:GetWeakAssociation(AssIdx) end


---@class UItemUtils: UBlueprintFunctionLibrary
local UItemUtils = {}

---@param itemID number
---@param TagName string
---@return boolean
function UItemUtils:HasTag(itemID, TagName) end

---@param itemID number
---@param TagName string
---@return boolean
function UItemUtils:HasTagSub(itemID, TagName) end

---@param itemID number
---@param TagName string
---@return boolean
function UItemUtils:HasTagMain(itemID, TagName) end

---@param tagName string
function UItemUtils:FindItemTagIDList(tagName) end

---@param tagName string
---@param itemID number
function UItemUtils:AddItemTag(tagName, itemID) end

---@param tagName string
---@param itemID number
function UItemUtils:RemoveItemTag(tagName, itemID) end

---@param itemID number
---@param TagName string
---@return FTagOneItem
function UItemUtils:GetItemTag(itemID, TagName) end

function UItemUtils:ResetItemTag() end

---@param itemID number
---@return boolean
function UItemUtils:IsUGCItem(itemID) end

---@param ItemID number
---@param TagName string
---@return boolean
function UItemUtils:CommonHasTag(ItemID, TagName) end

---@param Type number
---@param TypeSpecificID number
---@return FItemDefineID
function UItemUtils:GenerateItemDefineIDWithRandomInstanceID(Type, TypeSpecificID) end

---@param ItemTableID number
---@return FItemDefineID
function UItemUtils:GenerateItemDefineIDByItemTableIDWithRandomInstanceID(ItemTableID) end

---@param ItemName string
---@return FItemDefineID
function UItemUtils:GenerateItemDefineIDByItemName(ItemName) end

---@param ItemName string
---@return FItemDefineID
function UItemUtils:GenerateItemDefineIDByItemNameWithRandomInstanceID(ItemName) end

---@param TypeSpecificID number
---@return boolean
function UItemUtils:CanGenrateItemDefinIDWithRandomInstanceID(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UItemUtils:IsModifiersItem(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UItemUtils:IsSpecialAbilityItem(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UItemUtils:IsDynamicSocketItem(TypeSpecificID) end

---@param InstanceID number
---@return boolean
function UItemUtils:NeedRepItemModifiers(InstanceID) end

---@param InstanceID number
---@return boolean
function UItemUtils:HasModifiers(InstanceID) end

---@param DefineID FItemDefineID
function UItemUtils:GetModifiers(DefineID) end

---@param InstanceID number
function UItemUtils:GetModifiersByInstanceID(InstanceID) end

---@param ModifierssID number
---@return FEscapeModifiers_TabRes
function UItemUtils:GetModifiersInfo(ModifierssID) end

---@param DefineID FItemDefineID
---@param Modifiers ULuaArrayHelper<number>
function UItemUtils:AddModifiers(DefineID, Modifiers) end

---@param DefineID FItemDefineID
function UItemUtils:RemoveModifiers(DefineID) end

---@param DefineID FItemDefineID
---@param ModifiersID number
---@return boolean
function UItemUtils:AddSingleModifiers(DefineID, ModifiersID) end

---@param DefineID FItemDefineID
---@param ModifiersID number
---@return boolean
function UItemUtils:RemoveSingleModifiers(DefineID, ModifiersID) end

---@param DefineID FItemDefineID
---@param AddModifiersID ULuaArrayHelper<number>
---@param RemoveModifiersID ULuaArrayHelper<number>
---@return boolean
function UItemUtils:BatchChangeModifiers(DefineID, AddModifiersID, RemoveModifiersID) end

---@param DefineID FItemDefineID
---@param MaxRareLevel number
function UItemUtils:ClampModifiersRareLevel(DefineID, MaxRareLevel) end

---@param DefineID FItemDefineID
---@param MaxRareLevel number
function UItemUtils:RegenerateModifiersLowRareLevel(DefineID, MaxRareLevel) end

---@param InstanceID number
---@return boolean
function UItemUtils:HasConstantProperties(InstanceID) end

---@param DefineID FItemDefineID
function UItemUtils:GetConstantProperties(DefineID) end

---@param DefineID FItemDefineID
---@param ConstantProperty FItemConstantProperty
function UItemUtils:AddConstantProperty(DefineID, ConstantProperty) end

---@param DefineID FItemDefineID
---@param RandomBaseProperties ULuaArrayHelper<FItemBaseProperty>
---@param SepecialModifiersID ULuaArrayHelper<number>
function UItemUtils:GetSpecialAndBaseProperties(DefineID, RandomBaseProperties, SepecialModifiersID) end

---@param DefineID FItemDefineID
---@param RandomBaseProperties ULuaArrayHelper<FItemBaseProperty>
function UItemUtils:GetLTRandomBaseProperties(DefineID, RandomBaseProperties) end

---@param InstanceID number
---@return boolean
function UItemUtils:HasSpecialAndBaseProperties(InstanceID) end

---@param DefineID FItemDefineID
---@param RamdomBaseProperty FItemBaseProperty
function UItemUtils:AddRandomBaseProperty(DefineID, RamdomBaseProperty) end

---@param DefineID FItemDefineID
---@param RamdomBaseProperty FItemBaseProperty
function UItemUtils:AddLTRandomBaseProperty(DefineID, RamdomBaseProperty) end

---@param DefineID FItemDefineID
---@param Modifiers ULuaArrayHelper<number>
function UItemUtils:AddSpecialModifiers(DefineID, Modifiers) end

---@param DefineID FItemDefineID
function UItemUtils:GetDynamicSockets(DefineID) end

---@param DefineID FItemDefineID
---@param Sockets ULuaArrayHelper<number>
function UItemUtils:AddDynamicSockets(DefineID, Sockets) end

---@param DefineID FItemDefineID
function UItemUtils:GetDynamicGropIDs(DefineID) end

---@param DefineID FItemDefineID
---@param GropIDs ULuaArrayHelper<number>
function UItemUtils:AddDynamicGropIDs(DefineID, GropIDs) end

---@param DefineID FItemDefineID
function UItemUtils:RemoveDynamicGropIDs(DefineID) end

---@param DefineID FItemDefineID
---@return number
function UItemUtils:GetItemQuality(DefineID) end

---@param InstanceID number
---@param ItemTagProperty FItemTagProperty
function UItemUtils:AddItemTagProperties(InstanceID, ItemTagProperty) end

---@param InstanceID number
---@return boolean
function UItemUtils:HasItemTagProperties(InstanceID) end

---@param InstanceID number
function UItemUtils:GetItemTagProperties(InstanceID) end

---@param ItemList ULuaArrayHelper<FItemDefineID>
---@param SubTypeTag string
---@param DefaultItemTag string
function UItemUtils:CheckAndAddDefaultItem(ItemList, SubTypeTag, DefaultItemTag) end

---@param itemSpecialID number
---@return boolean
function UItemUtils:IsCanUseInBackpack(itemSpecialID) end

---@param itemSpecialID number
function UItemUtils:ItemMenuStatus(itemSpecialID) end

---@param handle UBattleItemHandleBase
---@param avatarResID number
function UItemUtils:SetItemHandleAvatar(handle, avatarResID) end

---@param ItemID number
---@param ItemType number
---@param SubItemType number
function UItemUtils:FindItemTableType(ItemID, ItemType, SubItemType) end

---@param ItemID number
---@return number
function UItemUtils:GetItemType(ItemID) end

---@param ItemID number
---@return number
function UItemUtils:GetItemSubType(ItemID) end

function UItemUtils:ResetItemType() end

---@return number
function UItemUtils:GetPickupUsefulOptimise() end

---@return boolean
function UItemUtils:HasLuaUtils() end

function UItemUtils:UGC_DoCheckTableSwitcher() end

---@param itemType number
---@param ItemID number
---@return string
function UItemUtils:GetBPTableNameByItemRes(itemType, ItemID) end

function UItemUtils:RemoveLuaUtils() end

---@param ItemId number
---@return number
function UItemUtils:GetItemWeightForOrder(ItemId) end

---@param ItemId number
---@param type EBattleItemIconType
---@param SmallIconPath string
---@param BigIconPath string
---@param WhiteIconPath string
---@return string
function UItemUtils:GetBattleItemIconPathFromStr(ItemId, type, SmallIconPath, BigIconPath, WhiteIconPath) end

---@param ItemId number
---@param type EBattleItemIconType
---@param out string
---@return boolean
function UItemUtils:GetBattleItemIconPathFromTab(ItemId, type, out) end

function UItemUtils:ClearBattleItemIconPathChach() end


---@class UItemBlueprintUtils: UObject
---@field VirtualItemType number
---@field ItemTypeMap ULuaMapHelper<number, FOneItemType>
---@field ItemTag ULuaMapHelper<string, FTagItemList>
---@field ItemWeight ULuaMapHelper<number, number>
---@field ItemDescName string
---@field ItemTableName string
---@field ItemTagTableName string
---@field EmoteBPTableName string
---@field AttachTableName string
---@field UGCItemTableName string
---@field UGCVirtualItemTableName string
---@field LobbyAvatarExtEffectTableName string
---@field GenericAbilityBPTableName string
---@field VoicePackets string
local UItemBlueprintUtils = {}

---@param itemID number
---@param TagName string
---@return boolean
function UItemBlueprintUtils:HasTag(itemID, TagName) end

---@param itemID number
---@param TagName string
---@return boolean
function UItemBlueprintUtils:HasTagSub(itemID, TagName) end

---@param itemID number
---@param TagName string
---@return boolean
function UItemBlueprintUtils:HasTagMain(itemID, TagName) end

---@param itemID number
---@param TagName string
---@return FTagOneItem
function UItemBlueprintUtils:GetItemTag(itemID, TagName) end

function UItemBlueprintUtils:InitItemTag() end

---@param ItemID number
---@return boolean
function UItemBlueprintUtils:IsVirtualItemID(ItemID) end

---@param ItemType number
---@return boolean
function UItemBlueprintUtils:IsVirtualItemType(ItemType) end

---@param ItemID number
---@param TagName string
---@return boolean
function UItemBlueprintUtils:CommonHasTag(ItemID, TagName) end

---@param TargetActor AActor
---@param TemplateClass UActorComponent
function UItemBlueprintUtils:RemoveComponentByClass(TargetActor, TemplateClass) end

---@param DefineID FItemDefineID
---@return string
function UItemBlueprintUtils:GetBPTableNameByItemID(DefineID) end

---@return number
function UItemBlueprintUtils:GetItemMaxQuality() end


---@class UVoicePacketsTraver: UTableTraver
local UVoicePacketsTraver = {}
