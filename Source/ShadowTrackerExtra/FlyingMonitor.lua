---@meta

---@class FFlyingSkillLimit
---@field ImportantMaxSpeed number @配置技能ID对应的最大速度 当前Fly状态的MaxSpeed默认是60000，直接使用会失去校验意义
---@field SkillMaxDistance number @技能过程中的最大距离控制 冲刺技能只在飞行状态冲刺0.2秒左右，可以用距离控制
---@field SkillMaxDistanceBack number @技能过程中的第二档最大距离 用于判断是否要拉扯回技能原点
---@field SkillReportDist number @技能距离上报的阈值
---@field bPullBackWhileReach boolean @是否在触发时拉扯到合法的位置
FFlyingSkillLimit = {}


---监控玩家的Flying状态 目前主要针对超体的闪电冲刺技能 UID是一般不会变的。闪电的冲刺技能UID是566 SkillLimits=((566, (ImportantMaxSpeed=10000,SkillMaxDistance=2500)),(190, (ImportantMaxSpeed=1800,SkillMaxDistance=5000)),(625, (ImportantMaxSpeed=0,SkillMaxDistance=6000)))
---@class FFlyingMonitor
---@field bIsOpen boolean @策略开关
---@field LogTokenInit number @单个玩家只输出有限次日志
---@field ServerTimeAddit number @允许的服务器累积时间与客户端累积时间的误差
---@field CheckDistanceThres number @允许的计算距离时的距离误差
---@field PunishTimeBias number @处罚时间
---@field CheckInterval number @检查的时间分段
---@field SkillLimits ULuaMapHelper<number, FFlyingSkillLimit> @技能对应的配置
FFlyingMonitor = {}
