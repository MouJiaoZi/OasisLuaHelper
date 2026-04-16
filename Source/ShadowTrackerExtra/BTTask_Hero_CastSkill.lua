---@meta

---@class EHeroAISkillType
---@field EHeroAISkillType_None number @None
---@field EHeroAISkillType_Skill1 number @一技能
---@field EHeroAISkillType_Skill2 number @二技能
---@field EHeroAISkillType_Ultimate number @大招
---@field EHeroAISkillType_BackCity number @回城
---@field EHeroAISkillType_JumpTwice number @多段跳
EHeroAISkillType = {}


---@class ESkillValidationType
---@field ESkillValidationType_None number @None
---@field ESkillValidationType_Trace number @射线检测
---@field ESkillValidationType_Projectile number @抛物线检测
ESkillValidationType = {}


---@class ESkillValidCanCastType
---@field ESkillValidCanCastType_Valid number @有效则释放
---@field ESkillValidCanCastType_AlwaysCast number @无视有效性
ESkillValidCanCastType = {}


---@class EAIProjectileModeType
---@field EAIProjectileModeType_None number @None
---@field EAIProjectileModeType_LowThrow number @低抛
---@field EAIProjectileModeType_HighThrow number @高抛
---@field EAIProjectileModeType_OnlySetDirection number @平射
EAIProjectileModeType = {}


---@class UBTTask_Hero_CastSkill: UBTTaskNode
---@field bEnableReportAIDebugPanel boolean
---@field HeroGameModeType EHeroGameModeType
---@field AISkillType EHeroAISkillType
---@field SkillTarget FBlackboardKeySelector
---@field bIgnoreCD boolean
---@field bEnableSkillTimeOut boolean
---@field CastSkillTimeOut number
---@field bEndSkillWhenTimeout boolean
---@field bEnableSkillValidation boolean
---@field SkillValidationType ESkillValidationType
---@field SkillValidCanCastType ESkillValidCanCastType
---@field AIProjectileModeType EAIProjectileModeType
---@field bEnableSkillHitRate boolean
---@field SkillHitRate number
---@field SkillMissOffsetDistance number
---@field bSetSkillTransform boolean
---@field SkillPosOffsetX number
---@field SkillPosOffsetY number
---@field SkillPosOffsetZ number
---@field bEnablePhaseTwo boolean
---@field bEnablePowerUpRotation boolean
---@field EnterPhaseTwoTime number
---@field EnterPhaseRandomDeviation number
---@field MultiPhaseTimeGap number
local UBTTask_Hero_CastSkill = {}
