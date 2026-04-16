---@meta

---@class UAkAudioUpperWarningReport: UAkAudioErrorReportBase
---@field MemoryPoolThreshold number
---@field ChannelNumberThreshold number
---@field APICallThreshold number
---@field PerfThreshold number
---@field TickInterval number
---@field CheckInterval number
---@field PoolIDs ULuaArrayHelper<number>
---@field PerfIDs ULuaArrayHelper<number>
---@field ReportTimes number
local UAkAudioUpperWarningReport = {}
