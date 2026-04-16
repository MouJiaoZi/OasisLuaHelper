---@meta

---@class ESimulatorMovementConfigType
---@field ESimulatorMovementConfigType_Normal number @Normal
---@field ESimulatorMovementConfigType_LowDevice number @LowDevice
ESimulatorMovementConfigType = {}


---@class FSimulatorMovementProxyConfig
---@field MinDistance number
---@field MaxDistance number
---@field FPS number
FSimulatorMovementProxyConfig = {}


---@class FSimulatorMovementStragetyBase
FSimulatorMovementStragetyBase = {}


---@class FSimulatorMovementStragetyForwardPredictWithLerp
FSimulatorMovementStragetyForwardPredictWithLerp = {}


---@class FSimulatorMovementStragetyMergePredict
FSimulatorMovementStragetyMergePredict = {}


---@class FSimulatorMovementStragetySkipPredict
FSimulatorMovementStragetySkipPredict = {}


---@class FSimulatorMovementProxyTypeConfig
---@field ConfigType ESimulatorMovementConfigType
---@field Configs ULuaArrayHelper<FSimulatorMovementProxyConfig>
FSimulatorMovementProxyTypeConfig = {}


---@class FSimulatorMovementProxyConfigManager
---@field TypeConfigs ULuaArrayHelper<FSimulatorMovementProxyTypeConfig>
---@field SingtTypeZoomMap ULuaMapHelper<ESightType, number>
FSimulatorMovementProxyConfigManager = {}


---@class FSimulatorMovementProxy
---@field ConfigManager FSimulatorMovementProxyConfigManager
---@field PredictWithLerpStragety FSimulatorMovementStragetyForwardPredictWithLerp
---@field MergePredictStragety FSimulatorMovementStragetyMergePredict
---@field SkipPredictStragety FSimulatorMovementStragetySkipPredict
FSimulatorMovementProxy = {}
