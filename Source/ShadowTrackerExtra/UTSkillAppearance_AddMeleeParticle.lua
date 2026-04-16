---@meta

---@class FUTSkillAppearance_MeleeParticle
FUTSkillAppearance_MeleeParticle = {}


---近战受击特效：根据攻击动作旋转
---@class UUTSkillAppearance_AddMeleeParticle: UUTSkillAppearance_MeleeAttackBase
---@field NeedRotateParFromAnim boolean
---@field ParticlePlayOnlyOnAutonomous boolean
---@field AudioPlayOnlyOnAutonomous boolean
---@field CenterTraceLength number
---@field MaxHitValidTime number
---@field AttackDirRotOffset FRotator
---@field ParScale FVector
---@field IsShowDebug boolean
local UUTSkillAppearance_AddMeleeParticle = {}
