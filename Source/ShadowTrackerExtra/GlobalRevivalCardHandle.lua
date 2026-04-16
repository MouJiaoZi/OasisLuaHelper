---@meta

---@class UGlobalRevivalCardHandle: UBattleItemHandleBase
---@field RevivalTimes number
---@field RevivalComponentClass USuperPeopleRevivalComponent
local UGlobalRevivalCardHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UGlobalRevivalCardHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end
