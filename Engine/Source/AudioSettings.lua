---@meta

---@class FAudioQualitySettings
---@field DisplayName string
---@field MaxChannels number
FAudioQualitySettings = {}


---Audio settings.
---@class UAudioSettings: UDeveloperSettings
---@field DefaultSoundClassName FSoftObjectPath @The SoundClass assigned to newly created sounds
---@field DefaultSoundConcurrencyName FSoftObjectPath @The SoundConcurrency assigned to newly created sounds
---@field DefaultBaseSoundMix FSoftObjectPath @The SoundMix to use as base when no other system has specified a Base SoundMix
---@field VoiPSoundClass FSoftObjectPath @Sound class to be used for the VOIP audio component
---@field DefaultReverbSendLevel number @The amount of audio to send to reverb submixes if no reverb send is setup for the source through attenuation settings. Only used in audio mixer.
---@field LowPassFilterResonance number
---@field MaximumConcurrentStreams number @How many streaming sounds can be played at the same time (if more are played they will be sorted by priority)
---@field QualityLevels ULuaArrayHelper<FAudioQualitySettings>
---@field bAllowVirtualizedSounds number @Allows sounds to play at 0 volume.
---@field bDisableMasterEQ number @Disables master EQ effect in the audio DSP graph.
---@field bDisableMasterReverb number @Disables master reverb effect in the audio DSP graph.
---@field bAllowCenterChannel3DPanning number @Enables the surround sound spatialization calculations to include the center channel.
---@field DialogueFilenameFormat string @The format string to use when generating the filename for contexts within dialogue waves. This must generate unique names for your project. Available format markers: * {DialogueGuid} - The GUID of the dialogue wave. Guaranteed to be unique and stable against asset renames. * {DialogueHash} - The hash of the dialogue wave. Not guaranteed to be unique or stable against asset renames, however may be unique enough if combined with the dialogue name. * {DialogueName} - The name of the dialogue wave. Not guaranteed to be unique or stable against asset renames, however may be unique enough if combined with the dialogue hash. * {ContextId}    - The ID of the context. Guaranteed to be unique within its dialogue wave. Not guaranteed to be stable against changes to the context. * {ContextIndex} - The index of the context within its parent dialogue wave. Guaranteed to be unique within its dialogue wave. Not guaranteed to be stable against contexts being removed.
---@field AkEventCppNotifyClass UAnimNotify @UAnimNotify_AkEventCpp is the subclass of UAnimNotify.
---@field TimedAkEventNotifyStateClass UAnimNotifyState @UAnimNotifyState_TimedAkEvent is the subclass of UAnimNotifyState.
---@field AkAudioEventSearchDepth number @Search depth when trying to link commerce animation montage with its AkAudioEvent.
---@field bUsePreCachedMontageMap boolean @Whether to use pre-cached map for AkAudio-Montages searching.
---@field bDynamicPreCachedMontageMap boolean @Whether to dynamically update pre-cached map for AkAudio-Montages searching.
local UAudioSettings = {}
