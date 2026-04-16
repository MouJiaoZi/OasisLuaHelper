---@meta

---Handles manipulation of material parameters in a movie scene.
---@class UMovieSceneMaterialTrack: UMovieSceneNameableTrack
---@field Sections ULuaArrayHelper<UMovieSceneSection> @The sections owned by this track .
local UMovieSceneMaterialTrack = {}


---A material track which is specialized for animation materials which are owned by actor components.
---@class UMovieSceneComponentMaterialTrack: UMovieSceneMaterialTrack
---@field MaterialIndex number @The index of this material this track is animating.
local UMovieSceneComponentMaterialTrack = {}
