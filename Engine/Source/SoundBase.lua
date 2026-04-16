---@meta

---@class USoundBase: UObject
---@field bDebug number @When "stat sounds -debug" has been specified, draw this sound's attenuation shape when the sound is audible. For debugging purpose only.
---@field bOverrideConcurrency number @Whether or not to override the sound concurrency object with local concurrency settings.
---@field bOutputToBusOnly number @Whether or not to only send this audio's output to a bus. If true, will not be this sound won't be audible except through bus sends.
---@field bIgnoreFocus_DEPRECATED number
---@field ConcurrencyOverrides any @If Override Concurrency is true, concurrency settings to use.
---@field MaxConcurrentResolutionRule_DEPRECATED EMaxConcurrentResolutionRule
---@field MaxConcurrentPlayCount_DEPRECATED number @Maximum number of times this sound can be played concurrently.
---@field Duration number @Duration of sound in seconds.
---@field Priority number @Sound priority (higher value is higher priority) used for concurrency resolution. This priority value is weighted against the final volume of the sound.
---@field SoundSubmixSends ULuaArrayHelper<FSoundSubmixSendInfo> @An array of submix sends. Audio from this sound will send a portion of its audio to these effects.
---@field BusSends ULuaArrayHelper<FSoundSourceBusSendInfo> @This sound will send it's audio output to this list of buses if there are bus instances playing.
local USoundBase = {}
