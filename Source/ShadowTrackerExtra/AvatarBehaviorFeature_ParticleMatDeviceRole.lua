---@meta

---@class UAvatarBehaviorFeature_ParticleMatDeviceRole: UAvatarBehaviorFeature
---@field ParticleMatDeviceRoleBehavior FParticleMatDeviceRoleBehaviorParam
local UAvatarBehaviorFeature_ParticleMatDeviceRole = {}

---@param InParticleTemplate UParticleSystem
---@param InParticleSlotName string
---@param InEmitterMatList ULuaArrayHelper<UMaterialInterface>
function UAvatarBehaviorFeature_ParticleMatDeviceRole:TryApplyEmitterMatList(InParticleTemplate, InParticleSlotName, InEmitterMatList) end
