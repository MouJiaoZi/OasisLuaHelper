---@meta

---@class EMaxConcurrentResolutionRule
---@field PreventNew number @When Max Concurrent sounds are active do not start a new sound.
---@field StopOldest number @When Max Concurrent sounds are active stop the oldest and start a new one.
---@field StopFarthestThenPreventNew number @When Max Concurrent sounds are active stop the furthest sound.  If all sounds are the same distance then do not start a new sound.
---@field StopFarthestThenOldest number @When Max Concurrent sounds are active stop the furthest sound.  If all sounds are the same distance then stop the oldest.
---@field StopLowestPriority number @Stop the lowest priority sound in the group. If all sounds are the same priority, then it will stop the oldest sound in the group.
---@field StopQuietest number @Stop the sound that is quietest in the group.
---@field StopLowestPriorityThenPreventNew number @Stop the lowest priority sound in the group. If all sounds are the same priority, then it won't play a new sound.
EMaxConcurrentResolutionRule = {}


---@class FSoundConcurrencySettings
---@field MaxCount number @The max number of allowable concurrent active voices for voices playing in this concurrency group.
---@field bLimitToOwner number
---@field ResolutionRule EMaxConcurrentResolutionRule @Which concurrency resolution policy to use if max voice count is reached.
---@field VolumeScale number @The amount of attenuation to apply to older voice instances in this concurrency group. This reduces volume of older voices in a concurrency group as new voices play. AppliedVolumeScale = Math.Pow(DuckingScale, VoiceGeneration)
FSoundConcurrencySettings = {}


---@class USoundConcurrency: UObject
---@field Concurrency FSoundConcurrencySettings
local USoundConcurrency = {}
