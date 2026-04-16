---@meta

---This node uses a source transform of a socket on the skeletal mesh to automatically calculate Yaw and Pitch directions for a referenced aim offset given a point in the world to look at.
---@class FAnimNode_AimOffsetLookAt
---@field BasePose FPoseLink
---@field LODThreshold number
---@field bIsLODEnabled boolean
---@field LookAtLocation FVector @Location, in world space to look at
---@field SourceSocketName string @Socket to treat as the look at source
---@field PivotSocketName string @Socket to treat as the look at pivot (optional). This will overwrite the translation of the source socket transform to better match the lookat direction
---@field SocketAxis FVector @Axis in the socket transform to consider the 'forward' or look at axis
---@field Alpha number @Amount of this node to blend into the output pose
---@field SocketBoneReference FBoneReference @Cached reference to the source socket's bone
---@field SocketLocalTransform FTransform @Cached local transform of the source socket
---@field PivotSocketBoneReference FBoneReference @Cached reference to the pivot socket's bone
---@field PivotSocketLocalTransform FTransform @Cached local transform of the pivot socket
FAnimNode_AimOffsetLookAt = {}
