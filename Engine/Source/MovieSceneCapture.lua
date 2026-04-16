---@meta

---Class responsible for capturing scene data
---@class UMovieSceneCapture: UObject, IMovieSceneCaptureInterface, ICaptureProtocolHost
---@field CaptureType FCaptureProtocolID @The type of capture protocol to use
---@field Settings FMovieSceneCaptureSettings @Settings that define how to capture
---@field bUseSeparateProcess boolean @Whether to capture the movie in a separate process or not
---@field bCloseEditorWhenCaptureStarts boolean @When enabled, the editor will shutdown when the capture starts
---@field AdditionalCommandLineArguments string @Additional command line arguments to pass to the external process when capturing
---@field InheritedCommandLineArguments string @Command line arguments inherited from this process
local UMovieSceneCapture = {}
