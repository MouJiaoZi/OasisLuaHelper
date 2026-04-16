---@meta

---@class FBoundActorProxy
FBoundActorProxy = {}


---@class ULevelSequenceBurnInInitSettings: UObject
local ULevelSequenceBurnInInitSettings = {}


---@class ULevelSequenceBurnInOptions: UObject
---@field bUseBurnIn boolean
---@field BurnInClass FSoftClassPath
local ULevelSequenceBurnInOptions = {}


---Actor responsible for controlling a specific level sequence in the world.
---@class ALevelSequenceActor: AActor, IMovieSceneBindingOwnerInterface
---@field bAutoPlay boolean
---@field PlaybackSettings FMovieSceneSequencePlaybackSettings
---@field LevelSequence FSoftObjectPath
---@field AdditionalEventReceivers ULuaArrayHelper<AActor>
---@field bReduceFrequency boolean
---@field ReduceFrameCount number
---@field IgnoreFrameTolerance number
---@field bOverrideInstanceData number @Enable specification of dynamic instance data to be supplied to the sequence during playback
local ALevelSequenceActor = {}

---Set the level sequence being played by this actor.
---@param InSequence ULevelSequence
function ALevelSequenceActor:SetSequence(InSequence) end

---Set an array of additional actors that will receive events triggerd from this sequence actor
---@param AdditionalReceivers ULuaArrayHelper<AActor>
function ALevelSequenceActor:SetEventReceivers(AdditionalReceivers) end

---@param Actor AActor
---@param TrackName string
---@return FMovieSceneObjectBindingID
function ALevelSequenceActor:UGCAddBinding(Actor, TrackName) end

---@param Actor AActor
---@param TrackName string
---@return FMovieSceneObjectBindingID
function ALevelSequenceActor:UGCRemoveBinding(Actor, TrackName) end

function ALevelSequenceActor:ReceiveInitailizePlayer() end

---@param Actor AActor
function ALevelSequenceActor:SetOwnCharacter(Actor) end
