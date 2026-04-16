---@meta

---Struct used for storing one per-instance named parameter for this AudioComponent. Certain nodes in the SoundCue may reference parameters by name so they can be adjusted per-instance.
---@class FAudioComponentParam
---@field ParamName string
---@field FloatParam number
---@field BoolParam boolean
---@field IntParam number
FAudioComponentParam = {}


---called when we finish playing audio, either because it played to completion or because a Stop() call turned it off early
---@class FOnAudioFinished : ULuaSingleDelegate
FOnAudioFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAudioFinished:Bind(Callback, Obj) end

---执行委托
function FOnAudioFinished:Execute() end


---shadow delegate declaration for above
---@class FOnAudioFinishedNative : ULuaMulticastDelegate
FOnAudioFinishedNative = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UAudioComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAudioFinishedNative:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UAudioComponent
function FOnAudioFinishedNative:Broadcast(Param1) end


---Called when subtitles are sent to the SubtitleManager.  Set this delegate if you want to hijack the subtitles for other purposes
---@class FOnQueueSubtitles : ULuaSingleDelegate
FOnQueueSubtitles = {}

---绑定回调函数
---@param Callback fun(Obj: any, Subtitles: ULuaArrayHelper<FSubtitleCue>, CueDuration: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnQueueSubtitles:Bind(Callback, Obj) end

---执行委托
---@param Subtitles ULuaArrayHelper<FSubtitleCue>
---@param CueDuration number
function FOnQueueSubtitles:Execute(Subtitles, CueDuration) end


---Called as a sound plays on the audio component to allow BP to perform actions based on playback percentage. Computed as samples played divided by total samples, taking into account pitch. Not currently implemented on all platforms.
---@class FOnAudioPlaybackPercent : ULuaMulticastDelegate
FOnAudioPlaybackPercent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayingSoundWave: USoundWave, PlaybackPercent: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAudioPlaybackPercent:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayingSoundWave USoundWave
---@param PlaybackPercent number
function FOnAudioPlaybackPercent:Broadcast(PlayingSoundWave, PlaybackPercent) end


---shadow delegate declaration for above
---@class FOnAudioPlaybackPercentNative : ULuaMulticastDelegate
FOnAudioPlaybackPercentNative = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UAudioComponent, Param2: USoundWave, Param3: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAudioPlaybackPercentNative:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UAudioComponent
---@param Param2 USoundWave
---@param Param3 number
function FOnAudioPlaybackPercentNative:Broadcast(Param1, Param2, Param3) end


---AudioComponent is used to play a Sound
---@class UAudioComponent: USceneComponent
---@field InstanceParameters ULuaArrayHelper<FAudioComponentParam> @Array of per-instance parameters for this AudioComponent.
---@field bAutoDestroy number @Auto destroy this component on completion
---@field bStopWhenOwnerDestroyed number @Stop sound when owner is destroyed
---@field bShouldRemainActiveIfDropped number @Whether the wave instances should remain active if they're dropped by the prioritization code. Useful for e.g. vehicle sounds that shouldn't cut out.
---@field bAllowSpatialization number @Overrides spatialization enablement in either the attenuation asset or on this audio component's attenuation settings override.
---@field bOverrideAttenuation number @Allows defining attenuation settings directly on this audio component without using an attenuation settings asset.
---@field bOverrideSubtitlePriority number @Whether or not to override the sound's subtitle priority.
---@field bIsUISound number @Whether or not this sound plays when the game is paused in the UI
---@field bEnableLowPassFilter number @Whether or not to apply a low-pass filter to the sound that plays in this audio component.
---@field bOverridePriority number
---@field bSuppressSubtitles number @If true, subtitles in the sound data will be ignored.
---@field AudioComponentUserID string @Configurable, serialized ID for audio plugins
---@field PitchModulationMin number @The lower bound to use when randomly determining a pitch multiplier
---@field PitchModulationMax number @The upper bound to use when randomly determining a pitch multiplier
---@field VolumeModulationMin number @The lower bound to use when randomly determining a volume multiplier
---@field VolumeModulationMax number @The upper bound to use when randomly determining a volume multiplier
---@field VolumeMultiplier number @A volume multiplier to apply to sounds generated by this component
---@field Priority number @A priority value that is used for sounds that play on this component that scales against final output volume.
---@field SubtitlePriority number @Used by the subtitle manager to prioritize subtitles wave instances spawned by this component.
---@field VolumeWeightedPriorityScale_DEPRECATED number
---@field PitchMultiplier number @A pitch multiplier to apply to sounds generated by this component
---@field HighFrequencyGainMultiplier_DEPRECATED number
---@field LowPassFilterFrequency number @The frequency of the lowpass filter (in hertz) to apply to this voice. A frequency of 0.0 is the device sample rate and will bypass the filter.
---@field AttenuationOverrides any @If bOverrideSettings is true, the attenuation properties to use for sounds generated by this component
---@field OnAudioFinished FOnAudioFinished @called when we finish playing audio, either because it played to completion or because a Stop() call turned it off early
---@field OnAudioPlaybackPercent FOnAudioPlaybackPercent @Called as a sound plays on the audio component to allow BP to perform actions based on playback percentage. Computed as samples played divided by total samples, taking into account pitch. Not currently implemented on all platforms.
---@field OnQueueSubtitles FOnQueueSubtitles @Called when subtitles are sent to the SubtitleManager.  Set this delegate if you want to hijack the subtitles for other purposes
local UAudioComponent = {}

---@param NewSound USoundBase
function UAudioComponent:SetSound(NewSound) end

---This can be used in place of "play" when it is desired to fade in the sound over time. If FadeTime is 0.0, the change in volume is instant. If FadeTime is > 0.0, the multiplier will be increased from 0 to FadeVolumeLevel over FadeIn seconds.
---@param FadeInDuration number
---@param FadeVolumeLevel number
---@param StartTime number
function UAudioComponent:FadeIn(FadeInDuration, FadeVolumeLevel, StartTime) end

---This is used in place of "stop" when it is desired to fade the volume of the sound before stopping. If FadeTime is 0.0, this is the same as calling Stop(). If FadeTime is > 0.0, this will adjust the volume multiplier to FadeVolumeLevel over FadeInTime seconds and then stop the sound.
---@param FadeOutDuration number
---@param FadeVolumeLevel number
function UAudioComponent:FadeOut(FadeOutDuration, FadeVolumeLevel) end

---Start a sound playing on an audio component
---@param StartTime number
function UAudioComponent:Play(StartTime) end

---Stop an audio component playing its sound cue, issue any delegates if needed
function UAudioComponent:Stop() end

---Pause an audio component playing its sound cue, issue any delegates if needed
---@param bPause boolean
function UAudioComponent:SetPaused(bPause) end

---@return boolean
function UAudioComponent:IsPlaying() end

---This will allow one to adjust the volume of an AudioComponent on the fly
---@param AdjustVolumeDuration number
---@param AdjustVolumeLevel number
function UAudioComponent:AdjustVolume(AdjustVolumeDuration, AdjustVolumeLevel) end

---Set a float instance parameter for use in sound cues played by this audio component
---@param InName string
---@param InFloat number
function UAudioComponent:SetFloatParameter(InName, InFloat) end

---Set a sound wave instance parameter for use in sound cues played by this audio component
---@param InName string
---@param InWave USoundWave
function UAudioComponent:SetWaveParameter(InName, InWave) end

---Set a boolean instance parameter for use in sound cues played by this audio component
---@param InName string
---@param InBool boolean
function UAudioComponent:SetBoolParameter(InName, InBool) end

---Set an integer instance parameter for use in sound cues played by this audio component
---@param InName string
---@param InInt number
function UAudioComponent:SetIntParameter(InName, InInt) end

---Set a new volume multiplier
---@param NewVolumeMultiplier number
function UAudioComponent:SetVolumeMultiplier(NewVolumeMultiplier) end

---Set a new pitch multiplier
---@param NewPitchMultiplier number
function UAudioComponent:SetPitchMultiplier(NewPitchMultiplier) end

---Set whether sounds generated by this audio component should be considered UI sounds
---@param bInUISound boolean
function UAudioComponent:SetUISound(bInUISound) end

---Modify the attenuation settings of the audio component
---@param InAttenuationSettings FSoundAttenuationSettings
function UAudioComponent:AdjustAttenuation(InAttenuationSettings) end

---Sets how much audio the sound should send to the given submix.
---@param Submix USoundSubmix
---@param SendLevel number
function UAudioComponent:SetSubmixSend(Submix, SendLevel) end

---Sets whether or not the low pass filter is enabled on the audio component.
---@param InLowPassFilterEnabled boolean
function UAudioComponent:SetLowPassFilterEnabled(InLowPassFilterEnabled) end

---Sets lowpass filter frequency of the audio component.
---@param InLowPassFilterFrequency number
function UAudioComponent:SetLowPassFilterFrequency(InLowPassFilterFrequency) end

---@param OutAttenuationSettings FSoundAttenuationSettings
---@return boolean
function UAudioComponent:BP_GetAttenuationSettingsToApply(OutAttenuationSettings) end
