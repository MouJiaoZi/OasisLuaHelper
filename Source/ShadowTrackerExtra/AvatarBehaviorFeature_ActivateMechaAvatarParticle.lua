---@meta

---@class FMechaAvatarParticleItem
---@field Particle UParticleSystem
---@field SocketName string
---@field Transform FTransform
FMechaAvatarParticleItem = {}


---@class UAvatarBehaviorFeature_ActivateMechaAvatarParticle: UAvatarBehaviorFeature
---@field FireParticleConfigList ULuaArrayHelper<FMechaAvatarParticleItem>
---@field OverLoadParticleConfigList ULuaArrayHelper<FMechaAvatarParticleItem>
---@field ActivateFireParticleEventName string
---@field DeactivateFireParticleEventName string
---@field ActivateOverLoadParticleEventName string
---@field DeactivateOverLoadParticleEventName string
local UAvatarBehaviorFeature_ActivateMechaAvatarParticle = {}

function UAvatarBehaviorFeature_ActivateMechaAvatarParticle:BP_PostAvatarRender() end

---@param InEventName string
---@param InCharacter ASTExtraPlayerCharacter
function UAvatarBehaviorFeature_ActivateMechaAvatarParticle:OnTriggerPlayerCharacterEvent(InEventName, InCharacter) end
