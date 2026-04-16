---@meta

---@class UBackpackVehicleMoonCareHandle: UBackpackUsableVehicleHandle
---@field SpawnVehicle1 ASTExtraVehicleBase
---@field SpawnVehicle2 ASTExtraVehicleBase
---@field WrapperClass APickUpWrapperActor
---@field bIsEnabled boolean
---@field SpawnIndoorCheckHeight number
---@field ForwardSpaceCheckFactor number
---@field SpaceCheckRadius number
---@field SpaceCheckStartHeight number
---@field SpaceCheckEndHeight number
---@field WaterDetectLineLength number
---@field ForbidUseItemDepthInWater number
---@field bDrawSpaceCheck boolean
---@field bIsNearWater boolean
local UBackpackVehicleMoonCareHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackVehicleMoonCareHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackVehicleMoonCareHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackVehicleMoonCareHandle:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackVehicleMoonCareHandle:HandleDisuse(Reason) end

---@param bEnable boolean
---@return boolean
function UBackpackVehicleMoonCareHandle:HandleEnable(bEnable) end

---@return FBattleItemData
function UBackpackVehicleMoonCareHandle:ExtractItemData() end

function UBackpackVehicleMoonCareHandle:RegisterEvents() end

function UBackpackVehicleMoonCareHandle:DelayDestroy() end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UBackpackVehicleMoonCareHandle:OnServerEnterVehicle(Player, SeatType, IsSucc) end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UBackpackVehicleMoonCareHandle:OnServerExitVehicle(Player, SeatType, IsSucc) end

---@param NewVehicleID number
---@return boolean
function UBackpackVehicleMoonCareHandle:MoonDeform(NewVehicleID) end
