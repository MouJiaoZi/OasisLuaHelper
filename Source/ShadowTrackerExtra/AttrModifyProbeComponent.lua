---@meta

---@class FWeaponOverrideAttrs
---@field GameModeOverride_DeviationMoveModifier number
---@field GameModeOverride_DeviationStanceJumpModifier number
---@field GameModeOverride_MeleeDamageAmountModifier number
---@field GameModeOverride_GrenadeDamageRadiusModifier number
---@field GameModeOverride_GrenadeDamageAmountModifier number
---@field GameModeOverride_GunsDamageAmountModifier number
---@field GameModeOverride_WeaponAimInTimeModifier number
---@field GameModeOverride_AllReloadTimeModifier number
FWeaponOverrideAttrs = {}


---@class FCharacterOverrideAttrs
---@field GameModeOverride_SpeedScaleModifier number
---@field GameModeOverride_SwimSpeedScaleModifier number
---@field GameModeOverride_EnergySpeedScaleModifier number
---@field GameModeOverride_LastBreathSpeedScaleModifier number
FCharacterOverrideAttrs = {}


---@class UAttrModifyProbeComponent: UGameModeBaseComponent
---@field CharacterOverrideAttrConfigs ULuaArrayHelper<FAttrModifyItem>
---@field WeaponOverrideAttrConfigs ULuaArrayHelper<FAttrModifyItem>
local UAttrModifyProbeComponent = {}

---Called when component is registered and add callback functions to delegates
---@param AttrName string
---@param AttrValue number
function UAttrModifyProbeComponent:SetCharacterOverrideAttrValue(AttrName, AttrValue) end

---@param STCharacter ASTExtraBaseCharacter
function UAttrModifyProbeComponent:EnableGameModeOverrideAttrs(STCharacter) end

---@param STCharacter ASTExtraBaseCharacter
---@param AttrModifyItemName string
---@param AttrValue number
function UAttrModifyProbeComponent:AddDynamicModifier(STCharacter, AttrModifyItemName, AttrValue) end

---@param STCharacter ASTExtraBaseCharacter
---@param AttrModifyItemName string
function UAttrModifyProbeComponent:RemoveDynamicModifier(STCharacter, AttrModifyItemName) end
