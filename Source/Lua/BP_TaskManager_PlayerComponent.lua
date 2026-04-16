---@meta

---UGC任务系统玩家组件
---@class TaskPlayerComponent:UUniversalTaskController
local TaskPlayerComponent = {}

---玩家排行榜数据
---@class UGCTaskIndex
---@field TaskID number @任务ID
---@field TaskLineName string @任务线名称
---@field PercentTaskIndex number @活跃任务索引
---@field LevelTaskLevelIndex number @成长任务等级索引
---@field LevelTaskIndex number @成长任务索引
local FUGCTaskIndex = {}

---生效范围：客户端
---任务线奖励状态变更回调
---@param TaskLineName string @任务线名称
---@param Index number @奖励索引
TaskPlayerComponent.OnTaskLineAwardInfoChangeDelegate = nil

---生效范围：客户端
---任务数据变更回调
---@param Index UGCTaskIndex @榜单周期
TaskPlayerComponent.OnTaskInfoChangeDelegate = nil

---生效范围：客户端&服务端
---任务线进度变更回调
---@param TaskLineName string @任务线名称
TaskPlayerComponent.OnTaskLineProgressChangeDelegate = nil

---重置活跃任务线
---生效范围：服务端
---@param TaskLineName string
function TaskPlayerComponent:ResetPercentTaskLine(TaskLineName) end

---领取成长任务奖励
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param LevelIndex number
---@param TaskIndex number
function TaskPlayerComponent:ClaimLevelTaskAward(TaskLineName, LevelIndex, TaskIndex) end

---领取活跃任务奖励
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param TaskIndex number
function TaskPlayerComponent:ClaimPercentTaskAward(TaskLineName, TaskIndex) end

---获取任务线进度
---生效范围：客户端&&服务端
---@param TaskLineName string
---@return number
function TaskPlayerComponent:GetTaskLineProgress(TaskLineName) end

---获取成长任务线的任务信息列表
---生效范围：客户端&&服务端
---@param TaskLineName string
---@return FUGCLevelTaskPlayerData[]
function TaskPlayerComponent:GetLevelTaskInfoList(TaskLineName) end

---获取活跃任务线的任务信息列表
---生效范围：客户端&&服务端
---@param TaskLineName string
---@return FUGCTaskInfo[]
function TaskPlayerComponent:GetPercentTaskInfoList(TaskLineName) end

---获取活跃任务线的奖励状态列表
---生效范围：客户端&&服务端
---@param TaskLineName string
---@return table
function TaskPlayerComponent:GetPercentTaskLineAwardStateList(TaskLineName) end

---获取任务线奖励状态
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param Index number
---@return EUGCTaskLineAwardState
function TaskPlayerComponent:GetTaskLineAwardState(TaskLineName, Index) end

---领取任务线的全部奖励
---生效范围：客户端&&服务端
---@param TaskLineName string
function TaskPlayerComponent:ClaimAllAward(TaskLineName) end

---领取任务线奖励
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param Index number
function TaskPlayerComponent:ClaimTaskLineAward(TaskLineName, Index) end

---设置任务线进度
---生效范围：服务端
---@param TaskLineName string
---@param Progress number
function TaskPlayerComponent:SetTaskLineProgress(TaskLineName, Progress) end

---获取活跃任务进度
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param Index number
---@return number
function TaskPlayerComponent:GetPercentTaskProgress(TaskLineName, Index) end

---获取活跃任务状态
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param Index number
---@return EUGCTaskState
function TaskPlayerComponent:GetPercentTaskState(TaskLineName, Index) end

---获取成长任务进度
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param LevelIndex number
---@param TaskIndex number
---@return number
function TaskPlayerComponent:GetLevelTaskProgress(TaskLineName, LevelIndex, TaskIndex) end

---获取成长任务状态
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param LevelIndex number
---@param TaskIndex number
---@return EUGCTaskState
function TaskPlayerComponent:GetLevelTaskState(TaskLineName, LevelIndex, TaskIndex) end

---设置任务线和任务线下所有任务的开始/结束时间
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param BeginTime number
---@param EndTime number
function TaskPlayerComponent:SetTaskLineTime(TaskLineName, BeginTime, EndTime) end