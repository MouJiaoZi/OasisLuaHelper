---@meta

---@class UBackpackBalloonHandle: UBattleItemHandleBase
---@field SpawnVehicle ASTExtraVehicleBase
---@field IsEnabled boolean
---@field DelayDestroyTime number
local UBackpackBalloonHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackBalloonHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackBalloonHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackBalloonHandle:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackBalloonHandle:HandleDisuse(Reason) end

---@param bEnable boolean
---@return boolean
function UBackpackBalloonHandle:HandleEnable(bEnable) end

---@return FBattleItemData
function UBackpackBalloonHandle:ExtractItemData() end

function UBackpackBalloonHandle:DelayDestroy() end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UBackpackBalloonHandle:OnServerEnterVehicle(Player, SeatType, IsSucc) end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UBackpackBalloonHandle:OnExitVehicle(Player, SeatType, IsSucc) end
