---@meta

---Audio section, for use in the master audio, or by attached audio objects
---@class UMovieSceneAudioSection: UMovieSceneSection
---@field StartOffset number @The offset into the beginning of the audio clip
---@field AudioStartTime_DEPRECATED number @The absolute time that the sound starts playing at
---@field AudioDilationFactor_DEPRECATED number @The amount which this audio is time dilated by
---@field AudioVolume_DEPRECATED number @The volume the sound will be played with.
---@field SoundVolume FRichCurve @The volume the sound will be played with.
---@field PitchMultiplier FRichCurve @The pitch multiplier the sound will be played with.
---@field bSuppressSubtitles boolean
---@field bOverrideAttenuation boolean @Should the attenuation settings on this section be used.
---@field OnQueueSubtitles FOnQueueSubtitles @Called when subtitles are sent to the SubtitleManager.  Set this delegate if you want to hijack the subtitles for other purposes
---@field OnAudioFinished FOnAudioFinished @called when we finish playing audio, either because it played to completion or because a Stop() call turned it off early
---@field OnAudioPlaybackPercent FOnAudioPlaybackPercent
local UMovieSceneAudioSection = {}
