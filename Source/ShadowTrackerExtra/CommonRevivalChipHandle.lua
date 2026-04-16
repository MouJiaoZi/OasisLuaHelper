---@meta

---@class UCommonRevivalChipHandle: UBattleItemHandleBase
---@field WrapperClass APickUpWrapperActor
---@field RevivalComponentClass USuperPeopleRevivalComponent
---@field AdditionalDataName string
---@field bFallingIntoDeathBox boolean
---@field bDestoryAfterRevival boolean
---@field bPermitPickupByOtherTeam boolean
---@field bPermitDropTeammatesChip boolean
local UCommonRevivalChipHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UCommonRevivalChipHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UCommonRevivalChipHandle:HandleDrop(InCount, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UCommonRevivalChipHandle:ConditionDropCheck(InCount, Reason) end

---@param AdditionalDatas ULuaArrayHelper<FBattleItemAdditionalData>
---@param OutData FBattleItemAdditionalData
---@return boolean
function UCommonRevivalChipHandle:HasChipAdditionalData(AdditionalDatas, OutData) end
