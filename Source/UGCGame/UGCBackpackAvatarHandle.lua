---@meta

---UGC外显装备基类
---@class UUGCBackpackAvatarHandle: UBackpackAvatarHandle, IUGCItemDataInterface, IUGCObjectItemTableInterface, IUGCItemEquipmentInterface, IUGCItemEquipTargetInterface, IUGCCommonDeadDropItemInterface, IUGCBattleEquipHandleAttachInterface
---@field ItemID number
---@field ItemName string
---@field BackpackSimple string
---@field IconTexture FSoftObjectPath
---@field CanUse boolean
---@field CanDrop boolean
---@field CanRemove boolean
---@field ItemDetail string
---@field PickupDetail string
---@field Tags ULuaArrayHelper<FGameplayTag>
---@field ItemQuality number
---@field CustomizedType string
---@field PickupWrapperMesh FSoftObjectPath
---@field TransformOffset FTransform
---@field ShouldPersist boolean
---@field UnitWeightConfig number
---@field WeightforOrder number
---@field ClassesTags ULuaMapHelper<string, number>
---@field bAutoTryEquip boolean
---@field Slots ULuaArrayHelper<FUGCEquipmentItemSlot>
---@field PickUpSound string
---@field PickUpBank string
---@field DropSound string
---@field DropBank string
---@field EquipSound string
---@field EquipBank string
---@field UnEquipSound string
---@field UnEquipBank string
---@field DeadDropItemType EDeadDropItemType
---@field AttrModifyItemSimpleList FPESkillAttributeItemArray
---@field EquipingPESkillList ULuaArrayHelper<UBasicPersistEffect>
---@field ReloadID number
---@field ForceShowAvatar boolean
---@field HeadDamageReduceAttr number
---@field BodyDamageReduceAttr number
---@field BackpackCellAttr number
---@field ItemLevel number
---@field NewDurability number
---@field DamageReduceModifierName string
---@field bOverrideCustomMesh boolean
---@field CustomStMesh UStaticMesh
---@field MeshAttachTransform FStructureTransform
---@field EquipPESkillList FUGCSkillV2ConfigArray
---@field DuabilityDataName string
---@field AttachActorConfigs ULuaArrayHelper<FAvatarEquipmentAttachConfig>
---@field SpawnedAttachActors ULuaArrayHelper<AActor>
local UUGCBackpackAvatarHandle = {}

---@return string
function UUGCBackpackAvatarHandle:GetBodyDurabilityIndexName() end

---@return string
function UUGCBackpackAvatarHandle:GetOverrideSocketName() end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UUGCBackpackAvatarHandle:HandleUse_UBattleItemHandleBase(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UUGCBackpackAvatarHandle:HandleDisuse_UBattleItemHandleBase(Reason) end

---@param owner AActor
---@param attrName string
---@param deltaVal number
---@param resultVal number
function UUGCBackpackAvatarHandle:OnCharacterAttrChangedWithDetailEvent(owner, attrName, deltaVal, resultVal) end

---Event
---当物品耐久度变化时执行
---可重载并自定义
---DS 被调用
---@param OriginDurability number @原始耐久度
---@param ChangedDurability number @改变后的耐久度
function UUGCBackpackAvatarHandle:OnDurabilityChanged(OriginDurability, ChangedDurability) end

---@return number
function UUGCBackpackAvatarHandle:GetCustomData_Duability() end

---@param NewDuability number
---@return boolean
function UUGCBackpackAvatarHandle:SetCustomData_Duability(NewDuability) end

function UUGCBackpackAvatarHandle:SpawnAttachActors() end

function UUGCBackpackAvatarHandle:DestroyAttachActors() end
