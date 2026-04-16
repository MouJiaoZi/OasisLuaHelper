---@meta

---@class EItemFlowOperation
---@field Generate number
---@field Add number
---@field Delete number
---@field Consume number
---@field Take number
---@field Return number
---@field Merge number
EItemFlowOperation = {}


---@class EItemReporterTime
---@field Generate number
---@field Circulation number
EItemReporterTime = {}


---@class UBaseItemReporter: UObject
local UBaseItemReporter = {}


---@class UEscapeItemReporter: UBaseItemReporter
local UEscapeItemReporter = {}


---@class UBackpackItemGenerator: UObject
---@field bBackpackItemGeneratorDumpAllItemFlow boolean
---@field ItemReporters ULuaArrayHelper<UBaseItemReporter>
local UBackpackItemGenerator = {}
