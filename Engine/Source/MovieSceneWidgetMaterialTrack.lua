---@meta

---A material track which is specialized for materials which are owned by widget brushes.
---@class UMovieSceneWidgetMaterialTrack: UMovieSceneMaterialTrack
---@field BrushPropertyNamePath ULuaArrayHelper<string> @The name of the brush property which will be animated by this track.
---@field TrackName string @The name of this track, generated from the property name path.
local UMovieSceneWidgetMaterialTrack = {}
