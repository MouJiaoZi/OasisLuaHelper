---@meta

---@class FUAESkillAction_AddAvatarParticle_Data
FUAESkillAction_AddAvatarParticle_Data = {}


---@class UUAESkillAction_AddAvatarParticle: UUAESkillAction
---@field ParticleCompTagName string
---@field AttachSocketName string
---@field LocationPosition FVector
---@field LocationRotation FRotator
---@field LocationScale FVector
---@field FPPScale FVector
---@field FPPLocationPosition FVector
---@field bPhaseFinishRemove boolean
---@field bUndoRemove boolean
local UUAESkillAction_AddAvatarParticle = {}

---@param ParticleSystemComponent UParticleSystemComponent
function UUAESkillAction_AddAvatarParticle:OnParticleSystemFinished(ParticleSystemComponent) end
