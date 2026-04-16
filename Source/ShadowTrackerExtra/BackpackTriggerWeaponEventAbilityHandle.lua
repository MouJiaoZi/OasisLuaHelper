---@meta

---@class FWeaponEffectConfig
---@field ParticleSystemItem UParticleSystem
---@field SoundItem UAkAudioEvent
---@field ParticleSystemTransform FTransform
---@field SocketName string
---@field PCM_Normal_ParticleSystemItem UParticleSystem
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field ActivateEventName string
---@field DeactivateEventName string
---@field bAttachToHeadMesh boolean
FWeaponEffectConfig = {}


---@class UBackpackTriggerWeaponEventAbilityHandle: UBackpackWeaponAbilityHandle
---@field WeaponEffectConfigList ULuaArrayHelper<FWeaponEffectConfig>
---@field CurrentEventName string
---@field CustomComponentTag string
---@field DeactivateAbilityIDs ULuaArrayHelper<number>
local UBackpackTriggerWeaponEventAbilityHandle = {}

---@param InEventName string
---@param InWeapon ASTExtraWeapon
function UBackpackTriggerWeaponEventAbilityHandle:OnTriggerWeaponEvent(InEventName, InWeapon) end

---@param InEventName string
---@param InWeapon ASTExtraWeapon
---@return boolean
function UBackpackTriggerWeaponEventAbilityHandle:CanTriggerWeaponEvent(InEventName, InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackTriggerWeaponEventAbilityHandle:GetParticleSystemConfig(InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackTriggerWeaponEventAbilityHandle:CollectResources(InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackTriggerWeaponEventAbilityHandle:ActiveParticles(InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackTriggerWeaponEventAbilityHandle:DeactivateParticles(InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackTriggerWeaponEventAbilityHandle:ActivateSound(InWeapon) end

---@param InWeapon ASTExtraWeapon
function UBackpackTriggerWeaponEventAbilityHandle:DeactivateSound(InWeapon) end

---@param AsyncLoadID number
---@param LoadAvatar UAvatarComponent
function UBackpackTriggerWeaponEventAbilityHandle:OnAvatarLoadingFinished(AsyncLoadID, LoadAvatar) end
