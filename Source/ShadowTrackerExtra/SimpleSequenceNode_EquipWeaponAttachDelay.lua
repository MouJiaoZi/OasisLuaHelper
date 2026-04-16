---@meta

---通用轻量级Sequnce节点逻辑封装：武器延迟挂手上
---@class USimpleSequenceNode_EquipWeaponAttachDelay: USimpleSequenceNodeBase
---@field WeaponSlot ESurviveWeaponPropSlot
---@field Key_EquipWeapon FUAEBlackboardKeySelector
local USimpleSequenceNode_EquipWeaponAttachDelay = {}

---@param InOwnerActor AActor
---@param Sequence USimpleSequence
function USimpleSequenceNode_EquipWeaponAttachDelay:Init_Implementation(InOwnerActor, Sequence) end

function USimpleSequenceNode_EquipWeaponAttachDelay:Do_Implementation() end

function USimpleSequenceNode_EquipWeaponAttachDelay:ReverseDo_Implementation() end
