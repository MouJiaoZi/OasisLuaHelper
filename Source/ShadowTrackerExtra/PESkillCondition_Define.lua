---@meta

---@class EPESkillGMPEventType
---@field AttributeChanged number @属性变化
---@field PawnPreTakeDamage number @Pawn受到伤害前
---@field PawnPostTakeDamage number @Pawn受到伤害后
---@field PawnKilled number @Pawn被击杀
---@field MobPreTakeDamage number @怪受到伤害前
---@field MobPostTakeDamage number @怪受到伤害后
---@field MobKilled number @怪被击杀
---@field SkillCast number @释放技能（包括被动啊）
---@field StateChanged number @状态改变（暂无法指定状态)
---@field WeaponReload number @武器换弹
---@field WeaponFire number @武器开火
---@field WeaponStopFire number @武器停止开火
---@field WeaponSwitch number @武器切换武器
---@field WeaponScopeIn number @武器开镜
---@field WeaponScopeOut number @武器关镜
EPESkillGMPEventType = {}


---@class FPESkillCounterConfig
---@field GMPEventTypes ULuaArrayHelper<EPESkillGMPEventType> @GMP事件列表
---@field StepValue number @每次触发增加的步进值
---@field TargetValue number @计数器达到该值时条件满足
---@field bResetOnTrigger boolean @条件满足后是否重置计数器
FPESkillCounterConfig = {}
