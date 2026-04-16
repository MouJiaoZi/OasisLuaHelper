---@meta

---@class FTouchInfo
FTouchInfo = {}


---道具载具item尽量以UBackpackUsableVehicleHandle为基础去开发，其他直接从UBattleItemHandleBase延伸的都己弃用，会慢慢改为UBackpackUsableVehicleHandle
---@class UBackpackSnowboardItemHandle: UBattleItemHandleBase
---@field SpawnVehicle ASTExtraVehicleBase
---@field IsEnabled boolean
---@field WrapperClass APickUpWrapperActor
---@field WrapperPutdownTrans FTransform
---@field SpaceCheckBounds FVector
---@field OpenAdaptPicth boolean
---@field OpenDebug boolean
---@field UseBoxTop boolean
---@field CheckUseRegion boolean
---@field RegionCantUseVehicleTips number
local UBackpackSnowboardItemHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackSnowboardItemHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackSnowboardItemHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackSnowboardItemHandle:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackSnowboardItemHandle:HandleDisuse(Reason) end

---@param bEnable boolean
---@return boolean
function UBackpackSnowboardItemHandle:HandleEnable(bEnable) end

---@return FBattleItemData
function UBackpackSnowboardItemHandle:ExtractItemData() end

---@return boolean
function UBackpackSnowboardItemHandle:CheckCanEnable() end

---@param time number
function UBackpackSnowboardItemHandle:SetDelayDestroy(time) end

function UBackpackSnowboardItemHandle:DelayDestroy() end

---@param time number
function UBackpackSnowboardItemHandle:SetDelayResetOnUsing(time) end

function UBackpackSnowboardItemHandle:ResetOnUsing() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function UBackpackSnowboardItemHandle:OnServerEnterVehicle(Character, SeatType, bSuccess) end

---@return boolean
function UBackpackSnowboardItemHandle:CheckDropPreHandle() end
