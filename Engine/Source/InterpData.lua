---@meta

---Interpolation data, containing keyframe tracks, event tracks etc. This does not contain any  AActor  references or state, so can safely be stored in packages, shared between multiple MatineeActors etc.
---@class UInterpData: UObject
---@field InterpLength number @Duration of interpolation sequence - in seconds.
---@field PathBuildTime number @Position in Interp to move things to for path-building in editor.
---@field InterpGroups ULuaArrayHelper<UInterpGroup> @Actual interpolation data. Groups of InterpTracks.
---@field EdSectionStart number @Used in editor for defining sections to loop, stretch etc.
---@field EdSectionEnd number @Used in editor for defining sections to loop, stretch etc.
---@field bShouldBakeAndPrune number @If true, then the matinee should be baked and pruned at cook time.
---@field AllEventNames ULuaArrayHelper<string> @Unique names of all events contained across all event tracks
local UInterpData = {}
