---@meta

---@class UOccupationCardItemHandle: UOccupationHandleBase
---@field CardActorClass AActor
---@field OccupationAvatars ULuaMapHelper<number, number>
---@field OccupationArmBands ULuaMapHelper<number, number>
---@field DisuseFailTips ULuaArrayHelper<number>
---@field bNeedTickAvatar boolean
local UOccupationCardItemHandle = {}

---@param InOwningBackpackComponnent UBackpackComponent
---@param InCharacterItemHandle UBattleItemHandleBase
---@param InTargetLogicSocket string
---@return boolean
function UOccupationCardItemHandle:LocalHandleUse(InOwningBackpackComponnent, InCharacterItemHandle, InTargetLogicSocket) end

---@param ItemContainer IItemContainerInterface
---@param InCharacterItemHandle UBattleItemHandleBase
---@param InTargetLogicSocket string
---@return boolean
function UOccupationCardItemHandle:LocalPickup(ItemContainer, InCharacterItemHandle, InTargetLogicSocket) end

---@param CurrLevel number
---@param TargetLevel number
---@param AddLoad number
---@return boolean
function UOccupationCardItemHandle:CanModifyLevel(CurrLevel, TargetLevel, AddLoad) end

---@param TargetLevel number
---@param addLoad number
---@return boolean
function UOccupationCardItemHandle:CanModifyTargetLevel(TargetLevel, addLoad) end

---@param Delta number
---@param avatarEnity UOccupationCardAvatarEntity
function UOccupationCardItemHandle:TickAvatarPerformBP(Delta, avatarEnity) end

---@param Delta number
---@param avatarEnity UOccupationCardAvatarEntity
function UOccupationCardItemHandle:TickAvatarPerformCPP(Delta, avatarEnity) end
