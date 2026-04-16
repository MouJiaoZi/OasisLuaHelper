---@meta

---@class UMagicBattleEquipmentItemHandleBase: UCommonBattleItemHandleBase, ICommonCreatePickUpWrapperItemInterface, ICommonEquipmentItemInterface
---@field PickupWrapperClass APickUpWrapperActor
local UMagicBattleEquipmentItemHandleBase = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UMagicBattleEquipmentItemHandleBase:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UMagicBattleEquipmentItemHandleBase:HandleDrop(InCount, Reason) end

---@param TargetSlotName string
---@return boolean
function UMagicBattleEquipmentItemHandleBase:HandleEquip(TargetSlotName) end

---@param OldSlotName string
---@return boolean
function UMagicBattleEquipmentItemHandleBase:HandleUnEquip(OldSlotName) end
