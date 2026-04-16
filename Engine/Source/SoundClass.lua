---@meta

---@class EAudioOutputTarget
---@field Speaker number
---@field Controller number
---@field ControllerFallbackToSpeaker number
EAudioOutputTarget = {}


---@class FSoundClassEditorData
FSoundClassEditorData = {}


---Structure containing configurable properties of a sound class.
---@class FSoundClassProperties
---@field Volume number @Volume multiplier.
---@field Pitch number @Pitch multiplier.
---@field StereoBleed number @The amount of stereo sounds to bleed to the rear speakers
---@field LFEBleed number @The amount of a sound to bleed to the LFE channel
---@field VoiceCenterChannelVolume number @Voice center channel volume - Not a multiplier (no propagation)
---@field RadioFilterVolume number @Volume of the radio filter effect
---@field RadioFilterVolumeThreshold number @Volume at which the radio filter kicks in
---@field bApplyEffects number @Sound mix voice - whether to apply audio effects
---@field bAlwaysPlay number @Whether to artificially prioritise the component to play
---@field bIsUISound number @Whether or not this sound plays when the game is paused in the UI
---@field bIsMusic number @Whether or not this is music (propagates only if parent is true)
---@field bReverb number @Whether or not this sound class has reverb applied
---@field Default2DReverbSendAmount number @Amount of audio to send to master reverb effect for 2D sounds played with this sound class.
---@field bCenterChannelOnly number @Whether or not this sound class forces sounds to the center channel
---@field bApplyAmbientVolumes number @Whether the Interior/Exterior volume and LPF modifiers should be applied
---@field OutputTarget EAudioOutputTarget @Which output target the sound should be played through
FSoundClassProperties = {}


---Structure containing information on a SoundMix to activate passively.
---@class FPassiveSoundMixModifier
---@field MinVolumeThreshold number @Minimum volume level required to activate SoundMix. Below this value the SoundMix will not be active.
---@field MaxVolumeThreshold number @Maximum volume level required to activate SoundMix. Above this value the SoundMix will not be active.
FPassiveSoundMixModifier = {}


---@class USoundClass: UObject
---@field Properties any @Configurable properties like volume and priority.
---@field ChildClasses ULuaArrayHelper<USoundClass>
---@field PassiveSoundMixModifiers ULuaArrayHelper<FPassiveSoundMixModifier> @SoundMix Modifiers to activate automatically when a sound of this class is playing.
local USoundClass = {}
