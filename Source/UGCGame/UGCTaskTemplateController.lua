---@meta

---@class FUGCPercentTaskLineTaskList
---@field DSTaskList ULuaArrayHelper<UUGCTaskBase>
FUGCPercentTaskLineTaskList = {}


---@class FUGCLevelTaskLineTask
---@field Level number
---@field DSTaskList ULuaArrayHelper<UUGCTaskBase>
FUGCLevelTaskLineTask = {}


---@class FUGCLevelTaskLineTaskList
---@field LevelTaskList ULuaArrayHelper<FUGCLevelTaskLineTask>
FUGCLevelTaskLineTaskList = {}


---@class FUGCLevelTaskPlayerData
---@field Level number
---@field TaskInfoList ULuaArrayHelper<FUGCTaskInfo>
FUGCLevelTaskPlayerData = {}


---@class FUGCPercentTaskLineAwardState
---@field Percent number
---@field AwardState EUGCTaskLineAwardState
FUGCPercentTaskLineAwardState = {}


---@class FUGCPercentTaskPlayerData
---@field AwardStateList ULuaArrayHelper<FUGCPercentTaskLineAwardState>
---@field TaskInfoList ULuaArrayHelper<FUGCTaskInfo>
---@field LastResetTime number
FUGCPercentTaskPlayerData = {}


---@class FUGCTaskPlayerData
---@field TaskLineType EUGCTaskLineType
---@field TaskLineProgress number
---@field LevelTaskPlayerData ULuaArrayHelper<FUGCLevelTaskPlayerData>
---@field PercentTaskPlayerData FUGCPercentTaskPlayerData
FUGCTaskPlayerData = {}


---@class UUGCTaskTemplateController: UUniversalTaskController, IUGCGamePartPlayerComponentInterface
---@field TaskPlayerDataMap ULuaMapHelper<string, FUGCTaskPlayerData>
---@field PercentTaskMap ULuaMapHelper<string, FUGCPercentTaskLineTaskList>
---@field LevelTaskMap ULuaMapHelper<string, FUGCLevelTaskLineTaskList>
---@field AllTaskMap ULuaArrayHelper<UUGCTaskBase>
---@field TaskTemplateMgr AUGCTaskTemplateMgr
---@field TaskInited boolean
---@field ConflictTaskMap ULuaMapHelper<UUniversalTask, UUGCTaskBase>
local UUGCTaskTemplateController = {}

function UUGCTaskTemplateController:SetUniversalTaskListener() end

---@param TaskID number
---@param Progress number
---@param IsIncremental boolean
function UUGCTaskTemplateController:UpdateTaskProgressByID(TaskID, Progress, IsIncremental) end
