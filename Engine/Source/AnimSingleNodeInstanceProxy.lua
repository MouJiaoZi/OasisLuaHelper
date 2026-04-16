---@meta

---Custom Engine Modify Clone from FAnimNode_BoneRetarget for animation single node (play animation asset directly) mode
---@class FAnimNode_BoneRetarget_SingleNode
---@field bUseRetargetFeature boolean
---@field bConsiderMasterPoseRetarget boolean
---@field bForceUseBaseSkeletonAsRetargetSource boolean
FAnimNode_BoneRetarget_SingleNode = {}


---Local anim node for extensible processing. Cant be used outside of this context as it has no graph node counterpart
---@class FAnimNode_SingleNode
---@field SourcePose FPoseLink
FAnimNode_SingleNode = {}


---Proxy override for this UAnimInstance-derived class
---@class FAnimSingleNodeInstanceProxy
FAnimSingleNodeInstanceProxy = {}
