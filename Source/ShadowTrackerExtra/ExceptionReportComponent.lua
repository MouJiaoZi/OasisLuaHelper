---@meta

---@class UExceptionReportComponent: UActorComponent
local UExceptionReportComponent = {}

---@param Context UObject
---@param ExceptionType string
---@param ClientData string
---@param HandleFunctionTarget UObject
function UExceptionReportComponent:ServerExceptionReport(Context, ExceptionType, ClientData, HandleFunctionTarget) end

---@param Context UObject
---@return string
function UExceptionReportComponent:TestHandlFunc(Context) end
