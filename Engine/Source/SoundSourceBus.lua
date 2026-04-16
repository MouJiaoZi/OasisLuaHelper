---@meta

---@class ESourceBusChannels
---@field Mono number
---@field Stereo number
ESourceBusChannels = {}


---@class USoundSourceBus: USoundWave
---@field SourceBusChannels ESourceBusChannels @How many channels to use for the source bus.
---@field SourceBusDuration number @The duration (in seconds) to use for the source bus. A duration of 0.0 indicates to play the source bus indefinitely.
---@field bAutoDeactivateWhenSilent number @Stop the source bus when the volume goes to zero.
local USoundSourceBus = {}
