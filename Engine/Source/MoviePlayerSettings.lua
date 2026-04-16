---@meta

---Implements the settings for the Windows target platform.
---@class UMoviePlayerSettings: UObject
---@field bWaitForMoviesToComplete boolean @If enabled, The game waits for startup movies to complete even if loading has finished.
---@field bMoviesAreSkippable ULuaArrayHelper<string> @If enabled, Startup movies can be skipped by the user when a mouse button is pressed.
---@field StartupMovies ULuaArrayHelper<string> @Movies to play on startup. Note that these must be in your game's Game/Content/Movies directory.
local UMoviePlayerSettings = {}
