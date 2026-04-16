---@meta

---Data for a single key in this track
---@class FParticleReplayTrackKey
---@field Time number @Position along timeline
---@field Duration number @Time length this clip should be captured/played for
---@field ClipIDNumber number @Replay clip ID number that identifies the clip we should capture to or playback from
FParticleReplayTrackKey = {}


---@class UInterpTrackParticleReplay: UInterpTrack
---@field TrackKeys ULuaArrayHelper<FParticleReplayTrackKey> @Array of keys
local UInterpTrackParticleReplay = {}
