---@meta

---FileName: ClientMsgReporter.h Author: czcheng Description: 仅在Client创建的组件，挂在PC上，用于client信息的上报。
---@class UClientMsgReporter: UActorComponent
---@field MaxMsgCount number
---@field MaxReportMsgBytes number
local UClientMsgReporter = {}

---@param InMsg string
function UClientMsgReporter:AddClientMsgToReport(InMsg) end

---@return string
function UClientMsgReporter:GetExtraClientMsg() end

---@param InControlMsg string
function UClientMsgReporter:ReportMsgToServer(InControlMsg) end

---@param InControlMsg string
---@return string
function UClientMsgReporter:GetExtraReportMsg(InControlMsg) end

---@param FilePath string
function UClientMsgReporter:ReportDeathPlaybackFile(FilePath) end

---@param FilePaths ULuaArrayHelper<string>
function UClientMsgReporter:ReportDumpFiles(FilePaths) end

---@param FilePath string
---@param InControlMsg string
function UClientMsgReporter:ReportFileToServer(FilePath, InControlMsg) end
