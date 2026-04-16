---@meta

---UGC任务系统全局管理器
---@class TaskManager:AUniversalTaskMgr
local TaskManager = {}

---获取任务线配置
---生效范围：客户端&&服务端
---@param TaskLineName string
---@return FUGCTaskLineConfig
function TaskManager:GetTaskLineConfig(TaskLineName) end

---获取任务配置
---生效范围：客户端&&服务端
---@param TaskID number
---@return FUGCTaskConfig
function TaskManager:GetTaskConfig(TaskID) end

---获取任务类型
---生效范围：客户端&&服务端
---@param TaskID number
---@return EUGCTaskType
function TaskManager:GetTaskType(TaskID) end

---获取任务目标进度
---生效范围：客户端&&服务端
---@param TaskID number
---@return string
function TaskManager:GetTaskDesc(TaskID) end

---获取任务目标进度
---生效范围：客户端&&服务端
---@param TaskID number
---@return number
function TaskManager:GetTaskTarget(TaskID) end

---通用更新任务进度
---生效范围：服务端
---@param TaskIndex FUGCTaskIndex
---@param PlayerController Controller
---@param Progress number
---@param IsIncremental boolean
function TaskManager:UpdateTaskProgress(TaskIndex, PlayerController, Progress, IsIncremental) end

---获取活跃任务完成后获得的活跃度数量
---生效范围：客户端&&服务端
---@param TaskLineName string
---@param TaskID number
---@return number
function TaskManager:GetPercentTaskPercent(TaskLineName, TaskID) end