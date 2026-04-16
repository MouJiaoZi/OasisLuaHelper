---@meta

---@class EAISkillActUnlockType
---@field HealthPercent number @血量百分比
EAISkillActUnlockType = {}


---@class FAISkillActUnlockConfig
---@field UnlockType EAISkillActUnlockType
---@field ValueArithmeticOperation EArithmeticKeyOperation
---@field FloatValue number
FAISkillActUnlockConfig = {}


---SkillAct decorator node.
---@class UBTDecorator_SkillAct: UBTDecorator
---@field SkillActName string
---@field CoolDownTime number
---@field SkillActWeight number
---@field bShareSkillActCoolDown boolean
---@field bNoCoolDownWhenFailed boolean
---@field bCoolDownWhenInit boolean
---@field UnlockConfigList ULuaArrayHelper<FAISkillActUnlockConfig>
---@field ExclusiveLastSkillActs ULuaArrayHelper<string>
local UBTDecorator_SkillAct = {}
