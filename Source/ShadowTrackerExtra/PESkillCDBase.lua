---@meta

---@class EPESkillCDType
---@field CDT_NONE number @空
---@field CDT_Timer number @计时
---@field CDT_Energy number @能量
EPESkillCDType = {}


---技能CD信息
---@class FPESkillCDWapper
---@field CDType EPESkillCDType @技能CD类型
---@field CDRecoveryTime number @CD/能量充能时间
---@field AllowRecoveryDuringActivation boolean @技能激活期间恢复CD/能量
---@field MaxLayer number @最大充能次数
---@field CDEnergyConsume number @持续消耗型每秒扣除速率，如果不选energy，就是直接扣完一层的所有能量
---@field OverwriteCDEnergyConsume number
---@field AllowConsumeMinEnergy number @能开始消耗能量的最小百分比
---@field CurLayer number
---@field TargetCDServerTime number
---@field BeginTickConsume boolean
---@field MaxEnergy number
---@field CurEnergy number
---@field RecoverRate number
FPESkillCDWapper = {}


---@class FOnCDStateChange : ULuaSingleDelegate
FOnCDStateChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCDStateChange:Bind(Callback, Obj) end

---执行委托
function FOnCDStateChange:Execute() end
