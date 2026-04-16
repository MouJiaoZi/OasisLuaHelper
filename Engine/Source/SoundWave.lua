---@meta

---@class EDecompressionType
---@field DTYPE_Setup number
---@field DTYPE_Invalid number
---@field DTYPE_Preview number
---@field DTYPE_Native number
---@field DTYPE_RealTime number
---@field DTYPE_Procedural number
---@field DTYPE_Xenon number
---@field DTYPE_Streaming number
---@field DTYPE_MAX number
EDecompressionType = {}


---Platform-specific data used streaming audio at runtime.
---@class FStreamedAudioPlatformData
FStreamedAudioPlatformData = {}


---@class USoundWave: USoundBase
---@field CompressionQuality number @Platform agnostic compression quality. 1..100 with 1 being best compression and 100 being best quality.
---@field bLooping number @If set, when played directly (not through a sound cue) the wave will be played looping.
---@field bStreaming number @Whether this sound can be streamed to avoid increased memory usage
---@field StreamingPriority number @Priority of this sound when streaming (lower priority streams may not always play)
---@field bMature number @If set to true if this sound is considered to contain mature/adult content.
---@field bManualWordWrap number @If set to true will disable automatic generation of line breaks - use if the subtitles have been split manually.
---@field bSingleLine number @If set to true the subtitles display as a sequence of single lines as opposed to multiline.
---@field bVirtualizeWhenSilent number @Allows sound to play at 0 volume, otherwise will stop the sound when the sound is silent.
---@field SoundGroup ESoundGroup
---@field SpokenText string @A localized version of the text that is actually spoken phonetically in the audio.
---@field SubtitlePriority number @The priority of the subtitle.
---@field Volume number @Playback volume of sound 0 to 1 - Default is 1.0.
---@field Pitch number @Playback pitch for sound.
---@field NumChannels number @Number of channels of multichannel data; 1 or 2 for regular mono and stereo files
---@field SampleRate number @Cached sample rate for displaying in the tools
---@field RawPCMDataSize number @Size of RawPCMData, or what RawPCMData would be if the sound was fully decompressed
---@field Subtitles ULuaArrayHelper<FSubtitleCue> @Subtitle cues.  If empty, use SpokenText as the subtitle.  Will often be empty, as the contents of the subtitle is commonly identical to what is spoken.
---@field LocalizedSubtitles ULuaArrayHelper<FLocalizedSubtitle> @The array of the subtitles for each language. Generated at cook time.
local USoundWave = {}
