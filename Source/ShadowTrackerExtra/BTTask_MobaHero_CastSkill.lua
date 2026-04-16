---@meta

---@class EMobaHeroAISkillType
---@field EMobaHeroAISkillType_None number @None
---@field EMobaHeroAISkillType_Skill1 number @一技能
---@field EMobaHeroAISkillType_Skill2 number @二技能
---@field EMobaHeroAISkillType_Ultimate number @大招
---@field EMobaHeroAISkillType_BackCity number @回城
---@field EMobaHeroAISkillType_JumpTwice number @多段跳
EMobaHeroAISkillType = {}


---@class UBTTask_MobaHero_CastSkill: UBTTaskNode
---@field bEnableSubtreeParamOverride boolean
---@field AISkillType EMobaHeroAISkillType
---@field SkillTarget FBlackboardKeySelector
---@field bSetSkillTransform boolean
---@field bIgnoreCD boolean
---@field bEnableSkillTimeOut boolean
---@field CastSkillTimeOut number
---@field bEnablePhaseTwo boolean
---@field bEnablePowerUpRotation boolean
---@field EnterPhaseTwoTime number
---@field EnterPhaseRandomDeviation number
---@field bEnableJumpTwice boolean
---@field EnterJumpTwiceTime number
local UBTTask_MobaHero_CastSkill = {}
