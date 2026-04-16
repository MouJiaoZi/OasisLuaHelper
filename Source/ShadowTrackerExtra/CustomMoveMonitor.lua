---@meta

---@class ECustomSkillDelayType
---@field EDelayNone number
---@field EDelayPunish number
---@field EDelayAlways number
ECustomSkillDelayType = {}


---@class FCustomSkillLimit
---@field ImportantMaxSpeed number @配置技能ID对应的最大速度
---@field SkillMaxDistance number @技能过程中的最大距离控制
---@field bPullBackWhileReach boolean @是否在触发时拉扯到合法的位置
---@field DelayType ECustomSkillDelayType @是否在技能结束后等待Custom状态退出 部分技能结束后依然需要策略进行Custom移动监控时配置
---@field ForceEndCustomTimeWithDelay number @如果启用了退出等待的话，多久之后强制清空Custom
FCustomSkillLimit = {}


---监控玩家的Custom移动状态
---@class FCustomMoveMonitor
---@field bIsOpen boolean @策略开关
---@field ServerTimeAddit number @允许的服务器累积时间与客户端累积时间的误差
---@field PunishTimeBias number @处罚时间
---@field CheckInterval number @检查的间隔
---@field CheckDistanceThres number @允许的计算距离时的距离误差
---@field LogToken number @控制日志输出次数
---@field SkillLimits ULuaMapHelper<number, FCustomSkillLimit> @技能对应的配置
FCustomMoveMonitor = {}
