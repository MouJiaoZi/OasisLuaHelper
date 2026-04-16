---@meta

---@class EUGCTaskTargetType
---@field Player number @玩家
---@field Monster number @怪物
EUGCTaskTargetType = {}


---@class FUGCTaskIndex
---@field TaskLineName string
---@field PercentTaskIndex number
---@field LevelTaskLevelIndex number
---@field LevelTaskIndex number
FUGCTaskIndex = {}


---@class UUGCTaskBase: UObject
---@field TaskID number
local UUGCTaskBase = {}

---@param ID number
---@param TaskMgr AUGCTaskTemplateMgr
function UUGCTaskBase:Init(ID, TaskMgr) end

function UUGCTaskBase:BeginPlay() end

function UUGCTaskBase:EndPlay() end

---@return number
function UUGCTaskBase:GetTaskType() end

---@return number
function UUGCTaskBase:GetTaskTargetProcess() end

---@param PlayerKey number
function UUGCTaskBase:ResetTaskForPlayer(PlayerKey) end

---@return string
function UUGCTaskBase:GetTaskTemplatePath() end
