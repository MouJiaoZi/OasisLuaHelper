---@meta

---@class URevivalCardItemHandle: UBattleItemHandleBase
---@field DroperPlayerKey number
---@field DroperPlayerName string
local URevivalCardItemHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function URevivalCardItemHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function URevivalCardItemHandle:HandleUse(Target, Reason) end

function URevivalCardItemHandle:TimerUseSelf() end
