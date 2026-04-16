---@meta

---@class UAvatarBehaviorFeature_WeaponParticleReplace: UAvatarBehaviorFeature
---@field ParticleReplaceDeviceRoleBehavior FParticleReplaceDeviceRoleBehaviorParam
---@field CachedParticleResRef ULuaMapHelper<number, UParticleSystem>
---@field bConcernCameraModeChange boolean
---@field bConcernStateChange boolean
---@field bOverride_HandleCameraModeChange boolean
local UAvatarBehaviorFeature_WeaponParticleReplace = {}

---@param InNewCameraMode EPlayerCameraMode
function UAvatarBehaviorFeature_WeaponParticleReplace:HandleCameraModeChange(InNewCameraMode) end

---@param FromParticleTemplate UParticleSystem
---@param InParticleSocket string
---@param ToParticleTemplate UParticleSystem
---@param OriginParticleTemplate UParticleSystem
---@param index number
function UAvatarBehaviorFeature_WeaponParticleReplace:TryReplaceParticleWithTemplate(FromParticleTemplate, InParticleSocket, ToParticleTemplate, OriginParticleTemplate, index) end

function UAvatarBehaviorFeature_WeaponParticleReplace:TryReplaceParticle() end

---@param PawnState EPawnState
function UAvatarBehaviorFeature_WeaponParticleReplace:HandleStateChanged(PawnState) end

---@param InNewCameraMode EPlayerCameraMode
function UAvatarBehaviorFeature_WeaponParticleReplace:BP_HandleCameraModeChange(InNewCameraMode) end
