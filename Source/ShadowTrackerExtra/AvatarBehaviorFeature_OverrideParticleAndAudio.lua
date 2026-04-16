---@meta

---@class FOverrideParticleConfig
---@field ParticleKey UParticleSystem
---@field OverrideParticle UParticleSystem
FOverrideParticleConfig = {}


---@class FOverrideAudioConfig
---@field AudioKey UAkAudioEvent
---@field OverrideAudio UAkAudioEvent
FOverrideAudioConfig = {}


---@class UAvatarBehaviorFeature_OverrideParticleAndAudio: UAvatarBehaviorFeature_UtilFuncLayer
---@field OverrideParticleConfigList ULuaArrayHelper<FOverrideParticleConfig>
---@field OverrideParticleConfigMap ULuaMapHelper<UParticleSystem, UParticleSystem>
---@field OverrideAudioConfigList ULuaArrayHelper<FOverrideAudioConfig>
---@field OverrideAudioConfigMap ULuaMapHelper<UAkAudioEvent, UAkAudioEvent>
local UAvatarBehaviorFeature_OverrideParticleAndAudio = {}

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarBehaviorFeature_OverrideParticleAndAudio:OnCharacterAvatarLoadFinishedEvent(AsyncLoadID, LoadEventFrom) end

---@param InCharacter ASTExtraBaseCharacter
---@param PSTemplateKey UParticleSystem
---@param OverrideTemplate UParticleSystem
function UAvatarBehaviorFeature_OverrideParticleAndAudio:OnEventOverrideParticleRequest(InCharacter, PSTemplateKey, OverrideTemplate) end

---@param InCharacter ASTExtraBaseCharacter
---@param TemplateKey UAkAudioEvent
---@param OverrideTemplate UAkAudioEvent
function UAvatarBehaviorFeature_OverrideParticleAndAudio:OnEventOverrideAudioRequest(InCharacter, TemplateKey, OverrideTemplate) end
