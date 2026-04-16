---@meta

---@class FSeasonTaskUISingleItem
---@field TaskID number
---@field WeekIndex number
---@field DescriptionStr string
---@field CurProcess number
---@field TotalProcess number
---@field bIsMarkTrace boolean
---@field bHasGetTaskStr boolean
FSeasonTaskUISingleItem = {}


---@class FSeasonTaskUIWeekItems
---@field TaskItemsArray ULuaArrayHelper<FSeasonTaskUISingleItem>
---@field WeekIndex number
---@field TaskItemsCount number
---@field TracingItemsCount number
---@field bIsShowing number
---@field bHasGetTaskStr boolean
---@field LastRequestTime number
FSeasonTaskUIWeekItems = {}


---@class FSeasonTaskUISettings
---@field OneWeekItemCount number
---@field RequestCDTime number
---@field AutoRefreshCDTime number
---@field FreeTableTime number
---@field MaxTracingNum number
---@field MenuOpenNum number
---@field OverTracingTextID number
---@field SeasonTaskTableSoftPtr UUAEDataTable
---@field bEnableEditorTest boolean
---@field TestTracingIDs ULuaArrayHelper<number>
---@field TestCurWeekIndex number
FSeasonTaskUISettings = {}


---@class FSeasonTaskTableAsyncParams
FSeasonTaskTableAsyncParams = {}


---@class USeasonTaskUISource: UObject
---@field CurTracingTasks ULuaArrayHelper<FSeasonTaskUISingleItem>
---@field TotalTasks ULuaArrayHelper<FSeasonTaskUIWeekItems>
---@field CurReelTaskInfo ULuaArrayHelper<FComprehensiveTaskInfo>
local USeasonTaskUISource = {}

function USeasonTaskUISource:OnSendRequestTracingTaskIDs() end

---@param TaskIDs ULuaArrayHelper<number>
function USeasonTaskUISource:OnReceiveTracingTaskIDs(TaskIDs) end

---@param TaskID number
---@param isTracing boolean
---@param iWeekIndex number
---@param ItemIndex number
function USeasonTaskUISource:OnSendEditSingleTaskItem(TaskID, isTracing, iWeekIndex, ItemIndex) end

---@param TaskIDs ULuaArrayHelper<number>
function USeasonTaskUISource:SendRequstReelTasks(TaskIDs) end

---@param inWeekIndex number
function USeasonTaskUISource:SendRequestWeekTasks(inWeekIndex) end

---@param WeekIndex number
---@param TaskDetailList ULuaArrayHelper<FTaskDetailInfo>
function USeasonTaskUISource:OnReceiveWeekTasks(WeekIndex, TaskDetailList) end

---@param SimpleInfos ULuaArrayHelper<FTaskSimpleInfo>
function USeasonTaskUISource:OnReceiveWeekItemsCount(SimpleInfos) end

---@param TaskDetailList ULuaArrayHelper<FComprehensiveTaskInfo>
function USeasonTaskUISource:OnReceiveReelTask(TaskDetailList) end

---@return number
function USeasonTaskUISource:GetCurWeekIndex() end

---@return number
function USeasonTaskUISource:GetMaxTracingNum() end

function USeasonTaskUISource:ShowOverTracingTips() end

---@return boolean
function USeasonTaskUISource:SortCurTracingTasks() end

---@param idx number
---@param InfoList ULuaArrayHelper<FComprehensiveTaskInfo>
---@param PlayerName string
---@return boolean
function USeasonTaskUISource:GetTaskListAndPlayerNameByIndex(idx, InfoList, PlayerName) end
