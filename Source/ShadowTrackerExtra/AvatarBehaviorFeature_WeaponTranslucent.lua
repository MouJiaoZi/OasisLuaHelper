---@meta

---@class UAvatarBehaviorFeature_WeaponTranslucent: UAvatarBehaviorFeature
---@field TranslucentBehaviorParam FWeaponTranslucentBehaviorParam
---@field bOverride_ApplyTranslucentConfig boolean
---@field bOverride_RevertTranslucentConfig boolean
---@field bOverride_OnSwitchFPP boolean
local UAvatarBehaviorFeature_WeaponTranslucent = {}

---@param InOwnerAvatarComp UAvatarComponent
---@param InOwnerAvatarEntity UAvatarEntity
---@param InConfigParamIndex number
function UAvatarBehaviorFeature_WeaponTranslucent:InitBehaviorFeature(InOwnerAvatarComp, InOwnerAvatarEntity, InConfigParamIndex) end

---@return boolean
function UAvatarBehaviorFeature_WeaponTranslucent:IsNeedDelayRelease() end

function UAvatarBehaviorFeature_WeaponTranslucent:ApplyTranslucentConfig() end

function UAvatarBehaviorFeature_WeaponTranslucent:BP_ApplyTranslucentConfig() end

function UAvatarBehaviorFeature_WeaponTranslucent:RevertTranslucentConfig() end

function UAvatarBehaviorFeature_WeaponTranslucent:BP_RevertTranslucentConfig() end

---@param Weapon ASTExtraWeapon
---@param bIsFPP boolean
function UAvatarBehaviorFeature_WeaponTranslucent:OnSwitchFPP(Weapon, bIsFPP) end

---@param Weapon ASTExtraWeapon
---@param bIsFPP boolean
function UAvatarBehaviorFeature_WeaponTranslucent:BP_OnSwitchFPP(Weapon, bIsFPP) end
