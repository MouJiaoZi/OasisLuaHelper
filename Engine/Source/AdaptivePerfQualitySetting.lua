---@meta

---@class EApplicationStrategy
---@field MinValue number @最小值优先（默认）
---@field MaxValue number @最大值优先
---@field StrictOverride number @严格覆盖
EApplicationStrategy = {}


---@class FCVarConfig
---@field Name string
---@field DefaultValue string
FCVarConfig = {}


---@class UAdaptivePerfQualitySetting: UObject
---@field VariablesToPrint ULuaArrayHelper<string>
---@field CriticalCVars ULuaArrayHelper<string>
---@field ApplyQualityCD number
---@field EvaluateCD number
---@field CVarStrategies ULuaMapHelper<string, EApplicationStrategy>
local UAdaptivePerfQualitySetting = {}
