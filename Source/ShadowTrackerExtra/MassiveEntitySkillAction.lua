---@meta

---@class FMassiveEntitySkillParam
---@field StartOffset FVector
---@field DeleyTime number
FMassiveEntitySkillParam = {}


---僵尸技能基类 僵尸技能为简单的攻击、动画等
---@class UMassiveEntitySkillAction: UObject
---@field SkillDescString string
---@field SkillID number
---@field SkillTime number
---@field DelayTime number
---@field bInitParamWithAnimIndex boolean
---@field bFaceToEnemy boolean
---@field AnimConfigMap ULuaMapHelper<number, FMassiveEntitySkillParam>
local UMassiveEntitySkillAction = {}
