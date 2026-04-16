---@meta

---Visibility options for the level visibility section.
---@class ELevelVisibility
---@field Visible number @The streamed levels should be visible.
---@field Hidden number @The streamed levels should be hidden.
ELevelVisibility = {}


---A section for use with the movie scene level visibility track, which controls streamed level visibility.
---@class UMovieSceneLevelVisibilitySection: UMovieSceneSection
---@field Visibility ELevelVisibility @Whether or not the levels in this section should be visible or hidden.
---@field LevelNames ULuaArrayHelper<string> @The short names of the levels who's visibility is controlled by this section.
local UMovieSceneLevelVisibilitySection = {}
