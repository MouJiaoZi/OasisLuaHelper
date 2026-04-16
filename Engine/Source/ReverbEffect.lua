---@meta

---@class UReverbEffect: UObject
---@field Density number @Density - 0.0 < 1.0 < 1.0 - Coloration of the late reverb - lower value is more grainy
---@field Diffusion number @Diffusion - 0.0 < 1.0 < 1.0 - Echo density in the reverberation decay - lower is more grainy
---@field Gain number @Reverb Gain - 0.0 < 0.32 < 1.0 - overall reverb gain - master volume control
---@field GainHF number @Reverb Gain High Frequency - 0.0 < 0.89 < 1.0 - attenuates the high frequency reflected sound
---@field DecayTime number @Decay Time - 0.1 < 1.49 < 20.0 Seconds - larger is more reverb
---@field DecayHFRatio number @Decay High Frequency Ratio - 0.1 < 0.83 < 2.0 - how much the quicker or slower the high frequencies decay relative to the lower frequencies.
---@field ReflectionsGain number @Reflections Gain - 0.0 < 0.05 < 3.16 - controls the amount of initial reflections
---@field ReflectionsDelay number @Reflections Delay - 0.0 < 0.007 < 0.3 Seconds - the time between the listener receiving the direct path sound and the first reflection
---@field LateGain number @Late Reverb Gain - 0.0 < 1.26 < 10.0 - gain of the late reverb
---@field LateDelay number @Late Reverb Delay - 0.0 < 0.011 < 0.1 Seconds - time difference between late reverb and first reflections
---@field AirAbsorptionGainHF number @Air Absorption - 0.0 < 0.994 < 1.0 - lower value means more absorption
---@field RoomRolloffFactor number @Room Rolloff - 0.0 < 0.0 < 10.0 - multiplies the attenuation due to distance
local UReverbEffect = {}
