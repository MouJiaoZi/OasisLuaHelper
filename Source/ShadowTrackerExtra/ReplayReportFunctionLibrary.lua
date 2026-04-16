---@meta

---@class UReplayReportFunctionLibrary: UBlueprintFunctionLibrary
local UReplayReportFunctionLibrary = {}

---@param ReportPC AUAEPlayerController
---@param EventID number
---@param EventState number
---@param SubID number
---@param UID1 number
---@param UID2 number
---@param UID3 number
---@param UID4 number
function UReplayReportFunctionLibrary:DS_ReportWXReplayEvent(ReportPC, EventID, EventState, SubID, UID1, UID2, UID3, UID4) end

---@param ReportPC AUAEPlayerController
---@param EventID number
---@param EventState number
---@param UIDs ULuaArrayHelper<number>
---@param SubID number
function UReplayReportFunctionLibrary:DS_ReportWXReplayEvent_UIDs(ReportPC, EventID, EventState, UIDs, SubID) end

---@param ReportPC AUAEPlayerController
---@param EventID number
---@param EventState number
---@param SourceItems ULuaArrayHelper<number>
---@param PossibleItems ULuaArrayHelper<number>
---@param ResultItems ULuaArrayHelper<number>
function UReplayReportFunctionLibrary:DS_ReportWXSurpriseGiftInfo(ReportPC, EventID, EventState, SourceItems, PossibleItems, ResultItems) end
