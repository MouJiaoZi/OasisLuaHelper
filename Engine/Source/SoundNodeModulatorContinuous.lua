---@meta

---@class ModulationParamMode
---@field MPM_Normal number @Normal
---@field MPM_Abs number @Absolute
---@field MPM_Direct number @Direct
---@field MPM_MAX number
ModulationParamMode = {}


---@class FModulatorContinuousParams
---@field ParameterName string @The name of the sound instance parameter that specifies the current value.
---@field Default number @The default value to be used if the parameter is not found.
---@field MinInput number @The minimum input value. Values will be clamped to the [MinInput, MaxInput] range.
---@field MaxInput number @The maximum input value. Values will be clamped to the [MinInput, MaxInput] range.
---@field MinOutput number @The minimum output value. The input value will be scaled from the range [MinInput, MaxInput] to [MinOut, MaxOutput]
---@field MaxOutput number @The maximum output value. The input value will be scaled from the range [MinInput, MaxInput] to [MinOut, MaxOutput]
---@field ParamMode ModulationParamMode @The mode with which to treat the input value
FModulatorContinuousParams = {}


---Allows named parameter based manipulation of pitch and volume
---@class USoundNodeModulatorContinuous: USoundNode
---@field PitchModulationParams FModulatorContinuousParams
---@field VolumeModulationParams FModulatorContinuousParams
local USoundNodeModulatorContinuous = {}
