---@meta

---@class FAnimNode_LayeredBoneBlend
---@field BasePose FPoseLink @The source pose
---@field BlendPoses ULuaArrayHelper<FPoseLink> @Each layer's blended pose
---@field LayerSetup ULuaArrayHelper<FInputBlendPose> @Configuration for the parts of the skeleton to blend for each layer. Allows certain parts of the tree to be blended out or omitted from the pose.
---@field BlendWeights ULuaArrayHelper<number> @The weights of each layer
---@field bMeshSpaceRotationBlend boolean @Whether to blend bone rotations in mesh space or in local space
---@field CurveBlendOption ECurveBlendOption @How to blend the layers together
---@field bBlendRootMotionBasedOnRootBone boolean @Whether to incorporate the per-bone blend weight of the root bone when lending root motion
---@field bHasRelevantPoses boolean
---@field PerBoneBlendWeights ULuaArrayHelper<FPerBoneBlendWeight>
---@field SkeletonGuid FGuid
---@field VirtualBoneGuid FGuid
---@field DesiredBoneBlendWeightsInitMesh USkeletalMesh
FAnimNode_LayeredBoneBlend = {}
