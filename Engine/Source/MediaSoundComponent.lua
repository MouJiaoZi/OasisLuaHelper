---@meta

---Available media sound channel types.
---@class EMediaSoundChannels
---@field Mono number @Mono (1 channel).
---@field Stereo number @Stereo (2 channels).
---@field Surround number @Surround sound (7.1 channels; for UI).
EMediaSoundChannels = {}


---Implements a sound component for playing a media player's audio output.
---@class UMediaSoundComponent: USynthComponent
---@field Channels EMediaSoundChannels @Media sound channel type.
local UMediaSoundComponent = {}
