---@meta

---通用轻量级Sequnce节点：拿出或收起武器结束
---@class USimpleSequenceNode_EquipOrUnequipWeaponFinished: USimpleSequenceNode_StartEquipOrUnequipWeapon
local USimpleSequenceNode_EquipOrUnequipWeaponFinished = {}

---@param InOwnerActor AActor
---@param Sequence USimpleSequence
function USimpleSequenceNode_EquipOrUnequipWeaponFinished:Init_Implementation(InOwnerActor, Sequence) end

function USimpleSequenceNode_EquipOrUnequipWeaponFinished:Do_Implementation() end

function USimpleSequenceNode_EquipOrUnequipWeaponFinished:ReverseDo_Implementation() end
