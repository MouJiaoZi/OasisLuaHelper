---@meta

---@class UCommonRevivalCardHandle: UBattleItemHandleBase
---@field WrapperClass APickUpWrapperActor
---@field RevivalComponentClass UCommonRevivalComponent
---@field bUseLocalTimeSetting boolean
local UCommonRevivalCardHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UCommonRevivalCardHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UCommonRevivalCardHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UCommonRevivalCardHandle:HandleUse(Target, Reason) end

---@param bSpawnWrapper boolean
---@return boolean
function UCommonRevivalCardHandle:ResetInner(bSpawnWrapper) end

---@param revivalComponent UCommonRevivalComponent
---@param PickupInfo FBattleItemPickupInfo
function UCommonRevivalCardHandle:HandleRevivalCardUsefulTime(revivalComponent, PickupInfo) end

---@param inTimeEnd number
function UCommonRevivalCardHandle:ChangeTimeEnd(inTimeEnd) end
