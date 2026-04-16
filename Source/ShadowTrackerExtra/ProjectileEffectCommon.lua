---@meta

---抛体效果包装器
---@class FProjectileEffectWrapper
---@field EventCondition EProjectileEffectApplyCondition
---@field ApplyInterval number
---@field IntervalTargetTime number
---@field Effects ULuaArrayHelper<UProjectileActionEffectBase>
FProjectileEffectWrapper = {}


---延迟效果动作记录
---@class FDelayEffectActionRecord
---@field TargetTime number
---@field TargetData FPESkillTargetData
FDelayEffectActionRecord = {}


---抛体修改器复制数据
---@class FProjectileModifierRepData
FProjectileModifierRepData = {}
