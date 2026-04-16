---@meta

---抛体动作基类
---@class UProjectileActionEffectBase: UProjectileEffectBase
---@field ActionTriggerType EActionTriggerType
---@field FilterContainer FProjectileFilterContainer
---@field ActionDelayTime FFloatGetter
local UProjectileActionEffectBase = {}

---Event
---执行动作
---生效范围：SC
---@param TargetData FPESkillTargetData @条件触发时的数据
function UProjectileActionEffectBase:ApplyActionEffect(TargetData) end

---Event
---动作初始化接口
---生效范围：SC
---@param InOwnerActor AActor @抛体
function UProjectileActionEffectBase:InitBP(InOwnerActor) end

---Event
---动作发射时调用的参数
---生效范围：SC
---@param Params FProjectileParams @发射参数
function UProjectileActionEffectBase:ApplyParamsBP(Params) end

---@param TargetData FPESkillTargetData
---@return boolean
function UProjectileActionEffectBase:CanApply(TargetData) end

---@param NewDamage number
function UProjectileActionEffectBase:SetDamage(NewDamage) end
