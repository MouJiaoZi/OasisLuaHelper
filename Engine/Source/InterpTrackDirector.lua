---@meta

---Information for one cut in this track.
---@class FDirectorTrackCut
---@field Time number @Time to perform the cut.
---@field TransitionTime number @Time taken to move view to new camera.
---@field TargetCamGroup string @GroupName of UInterpGroup to cut viewpoint to.
---@field ShotNumber number @Shot number for developer reference
FDirectorTrackCut = {}


---@class UInterpTrackDirector: UInterpTrack
---@field CutTrack ULuaArrayHelper<FDirectorTrackCut> @Array of cuts between cameras.
---@field bSimulateCameraCutsOnClients number @True to allow clients to simulate their own camera cuts.  Can help with latency-induced timing issues.
local UInterpTrackDirector = {}
