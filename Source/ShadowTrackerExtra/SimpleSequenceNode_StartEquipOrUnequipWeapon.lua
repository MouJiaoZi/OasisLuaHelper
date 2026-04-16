---@meta

---通用轻量级Sequnce节点：开始拿出或收起武器
---@class USimpleSequenceNode_StartEquipOrUnequipWeapon: USimpleSequenceNodeBase
---@field bEquip boolean
---@field WeaponSlot ESurviveWeaponPropSlot
---@field Key_IsEquip FUAEBlackboardKeySelector
---@field Key_UnequipWeapon FUAEBlackboardKeySelector
---@field Key_EquipWeapon FUAEBlackboardKeySelector
---@field Key_ExtraWeapon FUAEBlackboardKeySelector
---@field Key_ConsiderCooperate FUAEBlackboardKeySelector
---@field Key_SwitchWeaponProgress FUAEBlackboardKeySelector
---@field Key_FastDrawWeapon FUAEBlackboardKeySelector
---@field Key_FastDrawWeaponEquipState FUAEBlackboardKeySelector
---@field Key_FastDrawWeaponUnEquipState FUAEBlackboardKeySelector
---@field Key_DisableDelayAttach FUAEBlackboardKeySelector
local USimpleSequenceNode_StartEquipOrUnequipWeapon = {}

---@param InOwnerActor AActor
---@param Sequence USimpleSequence
function USimpleSequenceNode_StartEquipOrUnequipWeapon:Init_Implementation(InOwnerActor, Sequence) end

function USimpleSequenceNode_StartEquipOrUnequipWeapon:Do_Implementation() end

function USimpleSequenceNode_StartEquipOrUnequipWeapon:ReverseDo_Implementation() end

---@return boolean
function USimpleSequenceNode_StartEquipOrUnequipWeapon:LocalStartUnEquipWeapon() end

---@return boolean
function USimpleSequenceNode_StartEquipOrUnequipWeapon:LocalStartEquipWeapon() end

---@return boolean
function USimpleSequenceNode_StartEquipOrUnequipWeapon:LocalStartUnEquipWeapon_Revert() end

---@return boolean
function USimpleSequenceNode_StartEquipOrUnequipWeapon:LocalStartEquipWeapon_Revert() end

---@param TargetWeapon ASTExtraWeapon
---@return boolean
function USimpleSequenceNode_StartEquipOrUnequipWeapon:LocalEquipWeapnFinished(TargetWeapon) end

---@param TargetWeapon ASTExtraWeapon
---@return boolean
function USimpleSequenceNode_StartEquipOrUnequipWeapon:LocalUnEquipWeapnFinished(TargetWeapon) end

function USimpleSequenceNode_StartEquipOrUnequipWeapon:HandleFastDrawWeaponChangeStateFinish() end
