---@meta

---@class UExchangeItemHandle: UBattleItemHandleBase
---@field ExchangeItemID number
---@field ExchangeCount number
local UExchangeItemHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UExchangeItemHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UExchangeItemHandle:HandleUse(Target, Reason) end

---@return boolean
function UExchangeItemHandle:UseItem() end
