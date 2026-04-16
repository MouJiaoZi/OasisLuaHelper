---@meta

---道具载具item尽量以UBackpackUsableVehicleHandle为基础去开发，其他直接从UBattleItemHandleBase延伸的都己弃用，会慢慢改为UBackpackUsableVehicleHandle
---@class UBackpackUAVHandle: UBattleItemHandleBase
---@field IsEnabled boolean
---@field electricity number
---@field durability number
---@field UAVClassID number
---@field enteruavdelaytime number
---@field NeedIgnoreSnowBoard boolean
---@field uavcreatepos FVector
---@field CreatedVehicleClassPath string
---@field ProneOffset FVector
---@field CrouchOffset FVector
---@field EndProneOffset FVector
---@field EndCrouchOffset FVector
---@field spawnValidHeight number
---@field SpawnIndoorCheckHeight number
---@field UAVVehicleType ESTExtraVehicleType
---@field bConsumeItem boolean
---@field DontSpawnWrapperDropReason ULuaArrayHelper<EBattleItemDropReason>
---@field bUseWhenCastSkill boolean
---@field bInEmergencyCallStateCanUse boolean
---@field bCanUseWhenProne boolean
---@field bCanUseWhenCrouch boolean
---@field CantUseTipID number
---@field DontHaveEnoughSpace number
---@field UAVInReCallingID number
---@field UAVMaxNumWarning number
---@field UAVInReCallingCantDropID number
---@field bOpenDelayShowCheckEnable boolean
---@field LastNotifyHP number
---@field LastNotifyFuel number
---@field NotifyThreshold number
---@field bSetCampID boolean
---@field bResumeWhenUse boolean
local UBackpackUAVHandle = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackUAVHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackUAVHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackUAVHandle:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackUAVHandle:HandleDisuse(Reason) end

---@param bEnable boolean
---@return boolean
function UBackpackUAVHandle:HandleEnable(bEnable) end

---@param dura number
---@param elec number
function UBackpackUAVHandle:OnAttrChange(dura, elec) end

---@return boolean
function UBackpackUAVHandle:CheckCanEnable() end

function UBackpackUAVHandle:TryEnterVehicle() end

function UBackpackUAVHandle:DelayShowVehicle() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UBackpackUAVHandle:OnServerEnterVehicle(Character, SeatType, IsSucc) end

---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackUAVHandle:CanSpawnWrapperByDropReason(Reason) end
