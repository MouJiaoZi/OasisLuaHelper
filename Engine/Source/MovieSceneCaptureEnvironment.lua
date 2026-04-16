---@meta

---@class UMovieSceneCaptureEnvironment: UObject
local UMovieSceneCaptureEnvironment = {}

---Get the frame number of the current capture
---@return number
function UMovieSceneCaptureEnvironment:GetCaptureFrameNumber() end

---Get the total elapsed time of the current capture in seconds
---@return number
function UMovieSceneCaptureEnvironment:GetCaptureElapsedTime() end
