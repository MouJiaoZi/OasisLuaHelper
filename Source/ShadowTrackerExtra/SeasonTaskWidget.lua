---@meta

---@class ESeasonTaskUIPage
---@field Tracing_None number @追踪任务页面，赛季无法完成任务
---@field Total_None number @全部任务页面，赛季无法完成任务
---@field Tracing_Zero number @追踪任务页面，0个追踪
---@field Total_Zero number @全部任务页面，0个未完成任务
---@field Tracing_Tasks number @追踪任务页面，有追踪任务
---@field Total_Tasks number @全部任务页面，还存在未完成任务
ESeasonTaskUIPage = {}


---@class USeasonTaskWidget: UUAEUserWidget
---@field UIPageType ESeasonTaskUIPage
---@field AutoRefreshUIHandle FTimerHandle
local USeasonTaskWidget = {}

---@param inPageType ESeasonTaskUIPage
---@param isRefreshChildrens boolean
---@param WeekIndex number
---@param isCreateList boolean
function USeasonTaskWidget:SetUIState(inPageType, isRefreshChildrens, WeekIndex, isCreateList) end

---@param isRefreshChildrens boolean
---@param WeekIndex number
---@param isCreateList boolean
function USeasonTaskWidget:OnUIStateUpdate(isRefreshChildrens, WeekIndex, isCreateList) end

---@param isOnTracingPage boolean
---@param isKeepCurState boolean
function USeasonTaskWidget:SwitchUpperPage(isOnTracingPage, isKeepCurState) end

---@param isOnTracingPage boolean
---@param isKeepCurState boolean
function USeasonTaskWidget:OnSwitchUpperPage(isOnTracingPage, isKeepCurState) end

---@param inWeekIndex number
---@param isShow boolean
function USeasonTaskWidget:OnShowWeekItems(inWeekIndex, isShow) end

---@param TaskID number
---@param isTracing boolean
---@param inWeekIndex number
---@param ItemIndex number
function USeasonTaskWidget:OnMarkItemTracing(TaskID, isTracing, inWeekIndex, ItemIndex) end

---@param TaskID number
---@param isTracing boolean
---@param inWeekIndex number
function USeasonTaskWidget:RefreshUIByEditTracing(TaskID, isTracing, inWeekIndex) end

---@param TaskID number
---@param Desc string
---@return boolean
function USeasonTaskWidget:GetReelTaskDescByTaskID(TaskID, Desc) end

---@param TaskID number
---@return boolean
function USeasonTaskWidget:CheckIsReelTask(TaskID) end

---@param IsUpperOnTracingPage boolean
---@return boolean
function USeasonTaskWidget:CheckReOpenRefreshUI(IsUpperOnTracingPage) end

function USeasonTaskWidget:NotifyWidgetBeginPlay() end

---@param isOnTracingPage boolean
function USeasonTaskWidget:SetupAutoRefreshUITimer(isOnTracingPage) end

---@param isOnTracingPage boolean
function USeasonTaskWidget:RefreshCurOpenPage(isOnTracingPage) end

---@param TaskInfo ULuaArrayHelper<FComprehensiveTaskInfo>
function USeasonTaskWidget:OnReceiveReelTaskInfo(TaskInfo) end

function USeasonTaskWidget:RefreshTracingTask() end
