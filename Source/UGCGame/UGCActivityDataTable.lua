---@meta

---@class EUGCActivityTaskResetType
---@field DailyReset number @每日重置
---@field WeeklyReset number @每周重置
---@field MonthlyReset number @每月重置
---@field NotReset number @一次性
EUGCActivityTaskResetType = {}


---@class EUGCActivityType
---@field Task number @任务
---@field SignIn number @签到
EUGCActivityType = {}


---活动任务结构体
---@class FUGCActivityTask
---@field TaskID number @任务ID
---@field ResetType EUGCActivityTaskResetType @重置类型
FUGCActivityTask = {}


---@class FUGCActivityData
---@field ID number @活动ID
---@field Title string @活动标题
---@field Desc string @活动说明
FUGCActivityData = {}


---@class UUGCActivityDataTable: UUAEDataTable
local UUGCActivityDataTable = {}
