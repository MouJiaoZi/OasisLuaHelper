---@meta

---@class UBackpackRemoteControlItem: UBattleItemHandleBase
---@field IsEnabled boolean
---@field electricity number
---@field durability number
---@field RemoteControlClassID number
---@field enterremotecontroldelaytime number
---@field NeedIgnoreSnowBoard boolean
---@field remotecontrolcreatepos FVector
---@field ProneOffset FVector
---@field DontHaveEnoughTips number
---@field CantUseRemoteControlTips number
---@field CantDrop number
---@field CantUseWhenRecall number
---@field YawOffet number
---@field CreatedVehicleClassPath string
---@field bForceNotAutoPossessAI boolean
---@field spawnValidHeight number
---@field RemoteControlVehicleType ESTExtraVehicleType
---@field CheckSpawnPosition boolean
---@field CheckSpawnPositionHeight number
local UBackpackRemoteControlItem = {}

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackRemoteControlItem:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackRemoteControlItem:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackRemoteControlItem:HandleUse(Target, Reason) end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackRemoteControlItem:HandleDisuse(Reason) end

---@param bEnable boolean
---@return boolean
function UBackpackRemoteControlItem:HandleEnable(bEnable) end

---@param dura number
---@param elec number
function UBackpackRemoteControlItem:OnAttrChange(dura, elec) end

---@return boolean
function UBackpackRemoteControlItem:CheckCanEnable() end

function UBackpackRemoteControlItem:TryEnterRemoteControl() end

function UBackpackRemoteControlItem:DelayShowRemoteControl() end

---@param IsSucc boolean
function UBackpackRemoteControlItem:OnEnterRemoteControl(IsSucc) end

---@return boolean
function UBackpackRemoteControlItem:CheckCanSpawnOnPosition() end
