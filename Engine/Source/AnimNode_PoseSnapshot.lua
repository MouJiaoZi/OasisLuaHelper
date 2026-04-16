---@meta

---How to access the snapshot
---@class ESnapshotSourceMode
---@field NamedSnapshot number @Refer to an internal snapshot by name (previously stored with SavePoseSnapshot). This can be more efficient than access via pin.
---@field SnapshotPin number @Use a snapshot variable (previously populated using SnapshotPose). This is more flexible and allows poses to be modified and managed externally to the animation blueprint.
ESnapshotSourceMode = {}


---Provide a snapshot pose, either from the internal named pose cache or via a supplied snapshot
---@class FAnimNode_PoseSnapshot
---@field Mode ESnapshotSourceMode @How to access the snapshot
---@field SnapshotName string @The name of the snapshot previously stored with SavePoseSnapshot
---@field Snapshot FPoseSnapshot @Snapshot to use. This should be populated at first by calling SnapshotPose
FAnimNode_PoseSnapshot = {}
