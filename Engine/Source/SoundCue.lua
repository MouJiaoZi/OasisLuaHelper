---@meta

---@class FSoundNodeEditorData
FSoundNodeEditorData = {}


---The behavior of audio playback is defined within Sound Cues.
---@class USoundCue: USoundBase
---@field bOverrideAttenuation number
---@field VolumeMultiplier number
---@field PitchMultiplier number
---@field AttenuationOverrides FSoundAttenuationSettings
---@field SubtitlePriority number
local USoundCue = {}
