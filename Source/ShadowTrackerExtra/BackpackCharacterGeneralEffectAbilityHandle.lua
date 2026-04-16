---@meta

---@class FCharacterGeneralEffectConfig
---@field ParticleSystemItem UParticleSystem
---@field ParticleSystemTransform FTransform
---@field SocketName string
---@field NetRoleAndQualitySelector FNetRoleAndQualitySelector
---@field PlayerCameraMode EPlayerCameraMode
FCharacterGeneralEffectConfig = {}


---@class UBackpackCharacterGeneralEffectAbilityHandle: UBackpackCharacterAvatarAbilityHandle
---@field CharacterGeneralEffectConfigList ULuaArrayHelper<FCharacterGeneralEffectConfig>
---@field bOverride_GetParticleSystemConfig boolean
---@field bOverride_RegisterAbilityResources boolean
local UBackpackCharacterGeneralEffectAbilityHandle = {}

---@param InCharacter ASTExtraPlayerCharacter
---@return FCharacterGeneralEffectConfig
function UBackpackCharacterGeneralEffectAbilityHandle:GetParticleSystemConfig(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterGeneralEffectAbilityHandle:RegisterAbilityResources(InCharacter) end

function UBackpackCharacterGeneralEffectAbilityHandle:ServerModifyFocusTarget() end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterGeneralEffectAbilityHandle:ClientModifyFocusTarget(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterGeneralEffectAbilityHandle:CollectResources(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
---@return boolean
function UBackpackCharacterGeneralEffectAbilityHandle:IsCharacterGeneralEffectManagerValid(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
---@return FCharacterGeneralEffectConfig
function UBackpackCharacterGeneralEffectAbilityHandle:BP_GetParticleSystemConfig(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterGeneralEffectAbilityHandle:BP_RegisterAbilityResources(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
---@return boolean
function UBackpackCharacterGeneralEffectAbilityHandle:CheckVisibleCondition(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
---@return number
function UBackpackCharacterGeneralEffectAbilityHandle:GetVisibleCondition(InCharacter) end
