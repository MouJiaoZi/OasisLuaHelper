---@meta

---道具载具item尽量以UBackpackUsableVehicleHandle为基础去开发，其他直接从UBattleItemHandleBase延伸的都己弃用，会慢慢改为UBackpackUsableVehicleHandle
---@class UBackpackSpawnableVehicleHandle: UBackpackVehicleAbilityHandle
---@field MaxSearchTimes number
---@field SearchRadius number
local UBackpackSpawnableVehicleHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackSpawnableVehicleHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackSpawnableVehicleHandle:HandleUse(Target, Reason) end

---@param PC ASTExtraPlayerController
function UBackpackSpawnableVehicleHandle:VehicleReadyToSpawn(PC) end
