---@meta

---@class UBackpackVehicleItemHandle: UBattleItemHandleBase
---@field SpawnVehicle ASTExtraVehicleBase
---@field IsEnabled boolean
---@field SpawnVehicleFailedMsgID number
---@field bCanUseInWater boolean
---@field bCanUseInDoor boolean
---@field WrapperClass APickUpWrapperActor
---@field WrapperPutdownTrans FTransform
---@field bShouldBindJoystick boolean
---@field SpawnVehicleOffset FVector
local UBackpackVehicleItemHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackVehicleItemHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackVehicleItemHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackVehicleItemHandle:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackVehicleItemHandle:HandleDisuse(Reason) end

---@param bEnable boolean
---@return boolean
function UBackpackVehicleItemHandle:HandleEnable(bEnable) end

---@return FBattleItemData
function UBackpackVehicleItemHandle:ExtractItemData() end

---@return boolean
function UBackpackVehicleItemHandle:CheckCanEnable() end

---@param time number
function UBackpackVehicleItemHandle:SetDelayDestroy(time) end

function UBackpackVehicleItemHandle:DelayDestroy() end

---@param time number
function UBackpackVehicleItemHandle:SetDelayResetOnUsing(time) end

function UBackpackVehicleItemHandle:ResetOnUsing() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function UBackpackVehicleItemHandle:OnServerEnterVehicle(Character, SeatType, bSuccess) end

---@return boolean
function UBackpackVehicleItemHandle:CheckDropPreHandle() end
