---@meta

---Helper struct for storing the camera world-position for each camera cut in the cinematic.
---@class FCameraCutInfo
---@field Location FVector
---@field TimeStamp number
FCameraCutInfo = {}


---A group and all the actors controlled by the group
---@class FInterpGroupActorInfo
---@field ObjectName string
---@field Actors ULuaArrayHelper<AActor>
FInterpGroupActorInfo = {}


---Signature of function to handle a matinee event track key
---@class FOnMatineeEvent : ULuaSingleDelegate
FOnMatineeEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMatineeEvent:Bind(Callback, Obj) end

---执行委托
function FOnMatineeEvent:Execute() end


---@class AMatineeActor: AActor
---@field MatineeControllerName string @Name of controller node in level script, used to know what function to try and find for events
---@field PlayRate number @Time multiplier for playback.
---@field bPlayOnLevelLoad number @If true, the matinee will play when the level is loaded.
---@field bForceStartPos number @Lets you force the sequence to always start at ForceStartPosition
---@field ForceStartPosition number @Time position to always start at if bForceStartPos is set to true.
---@field bLooping number @If sequence should pop back to beginning when finished. Note, if true, will never get Completed/Reversed events - sequence must be explicitly Stopped.
---@field bRewindOnPlay number @If true, sequence will rewind itself back to the start each time the Play input is activated.
---@field bNoResetOnRewind number @If true, when rewinding this interpolation, reset the 'initial positions' of any RelateToInitial movements to the current location. This allows the next loop of movement to proceed from the current locations.
---@field bRewindIfAlreadyPlaying number @Only used if bRewindOnPlay if true. Defines what should happen if the Play input is activated while currently playing. If true, hitting Play while currently playing will pop the position back to the start and begin playback over again. If false, hitting Play while currently playing will do nothing.
---@field bDisableRadioFilter number @If true, disables the realtime radio effect
---@field bClientSideOnly number @Indicates that this interpolation does not affect gameplay. This means that: -it is not replicated via MatineeActor -it is not ticked if no affected Actors are visible -on dedicated servers, it is completely ignored
---@field bSkipUpdateIfNotVisible number @if bClientSideOnly is true, whether this matinee should be completely skipped if none of the affected Actors are visible
---@field bIsSkippable number @Lets you skip the matinee with the CANCELMATINEE exec command. Triggers all events to the end along the way.
---@field PreferredSplitScreenNum number @Preferred local viewport number (when split screen is active) the director track should associate with, or zero for 'all'.
---@field bDisableMovementInput number @Disable Input from player during play
---@field bDisableLookAtInput number @Disable LookAt Input from player during play
---@field bHidePlayer number @Hide Player Pawn during play
---@field bHideHud number @Hide HUD during play
---@field GroupActorInfos ULuaArrayHelper<FInterpGroupActorInfo>
---@field bShouldShowGore number @Cached value that indicates whether or not gore was enabled when the sequence was started
---@field GroupInst ULuaArrayHelper<UInterpGroupInst> @Instance data for interp groups. One for each variable/group combination.
---@field CameraCuts ULuaArrayHelper<FCameraCutInfo> @Contains the camera world-position for each camera cut in the cinematic.
---@field bIsPlaying number @properties that may change on InterpAction that we need to notify clients about, since the object's properties will not be replicated
---@field bReversePlayback number
---@field bPaused number
---@field bPendingStop number
---@field InterpPosition number
---@field ReplicationForceIsPlaying number @Counter to indicate that play count has changed. Used to work around single frames that go from play-stop-play where bIsPlaying won't get replicated.
---@field OnPlay FOnMatineeEvent @Event triggered when the matinee is played for whatever reason
---@field OnStop FOnMatineeEvent @Event triggered when the matinee is stopped for whatever reason
---@field OnPause FOnMatineeEvent @Event triggered when the matinee is paused for whatever reason
local AMatineeActor = {}

---Begin playback of the matinee. Only called in game. Will then advance Position by (PlayRate * Deltatime) each time the matinee is ticked.
function AMatineeActor:Play() end

---Stops playback at the current position
function AMatineeActor:Stop() end

---Similar to play, but the playback will go backwards until the beginning of the sequence is reached.
function AMatineeActor:Reverse() end

---Hold playback at its current position. Calling Pause again will continue playback in its current direction.
function AMatineeActor:Pause() end

---Set the position of the interpolation.
---@param NewPosition number
---@param bJump boolean
function AMatineeActor:SetPosition(NewPosition, bJump) end

---Changes the direction of playback (go in reverse if it was going forward, or vice versa)
function AMatineeActor:ChangePlaybackDirection() end

---Change the looping behaviour of this matinee
---@param bNewLooping boolean
function AMatineeActor:SetLoopingState(bNewLooping) end

---@param GroupName string
---@param bEnable boolean
function AMatineeActor:EnableGroupByName(GroupName, bEnable) end
