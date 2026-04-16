---@meta

---@class UGameplayTask_PlayUGCScreenAppearance: UUAEGameplayTask
---@field GameplayTask_AppearanceTargets ULuaArrayHelper<ACharacter>
---@field ParticleConfig FPEBuffScreenParticleConfig
---@field TaskDuration number
---@field ParticleName string
---@field ProviderClassPath FSoftClassPath
---@field ScreenParticleProviderPaths ULuaArrayHelper<FSoftClassPath>
---@field bNotNeedCheckViewSelf boolean
local UGameplayTask_PlayUGCScreenAppearance = {}

function UGameplayTask_PlayUGCScreenAppearance:PlayScreenParticleWithTargets() end

---@param Target ACharacter
function UGameplayTask_PlayUGCScreenAppearance:PlayScreenParticleWithType(Target) end
