---@meta

---@class FCachedAkResource
---@field AkPlayID number
---@field bContinuous boolean
---@field bSoundUseSwitch boolean
---@field SwitchGroup string
---@field SwitchState string
---@field OpenParachuteParticleType EOpenParachuteParticleType
FCachedAkResource = {}


---@class UAvatarBehaviorFeature_OpenParachuteParticle: UAvatarBehaviorFeature
---@field OpenParachuteParticlesParam FOpenParachuteParticlesParam
---@field ParticleSystemComponents ULuaArrayHelper<UParticleSystemComponent>
---@field CachedAkComponents ULuaArrayHelper<FCachedAkResource>
local UAvatarBehaviorFeature_OpenParachuteParticle = {}

function UAvatarBehaviorFeature_OpenParachuteParticle:ReleaseBehaviorFeature() end

---@param bReset boolean
---@param InOpenParachuteParticleType EOpenParachuteParticleType
function UAvatarBehaviorFeature_OpenParachuteParticle:ActiveParticles(bReset, InOpenParachuteParticleType) end

---@param bReset boolean
---@param InOpenParachuteParticleType EOpenParachuteParticleType
function UAvatarBehaviorFeature_OpenParachuteParticle:DoActiveParticles(bReset, InOpenParachuteParticleType) end

function UAvatarBehaviorFeature_OpenParachuteParticle:DeactiveParticles() end

---@param bContinuous boolean
---@param InOpenParachuteParticleType EOpenParachuteParticleType
function UAvatarBehaviorFeature_OpenParachuteParticle:ActiveSounds(bContinuous, InOpenParachuteParticleType) end

---@param bContinuous boolean
---@param InOpenParachuteParticleType EOpenParachuteParticleType
function UAvatarBehaviorFeature_OpenParachuteParticle:DoActiveSounds(bContinuous, InOpenParachuteParticleType) end

---@param bContinuous boolean
---@param InOpenParachuteParticleType EOpenParachuteParticleType
function UAvatarBehaviorFeature_OpenParachuteParticle:DeactivateSounds(bContinuous, InOpenParachuteParticleType) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UAvatarBehaviorFeature_OpenParachuteParticle:OnParachuteStateChanged(PreState, CurState) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UAvatarBehaviorFeature_OpenParachuteParticle:BP_OnParachuteStateChanged(PreState, CurState) end

---@param InSlotType number
---@param IsEquipped boolean
function UAvatarBehaviorFeature_OpenParachuteParticle:OnAvatarEquipped(InSlotType, IsEquipped) end

---@param InPlayerController ASTExtraPlayerController
function UAvatarBehaviorFeature_OpenParachuteParticle:OnPlayerEnterPlane(InPlayerController) end

---@param LiveState ExtraPlayerLiveState
---@param SelfPlayerState APlayerState
function UAvatarBehaviorFeature_OpenParachuteParticle:OnPlayerStateChange(LiveState, SelfPlayerState) end
