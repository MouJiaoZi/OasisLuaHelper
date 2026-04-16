---@meta

---@class EPESkillScreenParticleTargetType
---@field E_PESKILL_ScreenParticleTarget_Self number @//*UGC* 释放者自身
---@field E_PESKILL_ScreenParticleTarget_SelectTargets number @//*UGC* 选中目标
EPESkillScreenParticleTargetType = {}


---@class UPESkillTask_ScreenParticle: UPESkillTaskPeriod
---@field ParticleType EScreenParticleType
---@field LinearFadeParameter FScreenAppearanceLinearFadeParameter
---@field BreathFadeParameter FScreenAppearanceBreathFadeParameter
---@field BreathRotationParameter FScreenAppearanceBreathRotationParameter
---@field VerticalFlowParameter FScreenAppearanceVerticalFlowParameter
---@field CustomParameter FScreenAppearanceCustomParameter
---@field ScreenParticleTarget EPESkillScreenParticleTargetType
---@field DestroyOnTaskEnd boolean
---@field LinearFadeDefaultMainTex FSoftObjectPath
---@field BreathFadeDefaultMainTex FSoftObjectPath
---@field BreathRotationDefaultMainTex FSoftObjectPath
---@field VerticalFlowDefaultMainTex FSoftObjectPath
local UPESkillTask_ScreenParticle = {}
