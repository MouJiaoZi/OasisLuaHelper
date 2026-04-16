---@meta

---@class FDifficultyTimeConfig
---@field WaitTime number
---@field RandomDeviation number
FDifficultyTimeConfig = {}


---@class UBTTask_AdvancedWait: UBTTask_Wait
---@field bUseDifficultyLevel boolean
---@field DifficultyTimeCfg ULuaMapHelper<number, FDifficultyTimeConfig>
local UBTTask_AdvancedWait = {}
