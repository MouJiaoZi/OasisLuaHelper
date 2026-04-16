---@meta

---Structure representing a capture resolution
---@class FCaptureResolution
---@field ResX number
---@field ResY number
FCaptureResolution = {}


---Common movie-scene capture settings
---@class FMovieSceneCaptureSettings
---@field OutputDirectory FDirectoryPath @The directory to output the captured file(s) in
---@field GameModeOverride AGameModeBase @Optional game mode to override the map's default game mode with.  This can be useful if the game's normal mode displays UI elements or loading screens that you don't want captured.
---@field OutputFormat string @The format to use for the resulting filename. Extension will be added automatically. Any tokens of the form {token} will be replaced with the corresponding value: {fps}		- The captured framerate {frame}		- The current frame number (only relevant for image sequences) {width}		- The width of the captured frames {height}		- The height of the captured frames {world}		- The name of the current world {quality}	- The image compression quality setting {material}   - The material/render pass {shot}       - The name of the level sequence asset shot being played
---@field bOverwriteExisting boolean @Whether to overwrite existing files or not
---@field bUseRelativeFrameNumbers boolean @True if frame numbers in the output files should be relative to zero, rather than the actual frame numbers in the originating animation content
---@field HandleFrames number @Number of frame handles to include for each shot
---@field ZeroPadFrameNumbers number @How much to zero-pad frame numbers on filenames
---@field FrameRate number @The frame rate at which to capture
---@field BitRate number @The bit rate at which to capture
---@field MovieLiveUrl string
---@field bFixedTimeStep boolean
---@field Resolution FCaptureResolution @The resolution at which to capture
---@field bEnableTextureStreaming boolean @Whether to texture streaming should be enabled while capturing.  Turning off texture streaming may cause much more memory to be used, but also reduces the chance of blurry textures in your captured video.
---@field bCinematicEngineScalability boolean @Whether to enable cinematic engine scalability settings
---@field bCinematicMode boolean @Whether to enable cinematic mode whilst capturing
---@field bAllowMovement boolean @Whether to allow player movement whilst capturing
---@field bAllowTurning boolean @Whether to allow player rotation whilst capturing
---@field bShowPlayer boolean @Whether to show the local player whilst capturing
---@field bShowHUD boolean @Whether to show the in-game HUD whilst capturing
FMovieSceneCaptureSettings = {}
