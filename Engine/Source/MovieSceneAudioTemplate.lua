---@meta

---@class FMovieSceneAudioSectionTemplateData
---@field AudioStartOffset number @The offset into the beginning of the audio clip
---@field AudioRange FFloatRange @The time range this audio plays
---@field AudioPitchMultiplierCurve FRichCurve @The amount which this audio is time dilated by
---@field AudioVolumeCurve FRichCurve @The volume the sound will be played with.
---@field RowIndex number @The row index of the section
---@field bOverrideAttenuation boolean @Should the attenuation settings on this section be used.
---@field OnQueueSubtitles FOnQueueSubtitles @Called when subtitles are sent to the SubtitleManager.  Set this delegate if you want to hijack the subtitles for other purposes
---@field OnAudioFinished FOnAudioFinished @called when we finish playing audio, either because it played to completion or because a Stop() call turned it off early
---@field OnAudioPlaybackPercent FOnAudioPlaybackPercent
FMovieSceneAudioSectionTemplateData = {}


---@class FMovieSceneAudioSectionTemplate
---@field AudioData FMovieSceneAudioSectionTemplateData
FMovieSceneAudioSectionTemplate = {}
