---@meta

---Structure used for holding information for one animation played on the Anim Control track.
---@class FAnimControlTrackKey
---@field StartTime number @Position in the Matinee sequence to start playing this animation.
---@field AnimStartOffset number @Time to start playing AnimSequence at.
---@field AnimEndOffset number @Time to end playing the AnimSequence at.
---@field AnimPlayRate number @Playback speed of this animation.
---@field bLooping number @Should this animation loop.
---@field bReverse number @Whether to play the animation in reverse or not.
FAnimControlTrackKey = {}


---@class UInterpTrackAnimControl: UInterpTrackFloatBase
---@field SlotName string @Name of slot to use when playing animation. Passed to Actor. When multiple tracks use the same slot name, they are each given a different ChannelIndex when SetAnimPosition is called.
---@field AnimSeqs ULuaArrayHelper<FAnimControlTrackKey> @Track of different animations to play and when to start playing them.
---@field bSkipAnimNotifiers number @Skip all anim notifiers *
local UInterpTrackAnimControl = {}
