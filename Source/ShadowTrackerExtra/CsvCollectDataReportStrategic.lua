---@meta

---@class FMapAutoStartConfig
---@field MapName string
---@field Percentage number
FMapAutoStartConfig = {}


---@class UCsvCollectDataReportStrategic: UAssetRefStrategicBase
---@field MapAutoStartConfig ULuaArrayHelper<FMapAutoStartConfig>
---@field MapBlackList ULuaArrayHelper<string>
---@field ExceptionBlackList ULuaArrayHelper<string>
---@field PostBattleStatInterval number
local UCsvCollectDataReportStrategic = {}
