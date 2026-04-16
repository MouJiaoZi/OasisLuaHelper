---@meta

---@class UBackpackWeaponAppearanceAbilityHandle: UBackpackWeaponAbilityHandle
---@field ParticleEffectAttachSocket string
---@field ParticleEffectAttachTransform FTransform
---@field ParticleEffectAttachSocketFPP string
---@field ParticleEffectAttachTransformFPP FTransform
local UBackpackWeaponAppearanceAbilityHandle = {}

---@param Weap ASTExtraWeapon
---@param bIsFPP boolean
function UBackpackWeaponAppearanceAbilityHandle:HandleSwitchPP(Weap, bIsFPP) end

---@param Weap ASTExtraWeapon
function UBackpackWeaponAppearanceAbilityHandle:CreateFX(Weap) end
