---@meta

---UGC 武器 Handle 基类
---@class UUGCBackpackWeaponHandle: UBackpackWeaponHandle, IUGCItemDataInterface, IUGCObjectItemTableInterface, IUGCItemEquipTargetInterface, IUGCItemEquipmentInterface, IUGCCommonDeadDropItemInterface
---@field CustomMesh FCustomItemHandleMeshConfig
---@field UGCMeshOffsetAdaptation FTransform
---@field ItemID number
---@field ItemName string
---@field MaxNumberOfStacks number
---@field IconTexture FSoftObjectPath
---@field WhiteIconTexture FSoftObjectPath
---@field BigIconTexture FSoftObjectPath
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
---@field bIsAttributeOverride boolean
---@field WeaponAttachments ULuaArrayHelper<FWeaponAttachmentSlot>
local UUGCBackpackWeaponHandle = {}

---@param SourceHandle UBackpackWeaponHandle
function UUGCBackpackWeaponHandle:CopyWeaponProperties(SourceHandle) end

---@param SlotName string
---@return FItemDefineID
function UUGCBackpackWeaponHandle:GetEquippedItemBySlotName(SlotName) end

function UUGCBackpackWeaponHandle:GetAvailableWeaponAttachmentWithRuntimeTable() end
