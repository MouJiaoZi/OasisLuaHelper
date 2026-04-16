---@meta

---@class FCharacterAvatarActionEffectsDataForAbility
---@field OtherClothID number
---@field CharacterAvatarActionEffectsDataMap ULuaMapHelper<EPawnState, FCharacterAvatarActionEffectsDataItem>
FCharacterAvatarActionEffectsDataForAbility = {}


---@class FParticleSystemDeviceRoleAEParam
---@field ParticleSystemSelectorList ULuaMapHelper<EPawnState, FParticleSystemDeviceRoleSelector>
FParticleSystemDeviceRoleAEParam = {}


---@class UBackpackCharacterAvatarActionEffectAbilityHandle: UBackpackCharacterAvatarAbilityHandle
---@field CharacterAvatarActionEffectsDataSettingForAbilityMale ULuaMapHelper<number, FCharacterAvatarActionEffectsDataForAbility>
---@field CharacterAvatarActionEffectsDataSettingForAbilityFemale ULuaMapHelper<number, FCharacterAvatarActionEffectsDataForAbility>
---@field ParticleSystemDeviceRoleAEParam ULuaMapHelper<number, FParticleSystemDeviceRoleAEParam>
---@field PawnState EPawnState
local UBackpackCharacterAvatarActionEffectAbilityHandle = {}

function UBackpackCharacterAvatarActionEffectAbilityHandle:ServerModifyFocusTarget() end

function UBackpackCharacterAvatarActionEffectAbilityHandle:ServerRestoreFocusTarget() end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarActionEffectAbilityHandle:ClientModifyFocusTarget(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarActionEffectAbilityHandle:ClientRestoreFocusTarget(InCharacter) end

---@param InClothID number
---@param InGender number
---@return FCharacterAvatarActionEffectsDataForAbility
function UBackpackCharacterAvatarActionEffectAbilityHandle:GetAllConfigByClothID(InClothID, InGender) end

---@param InType EResourceType
---@param InClothID number
---@param InGender number
---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarActionEffectAbilityHandle:GetAllAssetPathsByType(InType, InClothID, InGender, InCharacter) end

---@param InPawnState EPawnState
---@param InClothID number
---@param InGender number
---@param InCharacter ASTExtraPlayerCharacter
---@return FCharacterAvatarActionEffectsDataItem
function UBackpackCharacterAvatarActionEffectAbilityHandle:GetConfigByPawnState(InPawnState, InClothID, InGender, InCharacter) end

---@param InPawnState EPawnState
---@param InCharacter ASTExtraPlayerCharacter
---@param InClothID number
---@param PlayerCameraMode EPlayerCameraMode
function UBackpackCharacterAvatarActionEffectAbilityHandle:GetResourceByDeviceRole(InPawnState, InCharacter, InClothID, PlayerCameraMode) end
