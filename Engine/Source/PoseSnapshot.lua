---@meta

---A pose for a skeletal mesh
---@class FPoseSnapshot
---@field LocalTransforms ULuaArrayHelper<FTransform> @Array of transforms per-bone
---@field BoneNames ULuaArrayHelper<string> @Array of bone names (corresponding to LocalTransforms)
---@field SkeletalMeshName string @The name of the skeletal mesh that was used to take this snapshot
---@field SnapshotName string @The name for this snapshot
---@field bIsValid boolean @Whether the pose is valid
FPoseSnapshot = {}
