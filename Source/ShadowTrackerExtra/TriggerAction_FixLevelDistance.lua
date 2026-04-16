---@meta

---@class FFixLevelConfig
---@field CenterPos FVector
---@field InRadius number
---@field OutRadius number
---@field LevelNames ULuaArrayHelper<string>
---@field bCheckZDiff boolean
---@field ZDiff number
---@field bCheckExtraCond boolean
FFixLevelConfig = {}


---@class UTriggerAction_FixLevelDistance: UTriggerAction
---@field FixLevelConfigs ULuaArrayHelper<FFixLevelConfig>
---@field UpdateInterval number
---@field MaxTickTImes number
local UTriggerAction_FixLevelDistance = {}
