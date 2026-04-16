---@meta

---@class UPESkillCondition_EventCounter: UPESkillConditionBase
---@field TargetCount FFloatGetter @激活所需计数
---@field StepValue FFloatGetter @每次触发的步进值
---@field TimeThreshold FFloatGetter @计数有效时间
---@field bResetOnTrigger boolean @激活后是否重置
---@field bEnableDebugLog boolean @是否启用调试日志
local UPESkillCondition_EventCounter = {}
