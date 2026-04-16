---@meta

---@class FNotPlayParticleCondition
---@field Role ENetRole
---@field RenderQuality ERenderQuality
FNotPlayParticleCondition = {}


---@class UAnimNotify_PlayParticleEffectByCondition: UAnimNotify_PlayParticleEffect
---@field NotPlayConditions ULuaArrayHelper<FNotPlayParticleCondition>
local UAnimNotify_PlayParticleEffectByCondition = {}
