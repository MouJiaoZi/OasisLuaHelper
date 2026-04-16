---@meta

---@class ESubmixEffectDynamicsProcessorType
---@field Compressor number
---@field Limiter number
---@field Expander number
---@field Gate number
---@field Count number
ESubmixEffectDynamicsProcessorType = {}


---@class ESubmixEffectDynamicsPeakMode
---@field MeanSquared number
---@field RootMeanSquared number
---@field Peak number
---@field Count number
ESubmixEffectDynamicsPeakMode = {}


---@class FSubmixEffectDynamicsProcessorSettings
---@field DynamicsProcessorType ESubmixEffectDynamicsProcessorType
---@field PeakMode ESubmixEffectDynamicsPeakMode
---@field LookAheadMsec number
---@field AttackTimeMsec number
---@field ReleaseTimeMsec number
---@field ThresholdDb number
---@field Ratio number
---@field KneeBandwidthDb number
---@field InputGainDb number
---@field OutputGainDb number
---@field bChannelLinked number
---@field bAnalogMode number
FSubmixEffectDynamicsProcessorSettings = {}


---@class USubmixEffectDynamicsProcessorPreset: USoundEffectSubmixPreset
---@field Settings FSubmixEffectDynamicsProcessorSettings
local USubmixEffectDynamicsProcessorPreset = {}

---@param InSettings FSubmixEffectDynamicsProcessorSettings
function USubmixEffectDynamicsProcessorPreset:SetSettings(InSettings) end
