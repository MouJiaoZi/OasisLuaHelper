---@meta

---@class FMoveAdditiveLayeringData
---@field PerBoneBlendWeights ULuaArrayHelper<FPerBoneBlendWeight>
FMoveAdditiveLayeringData = {}


---@class FAnimNode_MoveAdditiveLayering
---@field BasePose FPoseLink
---@field TargetPose FPoseLink
---@field RefPose FPoseLink
---@field bFixRootRotation boolean
---@field ArmMeshSpaceAlphaL number
---@field ArmMeshSpaceAlphaR number
---@field ArmSwayAlphaL number
---@field ArmSwayAlphaR number
---@field HandAlphaL number
---@field HandAlphaR number
---@field UpperPoseOverrideLayerSetup ULuaArrayHelper<FInputBlendPose> @Configuration for the parts of the skeleton to blend for each layer. Allows certain parts of the tree to be blended out or omitted from the pose.
---@field SpineLocalSpaceAdditiveLayerSetup ULuaArrayHelper<FInputBlendPose>
---@field MeshSpaceAdditiveLayerSetup_Left ULuaArrayHelper<FInputBlendPose>
---@field MeshSpaceAdditiveLayerSetup_Right ULuaArrayHelper<FInputBlendPose>
---@field ArmLocalSpaceAdditiveLayerSetup ULuaArrayHelper<FInputBlendPose>
---@field bEvaluateLayer0 boolean
---@field bEvaluateLayer1 boolean
---@field bEvaluateLayer2 boolean
---@field bEvaluateLayer3 boolean
---@field SkeletonGuid FGuid
---@field VirtualBoneGuid FGuid
---@field UpperPoseOverrideData FMoveAdditiveLayeringData
---@field SpineLocalSpaceAdditiveData FMoveAdditiveLayeringData
---@field MeshSpaceAdditiveData_Left FMoveAdditiveLayeringData
---@field MeshSpaceAdditiveData_Right FMoveAdditiveLayeringData
---@field ArmLocalSpaceAdditiveData FMoveAdditiveLayeringData
FAnimNode_MoveAdditiveLayering = {}
