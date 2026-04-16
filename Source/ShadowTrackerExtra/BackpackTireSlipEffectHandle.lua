---@meta

---@class FWheelSlipEffectThresholdConfig
---@field LongSlipEffectThreshold number
---@field LatSlipEffectThreshold number
FWheelSlipEffectThresholdConfig = {}


---@class UBackpackTireSlipEffectHandle: UBackpackVehicleAbilityHandle
---@field DustConfig FSoftObjectPath
---@field WheelSlipEffectThrsholdConfigs ULuaArrayHelper<FWheelSlipEffectThresholdConfig>
local UBackpackTireSlipEffectHandle = {}

---@return boolean
function UBackpackTireSlipEffectHandle:ModifyFocusTarget() end
