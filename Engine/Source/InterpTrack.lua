---@meta

---Required condition for this track to be enabled
---@class ETrackActiveCondition
---@field ETAC_Always number @Track is always active
---@field ETAC_GoreEnabled number @Track is active when extreme content (gore) is enabled
---@field ETAC_GoreDisabled number @Track is active when extreme content (gore) is disabled
---@field ETAC_MAX number
ETrackActiveCondition = {}


---Helper struct for creating sub tracks supported by this track
---@class FSupportedSubTrackInfo
---@field SupportedClass UInterpTrack @The sub track class which is supported by this track
---@field SubTrackName string @The name of the subtrack
---@field GroupIndex number @Index into the any subtrack group this subtrack belongs to (can be -1 for no group)
FSupportedSubTrackInfo = {}


---A small structure holding data for grouping subtracks. (For UI drawing purposes)
---@class FSubTrackGroup
---@field GroupName string @Name of the subtrack  group
---@field TrackIndices ULuaArrayHelper<number> @Indices to tracks in the parent track subtrack array.
---@field bIsCollapsed number @If this group is collapsed
---@field bIsSelected number @If this group is selected
FSubTrackGroup = {}


---@class UInterpTrack: UObject, FCurveEdInterface, FInterpEdInputInterface
---@field SubTracks ULuaArrayHelper<UInterpTrack> @A list of subtracks that belong to this track
---@field TrackInstClass UInterpTrackInst @A list of subtrack groups (for editor UI organization only)
---@field ActiveCondition ETrackActiveCondition @Sets the condition that must be met for this track to be enabled
---@field TrackTitle string @Title of track type.
---@field bOnePerGroup number @Whether there may only be one of this track in an UInterpGroup.
---@field bDirGroupOnly number @If this track can only exist inside the Director group.
---@field bDisableTrack number @Whether or not this track should actually update the target actor.
---@field bIsSelected number @Whether or not this track is selected in the editor.
---@field bIsAnimControlTrack number @If true, the  AActor  this track is working on will have BeginAnimControl/FinishAnimControl called on it.
---@field bSubTrackOnly number @If this track can only exist as a sub track.
---@field bVisible number @Whether or not this track is visible in the editor.
---@field bIsRecording number @Whether or not this track is recording in the editor.
local UInterpTrack = {}
