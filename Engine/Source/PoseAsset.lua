---@meta

---Pose data This is one pose data structure This will let us blend poses quickly easily All poses within this asset should contain same number of tracks, so that we can blend quickly
---@class FPoseData
---@field LocalSpacePose ULuaArrayHelper<FTransform>
---@field LocalSpacePoseMask ULuaArrayHelper<boolean>
---@field CurveData ULuaArrayHelper<number>
FPoseData = {}


---Pose data container Contains animation and curve for all poses
---@class FPoseDataContainer
---@field PoseNames ULuaArrayHelper<FSmartName>
---@field Poses ULuaArrayHelper<FPoseData>
---@field Tracks ULuaArrayHelper<string>
---@field TrackMap ULuaMapHelper<string, number>
---@field Curves ULuaArrayHelper<FAnimCurveBase>
FPoseDataContainer = {}


---@class UPoseAsset: UAnimationAsset
---@field PoseContainer any @Animation Pose Data
---@field bAdditivePose boolean @Whether or not Additive Pose or not - these are property that needs post process, so
---@field BasePoseIndex number @if -1, use ref pose
---@field RetargetSource string @Base pose to use when retargeting
local UPoseAsset = {}
