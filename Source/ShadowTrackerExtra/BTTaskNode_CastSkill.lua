---@meta

---@class UBTTaskNode_CastSkill: UBTTask_BlackboardBase
---@field SkillIndex number
---@field SkillClass AUTSkill
---@field bSkillIndexFromBlackboard boolean
---@field SkillIndexBlackboardKey FBlackboardKeySelector
---@field SkillType UTSkillEventType
---@field UseSkillFinishIsForceReturnSucceeded boolean
---@field UseSkillForceReturnSucceeded boolean
---@field bUseAIExclusiveSkill boolean
---@field bCanCastWithoutTarget boolean @当没有敌方目标是是否也能释放技能
---@field bInterrupteSkillWhenFalling boolean
---@field CastSkillTimeOut number
local UBTTaskNode_CastSkill = {}
