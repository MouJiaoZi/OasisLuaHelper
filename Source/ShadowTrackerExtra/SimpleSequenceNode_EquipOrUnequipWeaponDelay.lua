---@meta

---通用轻量级Sequnce节点逻辑封装:武器切换延迟
---@class USimpleSequenceNode_EquipOrUnequipWeaponDelay: USimpleSequenceNodeBase
---@field WeaponSlot ESurviveWeaponPropSlot
---@field PlayExtraRate_Equip number
---@field PlayExtraRate_Equip_Revert number
---@field PlayExtraRate_UnEquip number
---@field PlayExtraRate_UnEquip_Revert number
---@field bEquip boolean
---@field ExtraNodeDuration number
---@field Key_UnequipWeapon FUAEBlackboardKeySelector
---@field Key_EquipWeapon FUAEBlackboardKeySelector
---@field Key_ExtraWeapon FUAEBlackboardKeySelector
---@field Key_IsEquip FUAEBlackboardKeySelector
---@field Key_SwitchTime FUAEBlackboardKeySelector
---@field Key_FastDrawWeapon FUAEBlackboardKeySelector
---@field Key_FastDrawWeaponEquipState FUAEBlackboardKeySelector
---@field Key_FastDrawWeaponUnEquipState FUAEBlackboardKeySelector
---@field bHasTriggerReverse boolean
local USimpleSequenceNode_EquipOrUnequipWeaponDelay = {}

---@param InOwnerActor AActor
---@param Sequence USimpleSequence
function USimpleSequenceNode_EquipOrUnequipWeaponDelay:Init_Implementation(InOwnerActor, Sequence) end

function USimpleSequenceNode_EquipOrUnequipWeaponDelay:Do_Implementation() end

function USimpleSequenceNode_EquipOrUnequipWeaponDelay:ReverseDo_Implementation() end

---@param bWantsEquip boolean
---@param Rate number
function USimpleSequenceNode_EquipOrUnequipWeaponDelay:SetSwitchWeaponAnimPlayRate(bWantsEquip, Rate) end

---@param State EFreshWeaponStateType
function USimpleSequenceNode_EquipOrUnequipWeaponDelay:ChangeExtraWeaponState(State) end

---@param bWantsEquip boolean
function USimpleSequenceNode_EquipOrUnequipWeaponDelay:ChangeFastDrawWeaponState(bWantsEquip) end
