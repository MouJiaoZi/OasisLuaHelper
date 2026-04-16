---@meta

---@class EUGCItemGAActiveCondition
---@field ActiveOnPickup number @物品拾取激活
---@field ActiveOnUse number @物品使用激活
---@field ActiveOnEquip number @物品装备激活
---@field ActiveOnManual number @不自动激活
EUGCItemGAActiveCondition = {}


---@class FUGCSkillV2Config
---@field SkillTemplateClass UBasicPersistEffect
---@field SkillActiveCondition EUGCItemGAActiveCondition
---@field OverrideApplyTime number
FUGCSkillV2Config = {}


---@class FUGCSkillV2ConfigArray
---@field Items ULuaArrayHelper<FUGCSkillV2Config>
FUGCSkillV2ConfigArray = {}


---通用扩展 ItemHandle(空实现)
---@class UUGCBattleItemHandleBase: UCommonBattleItemHandleBase, IUGCItemDataInterface, IUGCObjectItemTableInterface, IUGCCommonDeadDropItemInterface, IUGCBattleItemTableRowReceptorInterface
---@field ItemID number
---@field ItemName string
---@field MaxNumberOfStacks number
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
---@field DeadDropItemType EDeadDropItemType
---@field PickUpSound string
---@field PickUpBank string
---@field DropSound string
---@field DropBank string
---@field bShowInPanelList boolean
---@field ReloadID number
---@field bDelayStopUse boolean
---@field EquipPESkillList FUGCSkillV2ConfigArray
---@field bUsingState boolean
local UUGCBattleItemHandleBase = {}


---装备类型
---装备主要逻辑应该实现在 HandleEquip 和 HandleUnEquip
---@class UUGCEquipmentItemHandleBase: UUGCBattleItemHandleBase, IUGCItemEquipmentInterface, IUGCItemEquipTargetInterface, IUGCBattleEquipHandleAttachInterface
---@field bAutoTryEquip boolean
---@field Slots ULuaArrayHelper<FUGCEquipmentItemSlot>
---@field AttrModifyItemSimpleList FPESkillAttributeItemArray
---@field EquipingPESkillList ULuaArrayHelper<UBasicPersistEffect>
---@field AttachActorConfigs ULuaArrayHelper<FAvatarEquipmentAttachConfig>
---@field SpawnedAttachActors ULuaArrayHelper<AActor>
local UUGCEquipmentItemHandleBase = {}

function UUGCEquipmentItemHandleBase:SpawnAttachActors() end

function UUGCEquipmentItemHandleBase:DestroyAttachActors() end

---@return boolean
function UUGCEquipmentItemHandleBase:Equipping() end

---@param SlotName string
---@return FItemDefineID
function UUGCEquipmentItemHandleBase:GetEquippedItemBySlotName(SlotName) end
