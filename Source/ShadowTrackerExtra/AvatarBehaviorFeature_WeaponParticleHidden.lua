---@meta

---c
---@class UAvatarBehaviorFeature_WeaponParticleHidden: UAvatarBehaviorFeature
---@field ParticleHiddenBehaviorParam FWeaponParticleHiddenBehaviorParam
---@field ConcernObjList ULuaArrayHelper<FAvatarWeakObjPtr>
---@field bBuffStateDirty boolean
---@field bConcernCameraModeChange boolean
---@field bConcernStateChange boolean
---@field bConcernBuffChange boolean
---@field TickCounter number
local UAvatarBehaviorFeature_WeaponParticleHidden = {}

---@param InCallTag string
function UAvatarBehaviorFeature_WeaponParticleHidden:ReMatchParticleHiddenState(InCallTag) end

---@param InParticleSystem UParticleSystem
---@param InSocketName string
---@param InIsHidden boolean
---@return boolean
function UAvatarBehaviorFeature_WeaponParticleHidden:SetParticleHidden(InParticleSystem, InSocketName, InIsHidden) end

---@param InParticleSystem UParticleSystem
---@param InBuffName string
---@param InCurParticleSelector FParticleHiddenWeaponStateSelector
---@return boolean
function UAvatarBehaviorFeature_WeaponParticleHidden:IsParticleInBuffByFastShape(InParticleSystem, InBuffName, InCurParticleSelector) end

---@param PawnState EPawnState
function UAvatarBehaviorFeature_WeaponParticleHidden:HandleStateChanged(PawnState) end

---@param BuffName string
function UAvatarBehaviorFeature_WeaponParticleHidden:OnCharBuffAdd(BuffName) end

---@param BuffName string
function UAvatarBehaviorFeature_WeaponParticleHidden:OnCharBuffRemove(BuffName) end
