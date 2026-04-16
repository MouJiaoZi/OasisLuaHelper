---@meta

---活跃任务线周重置类型枚举
---@class EUGCTaskCustomWeekResetType
---@field Monday number @周一
---@field Tuesday number @周二
---@field Wednesday number @周三
---@field Thursday number @周四
---@field Friday number @周五
---@field Saturday number @周六
---@field Sunday number @周日
EUGCTaskCustomWeekResetType = {}


---任务线奖励状态枚举
---@class EUGCTaskLineAwardState
---@field Lock number @未解锁
---@field NotClaimed number @未领取
---@field HasClaimed number @已领取
EUGCTaskLineAwardState = {}


---任务线类型枚举
---@class EUGCTaskLineType
---@field LevelTaskLine number @成长型
---@field PercentTaskLine number @活跃型
EUGCTaskLineType = {}


---任务线重置类型枚举
---@class EUGCPercentTaskResetType
---@field NotReset number @不重置
---@field DailyReset number @每日重置
---@field WeeklyReset number @每周重置
EUGCPercentTaskResetType = {}


---任务状态枚举
---@class EUGCTaskState
---@field Lock number @未解锁
---@field Incomplete number @未完成
---@field NotClaimed number @未领取
---@field HasClaimed number @已领取
---@field Expired number @已过期
---@field NotBegin number @未开始
EUGCTaskState = {}


---任务结构体
---@class FUGCTaskConfig
---@field TaskID number @任务ID
---@field TaskName string @任务名称
---@field TaskDesc string @任务说明
---@field TaskAwardList ULuaArrayHelper<FUGCRankingListAwardItem> @任务奖励列表
---@field BeginDate FDateTime @开始时间
---@field EndDate FDateTime @结束时间
---@field IsShowOutDate boolean @过期后是否显示
---@field IsShowGotoBtn boolean @是否显示任务的前往按钮
FUGCTaskConfig = {}


---活跃任务线奖励结构体
---@class FUGCPercentTaskAward
---@field Percent number @活跃度
---@field ItemList ULuaArrayHelper<FUGCRankingListAwardItem> @奖励道具列表
FUGCPercentTaskAward = {}


---成长任务线配置结构体
---@class FUGCLevelTaskLineConfig
---@field Level number @等级
---@field TaskIDList ULuaArrayHelper<number> @任务ID列表
FUGCLevelTaskLineConfig = {}


---活跃任务线配置结构体
---@class FUGCPercentTaskLineConfig
---@field PercentTaskID number @任务ID
---@field Priority number @任务排序优先级
FUGCPercentTaskLineConfig = {}


---任务线配置结构体
---@class FUGCTaskLineConfig
---@field TaskLineType EUGCTaskLineType @任务线类型
---@field TaskLineName string @任务线名称
---@field LevelTaskLineConfig ULuaArrayHelper<FUGCLevelTaskLineConfig> @成长任务线配置
---@field PercentTaskLineConfig ULuaArrayHelper<FUGCPercentTaskLineConfig> @活跃任务线配置
---@field LevelTaskPropertyName string @成长等级属性名称
---@field PercentAwardList ULuaArrayHelper<FUGCPercentTaskAward> @进度奖励列表
---@field ResetType EUGCPercentTaskResetType @活跃任务线重置类型
---@field WeeklyResetTime EUGCTaskCustomWeekResetType @活跃任务线周重置类型
---@field DailyResetTime string @活跃任务线重置时间
---@field ItemID number @活跃度道具ID
---@field BeginDate FDateTime @开始时间
---@field EndDate FDateTime @结束时间
FUGCTaskLineConfig = {}


---@class UTaskManagerGamePartConfig: UUGCGamePartConfig
---@field TaskLineConfigList ULuaArrayHelper<FUGCTaskLineConfig>
---@field TaskConfigList ULuaArrayHelper<FUGCTaskConfig>
local UTaskManagerGamePartConfig = {}
