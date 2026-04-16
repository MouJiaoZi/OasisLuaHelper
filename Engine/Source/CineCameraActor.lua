---@meta

---Settings to control the camera's lookat feature
---@class FCameraLookatTrackingSettings
---@field bEnableLookAtTracking number @True to enable lookat tracking, false otherwise.
---@field bDrawDebugLookAtTrackingPosition number @True to draw a debug representation of the lookat location
---@field LookAtTrackingInterpSpeed number @Controls degree of smoothing. 0.f for no smoothing, higher numbers for faster/tighter tracking.
---@field RelativeOffset FVector @Offset from actor position to look at. Relative to actor if tracking an actor, relative to world otherwise.
---@field bAllowRoll number @True to allow user-defined roll, false otherwise.
FCameraLookatTrackingSettings = {}


---A CineCameraActor is a CameraActor specialized to work like a cinematic camera.
---@class ACineCameraActor: ACameraActor
---@field LookatTrackingSettings FCameraLookatTrackingSettings
local ACineCameraActor = {}
