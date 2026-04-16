---@meta

---@class UAvatarBehaviorFeature_ParticleReplaceDeviceRole: UAvatarBehaviorFeature
---@field ParticleReplaceDeviceRoleBehavior FParticleReplaceDeviceRoleBehaviorParam
---@field CachedParticleResRef ULuaMapHelper<number, UParticleSystem>
---@field bConcernCameraModeChange boolean
---@field bConcernStateChange boolean
---@field bOverride_HandleCameraModeChange boolean
local UAvatarBehaviorFeature_ParticleReplaceDeviceRole = {}

---@param InNewCameraMode EPlayerCameraMode
function UAvatarBehaviorFeature_ParticleReplaceDeviceRole:HandleCameraModeChange(InNewCameraMode) end

---@param FromParticleTemplate UParticleSystem
---@param InParticleSocket string
---@param ToParticleTemplate UParticleSystem
---@param OriginParticleTemplate UParticleSystem
---@param index number
function UAvatarBehaviorFeature_ParticleReplaceDeviceRole:TryReplaceParticleWithTemplate(FromParticleTemplate, InParticleSocket, ToParticleTemplate, OriginParticleTemplate, index) end

function UAvatarBehaviorFeature_ParticleReplaceDeviceRole:TryReplaceParticle() end

---@param PawnState EPawnState
function UAvatarBehaviorFeature_ParticleReplaceDeviceRole:HandleStateChanged(PawnState) end

---@param InNewCameraMode EPlayerCameraMode
function UAvatarBehaviorFeature_ParticleReplaceDeviceRole:BP_HandleCameraModeChange(InNewCameraMode) end
