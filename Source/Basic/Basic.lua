---@meta

---@class UBasicBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UBasicBlueprintFunctionLibrary = {}

---@param Type string
---@param ExtraStr string
---@param StackStr string
---@param bForceReport boolean
---@param bReportToBugly boolean
---@param bUpStackInfo boolean
function UBasicBlueprintFunctionLibrary:ExceptionReport(Type, ExtraStr, StackStr, bForceReport, bReportToBugly, bUpStackInfo) end
