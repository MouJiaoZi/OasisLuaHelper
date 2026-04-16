---@meta

---@class UUserInputCache: UObject
local UUserInputCache = {}

function UUserInputCache:ResetReportComplaintNames() end

---@param ReportName string
---@param IsReport boolean
function UUserInputCache:CacheReportComplaintName(ReportName, IsReport) end

---@param ReportName string
---@return boolean
function UUserInputCache:CheckIsNameReport(ReportName) end
