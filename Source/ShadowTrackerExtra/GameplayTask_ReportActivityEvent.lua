---@meta

---@class FReportActivityEvent
---@field PlayerKey number
---@field EventID number
---@field EventState number
FReportActivityEvent = {}


---@class FReportActivityEventResponse
---@field PlayerKey number
---@field EventID number
---@field EventState number
---@field ErrorID number
FReportActivityEventResponse = {}


---@class UGameplayTask_ReportActivityEvent: UUAEGameplayTask
---@field OnResponse FRegistReportActivityDelegate
---@field Events ULuaArrayHelper<FReportActivityEvent>
local UGameplayTask_ReportActivityEvent = {}

---@param Response ULuaArrayHelper<FReportActivityEventResponse>
function UGameplayTask_ReportActivityEvent:OnReportResponse(Response) end
