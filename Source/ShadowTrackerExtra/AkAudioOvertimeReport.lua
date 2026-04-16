---@meta

---@class FAKAudioReportOvertimeItem
---@field AkComponentName string
---@field ReportTime number
---@field EventName string
---@field PlayingID number
---@field EndTime number
---@field StartTime number
FAKAudioReportOvertimeItem = {}


---@class UAkAudioOvertimeReport: UAkAudioErrorReportBase
---@field ReportWhiteList ULuaMapHelper<string, number>
---@field OvertimeReportMap ULuaMapHelper<number, FAKAudioReportOvertimeItem>
---@field TickIntervaler number
---@field DefaultOvertime number
---@field FrameReportTime number
---@field CurrentTime number
---@field WhiteListDir string
local UAkAudioOvertimeReport = {}
