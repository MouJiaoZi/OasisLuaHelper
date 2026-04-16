---@meta

---道具载具item尽量以UBackpackUsableVehicleHandle为基础去开发，其他直接从UBattleItemHandleBase延伸的都己弃用，会慢慢改为UBackpackUsableVehicleHandle
---@class UBackpackSurfboardHandle: UBattleItemHandleBase
---@field SpawnVehicle ASTExtraVehicleBase
---@field IsEnabled boolean
---@field SwimFlipperTag FGameplayTag
local UBackpackSurfboardHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackSurfboardHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackSurfboardHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackSurfboardHandle:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackSurfboardHandle:HandleDisuse(Reason) end

---@param bEnable boolean
---@return boolean
function UBackpackSurfboardHandle:HandleEnable(bEnable) end

---@return FBattleItemData
function UBackpackSurfboardHandle:ExtractItemData() end

---@return boolean
function UBackpackSurfboardHandle:CheckCanEnable() end

---@param PC ASTExtraPlayerController
---@return boolean
function UBackpackSurfboardHandle:CheckCanEnableSurfboardHandleClient(PC) end

function UBackpackSurfboardHandle:DelayDestroy() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function UBackpackSurfboardHandle:OnServerEnterVehicle(Character, SeatType, bSuccess) end

---@param InCharacter ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UBackpackSurfboardHandle:OnServerVehicleExit(InCharacter, SeatType, IsSucc) end

---@param newVehicle ASTExtraVehicleBase
function UBackpackSurfboardHandle:ReBindNewVehicle(newVehicle) end
