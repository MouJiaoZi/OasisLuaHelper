---@meta

---Settings for the level sequence player actor.
---@class FMovieSceneSequencePlaybackSettings
---@field LoopCount number @Number of times to loop playback. -1 for infinite, else the number of times to loop before stopping
---@field PlayRate number @The rate at which to playback the animation
---@field bRandomStartTime boolean @Start playback at a random time
---@field StartTime number @Start playback at the specified time
---@field bRestoreState boolean @Flag used to specify whether actor states should be restored on stop
---@field bDisableMovementInput boolean @Disable Input from player during play
---@field bDisableLookAtInput boolean @Disable LookAt Input from player during play
---@field bHidePlayer boolean @Hide Player Pawn during play
---@field bHideHud boolean @Hide HUD during play
---@field bEnableHDR boolean @EnableHDR When Play Sequence
---@field BindingOverrides IMovieSceneBindingOverridesInterface @Interface that defines overridden bindings for this sequence
FMovieSceneSequencePlaybackSettings = {}


---@class FOnMovieSceneSequencePlayerEvent : ULuaSingleDelegate
FOnMovieSceneSequencePlayerEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMovieSceneSequencePlayerEvent:Bind(Callback, Obj) end

---执行委托
function FOnMovieSceneSequencePlayerEvent:Execute() end


---@class FOnMovieSceneSequencePlayerSpawnObject : ULuaMulticastDelegate
FOnMovieSceneSequencePlayerSpawnObject = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InObject: UObject, InBindingID: FGuid, InSequenceID: FMovieSceneSequenceID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMovieSceneSequencePlayerSpawnObject:Add(Callback, Obj) end

---触发 Lua 广播
---@param InObject UObject
---@param InBindingID FGuid
---@param InSequenceID FMovieSceneSequenceID
function FOnMovieSceneSequencePlayerSpawnObject:Broadcast(InObject, InBindingID, InSequenceID) end


---Abstract class that provides consistent player behaviour for various animation players
---@class UMovieSceneSequencePlayer: UObject, IMovieScenePlayer
---@field OnPlay FOnMovieSceneSequencePlayerEvent @Event triggered when the level sequence player is played
---@field OnPlayReverse FOnMovieSceneSequencePlayerEvent @Event triggered when the level sequence player is played in reverse
---@field OnStop FOnMovieSceneSequencePlayerEvent @Event triggered when the level sequence player is stopped
---@field OnPause FOnMovieSceneSequencePlayerEvent @Event triggered when the level sequence player is paused
---@field OnFinished FOnMovieSceneSequencePlayerEvent @Event triggered when the level sequence player finishes naturally (without explicitly calling stop)
---@field OnObjectSpawnedEvent FOnMovieSceneSequencePlayerSpawnObject
---@field Status EMovieScenePlayerStatus @Movie player status.
---@field bReversePlayback number @Whether we're currently playing in reverse.
---@field bPendingFirstUpdate number @True where we're waiting for the first update of the sequence after calling StartPlayingNextTick.
---@field TimeCursorPosition number @The current time cursor position within the sequence (in seconds)
---@field StartTime number @Time time at which to start playing the sequence (defaults to the lower bound of the sequence's play range)
---@field EndTime number @Time time at which to end playing the sequence (defaults to the upper bound of the sequence's play range)
---@field CurrentNumLoops number @The number of times we have looped in the current playback
---@field PlaybackSettings FMovieSceneSequencePlaybackSettings @Specific playback settings for the animation.
---@field RootTemplateInstance FMovieSceneRootEvaluationTemplateInstance @The root template instance we're evaluating
local UMovieSceneSequencePlayer = {}

---Start playback forwards from the current time cursor position, using the current play rate.
function UMovieSceneSequencePlayer:Play() end

---Reverse playback.
function UMovieSceneSequencePlayer:PlayReverse() end

---Changes the direction of playback (go in reverse if it was going forward, or vice versa)
function UMovieSceneSequencePlayer:ChangePlaybackDirection() end

---Start playback from the current time cursor position, looping the specified number of times.
---@param NumLoops number
function UMovieSceneSequencePlayer:PlayLooping(NumLoops) end

---Start playback from the current time cursor position, using the current play rate. Does not update the animation until next tick.
function UMovieSceneSequencePlayer:StartPlayingNextTick() end

---Pause playback.
function UMovieSceneSequencePlayer:Pause() end

---Scrub playback.
function UMovieSceneSequencePlayer:Scrub() end

---Stop playback.
function UMovieSceneSequencePlayer:Stop() end

---Go to end and stop.
function UMovieSceneSequencePlayer:GoToEndAndStop() end

---Get the current playback position
---@return number
function UMovieSceneSequencePlayer:GetPlaybackPosition() end

---Set the current playback position If the animation is currently playing, it will continue to do so from the new position
---@param NewPlaybackPosition number
function UMovieSceneSequencePlayer:SetPlaybackPosition(NewPlaybackPosition) end

---@param NewTime number
function UMovieSceneSequencePlayer:SetPlaybackPostionWithloop(NewTime) end

---@param NewTime number
---@return number
function UMovieSceneSequencePlayer:GetTargetTimePostionWithloop(NewTime) end

---Jump to new playback position This can be used to update sequencer repeatedly, as if in a scrubbing state
---@param NewPlaybackPosition number
function UMovieSceneSequencePlayer:JumpToPosition(NewPlaybackPosition) end

---@param NewPlaybackPosition number
function UMovieSceneSequencePlayer:JumpToPositionEx(NewPlaybackPosition) end

---Check whether the sequence is actively playing.
---@return boolean
function UMovieSceneSequencePlayer:IsPlaying() end

---Check whether the sequence is paused.
---@return boolean
function UMovieSceneSequencePlayer:IsPaused() end

---Get the playback length of the sequence
---@return number
function UMovieSceneSequencePlayer:GetLength() end

---Get the playback rate of this player.
---@return number
function UMovieSceneSequencePlayer:GetPlayRate() end

---@return boolean
function UMovieSceneSequencePlayer:IsEvaluating() end

---Set the playback rate of this player. Negative values will play the animation in reverse.
---@param PlayRate number
function UMovieSceneSequencePlayer:SetPlayRate(PlayRate) end

---@param NumLoops number
function UMovieSceneSequencePlayer:SetPlayLoopCount(NumLoops) end

---Sets the range in time to be played back by this player, overriding the default range stored in the asset
---@param NewStartTime number
---@param NewEndTime number
function UMovieSceneSequencePlayer:SetPlaybackRange(NewStartTime, NewEndTime) end

---Retrieve all objects currently bound to the specified binding identifier
---@param ObjectBinding FMovieSceneObjectBindingID
function UMovieSceneSequencePlayer:GetBoundObjects(ObjectBinding) end
