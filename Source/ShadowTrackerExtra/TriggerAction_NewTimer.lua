---@meta

---@class ETimerOperateType
---@field Start number @开始
---@field Pause number @暂停
---@field Stop number @停止
---@field Reset number @重置
ETimerOperateType = {}


---@class FTrigger_NewTimerInfo
---@field TimerName string
---@field IsRunning boolean
---@field CurTime number
FTrigger_NewTimerInfo = {}


---@class UTriggerAction_NewTimer: UTriggerAction
---@field TimerName string
---@field OperateType ETimerOperateType
local UTriggerAction_NewTimer = {}
