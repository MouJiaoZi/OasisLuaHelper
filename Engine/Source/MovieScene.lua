---@meta

---@class FMovieSceneExpansionState
---@field bExpanded boolean
FMovieSceneExpansionState = {}


---Editor only data that needs to be saved between sessions for editing but has no runtime purpose
---@class FMovieSceneEditorData
---@field ExpansionStates ULuaMapHelper<string, FMovieSceneExpansionState> @Map of node path -> expansion state.
---@field WorkingRange FFloatRange @User-defined working range in which the entire sequence should reside.
---@field ViewRange FFloatRange @The last view-range that the user was observing
FMovieSceneEditorData = {}


---Structure for labels that can be assigned to movie scene tracks.
---@class FMovieSceneTrackLabels
---@field Strings ULuaArrayHelper<string>
FMovieSceneTrackLabels = {}


---Implements a movie scene asset.
---@class UMovieScene: UMovieSceneSignedObject
---@field Spawnables ULuaArrayHelper<FMovieSceneSpawnable> @Data-only blueprints for all of the objects that we we're able to spawn. These describe objects and actors that we may instantiate at runtime, or create proxy objects for previewing in the editor.
---@field Possessables ULuaArrayHelper<FMovieScenePossessable> @Typed slots for already-spawned objects that we are able to control with this MovieScene
---@field ObjectBindings ULuaArrayHelper<FMovieSceneBinding> @Tracks bound to possessed or spawned objects
---@field MasterTracks ULuaArrayHelper<UMovieSceneTrack> @Master tracks which are not bound to spawned or possessed objects
---@field SelectionRange FFloatRange @User-defined selection range.
---@field PlaybackRange FFloatRange @User-defined playback range for this movie scene. Must be a finite range. Relative to this movie-scene's 0-time origin.
---@field bForceFixedFrameIntervalPlayback boolean
---@field FixedFrameInterval number
---@field InTime_DEPRECATED number
---@field OutTime_DEPRECATED number
---@field StartTime_DEPRECATED number
---@field EndTime_DEPRECATED number
---@field EmptySections ULuaArrayHelper<UMovieSceneSection>
local UMovieScene = {}
